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
                        cmp              eax, r15d;                           jl    .Lx6_239
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_239:               movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   .Lx6_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx6_240:               add              r14d, 1;                             jmp   n2_match_assign_cond_α
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
.Lx15_0:                cmp              ecx, r15d;                           jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                cmp              ecx, r14d;                           jg    .Lx15_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx15_240:              mov              dword ptr [rbp + -60], r14d
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:  mov              r11, 7
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx26_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n24_match_defer_α
.Lx26_21:               lea              rax, [rip + .Lx26_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n23_match_defer_α
.Lx26_22:               lea              rax, [rip + .Lx26_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n20_match_lit_α
n18_match_alternate_s0: mov              r11, 7
                        lea              rax, [rip + .Lx26_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s1: mov              r11, 7
                        lea              rax, [rip + .Lx26_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
n18_match_alternate_s2: mov              r11, 7
                        lea              rax, [rip + .Lx26_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   n18_match_alternate_as
.Lx26_40:                                                                     jmp   n24_match_defer_β
.Lx26_41:                                                                     jmp   n23_match_defer_β
.Lx26_42:                                                                     jmp   n19_goto_β
n18_match_alternate_as: mov              r11, 7;                              jmp   PAT$2_γ
n18_match_alternate_β:  mov              r11, 7
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n18_match_alternate_af: mov              r11, 7
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx26_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_α:             mov              r11, 8;                              jmp   n18_match_alternate_af
n19_goto_β:             mov              r11, 8;                              jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:        mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n18_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n18_match_alternate_af
                        add              r14d, 1;                             jmp   n21_match_defer_α
n20_match_lit_β:        mov              r11, 9
                        sub              r14d, 1;                             jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_defer_α:      mov              r11, 10
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx30_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx30_11
.Lx30_13:               mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lx30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx30_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lx30_10
.Lx30_9:                cmp              al, 88;                              jne   .Lx30_21
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
                        test             rax, rax;                            je    .Lx30_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx30_10
.Lx30_21:               xor              eax, eax
.Lx30_10:               test             rax, rax;                            je    .Lx30_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx30_15:
.Lx30_11:               test             rax, rax;                            jz    .Lx30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx30_5]
                        push             rcx
                        lea              rcx, [rip + .Lx30_4]
                        push             rcx;                                 jmp   rax
.Lx30_4:                                                                      jmp   n22_match_lit_α
.Lx30_5:                                                                      jmp   n20_match_lit_β
.Lx30_0:                push             r14
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
                        test             eax, eax;                            js    n20_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx30_6]
                        push             rcx
                        push             rax;                                 jmp   n22_match_lit_α
.Lx30_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n20_match_lit_β
n21_match_defer_β:      mov              r11, 10
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx30_12
                                                                              jmp   rax
.Lx30_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n21_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n21_match_defer_β
                        add              r14d, 1;                             jmp   n18_match_alternate_s2
n22_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   n21_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx33_16
                        mov              rax, qword ptr [rdx + 0]
.Lx33_16:               test             rax, rax;                            jz    .Lx33_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx33_5]
                        push             rcx
                        lea              rcx, [rip + .Lx33_4]
                        push             rcx;                                 jmp   rax
.Lx33_4:                                                                      jmp   n18_match_alternate_s1
.Lx33_5:                                                                      jmp   n18_match_alternate_af
.Lx33_0:                push             r14
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
                        lea              rax, [rip + .Lx33_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s1
.Lx33_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n23_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx33_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx33_12
                                                                              jmp   rax
.Lx33_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 13
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx34_16
                        mov              rax, qword ptr [rdx + 0]
.Lx34_16:               test             rax, rax;                            jz    .Lx34_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx34_5]
                        push             rcx
                        lea              rcx, [rip + .Lx34_4]
                        push             rcx;                                 jmp   rax
.Lx34_4:                                                                      jmp   n18_match_alternate_s0
.Lx34_5:                                                                      jmp   n18_match_alternate_af
.Lx34_0:                push             r14
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
                        lea              rax, [rip + .Lx34_6]
                        push             rcx
                        push             rax;                                 jmp   n18_match_alternate_s0
.Lx34_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n18_match_alternate_af
n24_match_defer_β:      mov              r11, 13
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx34_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx34_12
                                                                              jmp   rax
.Lx34_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 120
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n35_match_alternate_α:  mov              r11, 14
                        mov              dword ptr [rbp + -120], r14d
                        lea              rax, [rip + .Lx46_21]
                        mov              qword ptr [rbp + -104], rax;         jmp   n44_match_defer_α
.Lx46_21:               lea              rax, [rip + .Lx46_22]
                        mov              qword ptr [rbp + -104], rax;         jmp   n42_match_lit_α
.Lx46_22:               lea              rax, [rip + .Lx46_19]
                        mov              qword ptr [rbp + -104], rax;         jmp   n37_match_lit_α
n35_match_alternate_s0: mov              r11, 14
                        lea              rax, [rip + .Lx46_40]
                        mov              qword ptr [rbp + -112], rax;         jmp   n35_match_alternate_as
n35_match_alternate_s1: mov              r11, 14
                        lea              rax, [rip + .Lx46_41]
                        mov              qword ptr [rbp + -112], rax;         jmp   n35_match_alternate_as
n35_match_alternate_s2: mov              r11, 14
                        lea              rax, [rip + .Lx46_42]
                        mov              qword ptr [rbp + -112], rax;         jmp   n35_match_alternate_as
.Lx46_40:                                                                     jmp   n44_match_defer_β
.Lx46_41:                                                                     jmp   n41_goto_β
.Lx46_42:                                                                     jmp   n36_goto_β
n35_match_alternate_as: mov              r11, 14;                             jmp   PAT$3_γ
n35_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
n35_match_alternate_af: mov              r11, 14
                        mov              r14d, dword ptr [rbp + -120]
                        mov              rax, qword ptr [rbp + -104];         jmp   rax
.Lx46_19:                                                                     jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:             mov              r11, 15;                             jmp   n35_match_alternate_af
n36_goto_β:             mov              r11, 15;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_lit_α:        mov              r11, 16
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n35_match_alternate_af
                        add              r14d, 1;                             jmp   n38_match_assign_save_α
n37_match_lit_β:        mov              r11, 16
                        sub              r14d, 1;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_save_α:
                        mov              r11, 17
                        mov              dword ptr [rbp + -64], r14d;         jmp   n39_match_defer_α
n38_match_assign_save_β:
                        mov              r11, 17;                             jmp   n37_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_defer_α:      mov              r11, 18
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx52_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx52_11
.Lx52_13:               mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        cmp              al, 8;                               jne   .Lx52_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx52_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 264];           jmp   .Lx52_10
.Lx52_9:                cmp              al, 88;                              jne   .Lx52_21
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
                        test             rax, rax;                            je    .Lx52_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx52_10
.Lx52_21:               xor              eax, eax
.Lx52_10:               test             rax, rax;                            je    .Lx52_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx52_15:
.Lx52_11:               test             rax, rax;                            jz    .Lx52_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx52_5]
                        push             rcx
                        lea              rcx, [rip + .Lx52_4]
                        push             rcx;                                 jmp   rax
.Lx52_4:                                                                      jmp   n40_match_assign_cond_α
.Lx52_5:                                                                      jmp   n38_match_assign_save_β
.Lx52_0:                push             r14
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
                        test             eax, eax;                            js    n38_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx52_6]
                        push             rcx
                        push             rax;                                 jmp   n40_match_assign_cond_α
.Lx52_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n38_match_assign_save_β
n39_match_defer_β:      mov              r11, 18
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx52_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx52_12
                                                                              jmp   rax
.Lx52_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_cond_α:
                        mov              r11, 19
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n35_match_alternate_s2
n40_match_assign_cond_β:
                        mov              r11, 19
                        sub              r12, 24;                             jmp   n39_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:             mov              r11, 20;                             jmp   n35_match_alternate_af
n41_goto_β:             mov              r11, 20;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n42_match_lit_α:        mov              r11, 21
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n35_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n35_match_alternate_af
                        add              r14d, 1;                             jmp   n43_match_defer_α
n42_match_lit_β:        mov              r11, 21
                        sub              r14d, 1;                             jmp   n35_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              r11, 22
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx58_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx58_11
.Lx58_13:               mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        cmp              al, 8;                               jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx58_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 264];           jmp   .Lx58_10
.Lx58_9:                cmp              al, 88;                              jne   .Lx58_21
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
                        test             rax, rax;                            je    .Lx58_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx58_10
.Lx58_21:               xor              eax, eax
.Lx58_10:               test             rax, rax;                            je    .Lx58_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lx58_15:
.Lx58_11:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_5]
                        push             rcx
                        lea              rcx, [rip + .Lx58_4]
                        push             rcx;                                 jmp   rax
.Lx58_4:                                                                      jmp   n35_match_alternate_s1
.Lx58_5:                                                                      jmp   n42_match_lit_β
.Lx58_0:                push             r14
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
                        test             eax, eax;                            js    n42_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        push             rcx
                        push             rax;                                 jmp   n35_match_alternate_s1
.Lx58_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n42_match_lit_β
n43_match_defer_β:      mov              r11, 22
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx58_12
                                                                              jmp   rax
.Lx58_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      mov              r11, 23
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx59_16
                        mov              rax, qword ptr [rdx + 0]
.Lx59_16:               test             rax, rax;                            jz    .Lx59_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx59_5]
                        push             rcx
                        lea              rcx, [rip + .Lx59_4]
                        push             rcx;                                 jmp   rax
.Lx59_4:                                                                      jmp   n35_match_alternate_s0
.Lx59_5:                                                                      jmp   n35_match_alternate_af
.Lx59_0:                push             r14
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
                        test             eax, eax;                            js    n35_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx59_6]
                        push             rcx
                        push             rax;                                 jmp   n35_match_alternate_s0
.Lx59_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n35_match_alternate_af
n44_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx59_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx59_12
                                                                              jmp   rax
.Lx59_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n35_match_alternate_β
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
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx73_16
                        mov              rax, qword ptr [rdx + 0]
.Lx73_16:               test             rax, rax;                            jz    .Lx73_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx73_5]
                        push             rcx
                        lea              rcx, [rip + .Lx73_4]
                        push             rcx;                                 jmp   rax
.Lx73_4:                                                                      jmp   n61_match_alternate_α
.Lx73_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx73_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx73_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_alternate_α
.Lx73_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n60_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx73_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx73_12
                                                                              jmp   rax
.Lx73_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  mov              r11, 25
                        mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lx75_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n69_match_lit_α
.Lx75_21:               lea              rax, [rip + .Lx75_22]
                        mov              qword ptr [rbp + -120], rax;         jmp   n64_match_lit_α
.Lx75_22:               lea              rax, [rip + .Lx75_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n62_match_lit_α
n61_match_alternate_s0: mov              r11, 25
                        lea              rax, [rip + .Lx75_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   n61_match_alternate_as
n61_match_alternate_s1: mov              r11, 25
                        lea              rax, [rip + .Lx75_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   n61_match_alternate_as
n61_match_alternate_s2: mov              r11, 25
                        lea              rax, [rip + .Lx75_42]
                        mov              qword ptr [rbp + -128], rax;         jmp   n61_match_alternate_as
.Lx75_40:                                                                     jmp   n68_goto_β
.Lx75_41:                                                                     jmp   n63_goto_β
.Lx75_42:                                                                     jmp   n62_match_lit_β
n61_match_alternate_as: mov              r11, 25;                             jmp   PAT$4_γ
n61_match_alternate_β:  mov              r11, 25
                        mov              rax, qword ptr [rbp + -128];         jmp   rax
n61_match_alternate_af: mov              r11, 25
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lx75_19:                                                                     jmp   n60_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_lit_α:        mov              r11, 26;                             jmp   n61_match_alternate_s2
n62_match_lit_β:        mov              r11, 26;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:             mov              r11, 27;                             jmp   n61_match_alternate_af
n63_goto_β:             mov              r11, 27;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_lit_α:        mov              r11, 28
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n65_match_assign_save_α
n64_match_lit_β:        mov              r11, 28
                        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n65_match_assign_save_α:
                        mov              r11, 29
                        mov              dword ptr [rbp + -80], r14d;         jmp   n66_match_defer_α
n65_match_assign_save_β:
                        mov              r11, 29;                             jmp   n64_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      mov              r11, 30
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx83_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx83_11
.Lx83_13:               mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        cmp              al, 8;                               jne   .Lx83_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx83_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 280];           jmp   .Lx83_10
.Lx83_9:                cmp              al, 88;                              jne   .Lx83_21
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
                        test             rax, rax;                            je    .Lx83_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx83_10
.Lx83_21:               xor              eax, eax
.Lx83_10:               test             rax, rax;                            je    .Lx83_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lx83_15:
.Lx83_11:               test             rax, rax;                            jz    .Lx83_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx83_5]
                        push             rcx
                        lea              rcx, [rip + .Lx83_4]
                        push             rcx;                                 jmp   rax
.Lx83_4:                                                                      jmp   n67_match_assign_cond_α
.Lx83_5:                                                                      jmp   n65_match_assign_save_β
.Lx83_0:                push             r14
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
                        test             eax, eax;                            js    n65_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx83_6]
                        push             rcx
                        push             rax;                                 jmp   n67_match_assign_cond_α
.Lx83_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_assign_save_β
n66_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx83_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx83_12
                                                                              jmp   rax
.Lx83_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_match_assign_cond_α:
                        mov              r11, 31
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s1
n67_match_assign_cond_β:
                        mov              r11, 31
                        sub              r12, 24;                             jmp   n66_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:             mov              r11, 32;                             jmp   n61_match_alternate_af
n68_goto_β:             mov              r11, 32;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:        mov              r11, 33
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n61_match_alternate_af
                        add              r14d, 1;                             jmp   n70_match_assign_save_α
n69_match_lit_β:        mov              r11, 33
                        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n70_match_assign_save_α:
                        mov              r11, 34
                        mov              dword ptr [rbp + -48], r14d;         jmp   n71_match_defer_α
n70_match_assign_save_β:
                        mov              r11, 34;                             jmp   n69_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_defer_α:      mov              r11, 35
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx91_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx91_11
.Lx91_13:               mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        cmp              al, 8;                               jne   .Lx91_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx91_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 280];           jmp   .Lx91_10
.Lx91_9:                cmp              al, 88;                              jne   .Lx91_21
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
                        test             rax, rax;                            je    .Lx91_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx91_10
.Lx91_21:               xor              eax, eax
.Lx91_10:               test             rax, rax;                            je    .Lx91_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lx91_15:
.Lx91_11:               test             rax, rax;                            jz    .Lx91_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx91_5]
                        push             rcx
                        lea              rcx, [rip + .Lx91_4]
                        push             rcx;                                 jmp   rax
.Lx91_4:                                                                      jmp   n72_match_assign_cond_α
.Lx91_5:                                                                      jmp   n70_match_assign_save_β
.Lx91_0:                push             r14
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
                        test             eax, eax;                            js    n70_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx91_6]
                        push             rcx
                        push             rax;                                 jmp   n72_match_assign_cond_α
.Lx91_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n70_match_assign_save_β
n71_match_defer_β:      mov              r11, 35
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx91_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx91_12
                                                                              jmp   rax
.Lx91_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n72_match_assign_cond_α:
                        mov              r11, 36
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n61_match_alternate_s0
n72_match_assign_cond_β:
                        mov              r11, 36
                        sub              r12, 24;                             jmp   n71_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n61_match_alternate_β
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
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx107_16
                        mov              rax, qword ptr [rdx + 0]
.Lx107_16:              test             rax, rax;                            jz    .Lx107_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx107_5]
                        push             rcx
                        lea              rcx, [rip + .Lx107_4]
                        push             rcx;                                 jmp   rax
.Lx107_4:                                                                     jmp   n95_match_alternate_α
.Lx107_5:               add              rsp, 16;                             jmp   PAT$5_ω
.Lx107_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx107_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx107_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx107_6]
                        push             rcx
                        push             rax;                                 jmp   n95_match_alternate_α
.Lx107_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n94_match_defer_β:      mov              r11, 37
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx107_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx107_12
                                                                              jmp   rax
.Lx107_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  mov              r11, 38
                        mov              dword ptr [rbp + -136], r14d
                        lea              rax, [rip + .Lx109_21]
                        mov              qword ptr [rbp + -120], rax;         jmp   n103_match_lit_α
.Lx109_21:              lea              rax, [rip + .Lx109_22]
                        mov              qword ptr [rbp + -120], rax;         jmp   n98_match_lit_α
.Lx109_22:              lea              rax, [rip + .Lx109_19]
                        mov              qword ptr [rbp + -120], rax;         jmp   n96_match_lit_α
n95_match_alternate_s0: mov              r11, 38
                        lea              rax, [rip + .Lx109_40]
                        mov              qword ptr [rbp + -128], rax;         jmp   n95_match_alternate_as
n95_match_alternate_s1: mov              r11, 38
                        lea              rax, [rip + .Lx109_41]
                        mov              qword ptr [rbp + -128], rax;         jmp   n95_match_alternate_as
n95_match_alternate_s2: mov              r11, 38
                        lea              rax, [rip + .Lx109_42]
                        mov              qword ptr [rbp + -128], rax;         jmp   n95_match_alternate_as
.Lx109_40:                                                                    jmp   n102_goto_β
.Lx109_41:                                                                    jmp   n97_goto_β
.Lx109_42:                                                                    jmp   n96_match_lit_β
n95_match_alternate_as: mov              r11, 38;                             jmp   PAT$5_γ
n95_match_alternate_β:  mov              r11, 38
                        mov              rax, qword ptr [rbp + -128];         jmp   rax
n95_match_alternate_af: mov              r11, 38
                        mov              r14d, dword ptr [rbp + -136]
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lx109_19:                                                                    jmp   n94_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n96_match_lit_α:        mov              r11, 39;                             jmp   n95_match_alternate_s2
n96_match_lit_β:        mov              r11, 39;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_goto_α:             mov              r11, 40;                             jmp   n95_match_alternate_af
n97_goto_β:             mov              r11, 40;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_lit_α:        mov              r11, 41
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n99_match_assign_save_α
n98_match_lit_β:        mov              r11, 41
                        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_assign_save_α:
                        mov              r11, 42
                        mov              dword ptr [rbp + -80], r14d;         jmp   n100_match_defer_α
n99_match_assign_save_β:
                        mov              r11, 42;                             jmp   n98_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_defer_α:     mov              r11, 43
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx117_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx117_11
.Lx117_13:              mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lx117_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx117_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lx117_10
.Lx117_9:               cmp              al, 88;                              jne   .Lx117_21
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
                        test             rax, rax;                            je    .Lx117_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx117_10
.Lx117_21:              xor              eax, eax
.Lx117_10:              test             rax, rax;                            je    .Lx117_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lx117_15:
.Lx117_11:              test             rax, rax;                            jz    .Lx117_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx117_5]
                        push             rcx
                        lea              rcx, [rip + .Lx117_4]
                        push             rcx;                                 jmp   rax
.Lx117_4:                                                                     jmp   n101_match_assign_cond_α
.Lx117_5:                                                                     jmp   n99_match_assign_save_β
.Lx117_0:               push             r14
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
                        test             eax, eax;                            js    n99_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx117_6]
                        push             rcx
                        push             rax;                                 jmp   n101_match_assign_cond_α
.Lx117_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n99_match_assign_save_β
n100_match_defer_β:     mov              r11, 43
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx117_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx117_12
                                                                              jmp   rax
.Lx117_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n101_match_assign_cond_α:
                        mov              r11, 44
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s1
n101_match_assign_cond_β:
                        mov              r11, 44
                        sub              r12, 24;                             jmp   n100_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:            mov              r11, 45;                             jmp   n95_match_alternate_af
n102_goto_β:            mov              r11, 45;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n103_match_lit_α:       mov              r11, 46
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n104_match_assign_save_α
n103_match_lit_β:       mov              r11, 46
                        sub              r14d, 1;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n104_match_assign_save_α:
                        mov              r11, 47
                        mov              dword ptr [rbp + -48], r14d;         jmp   n105_match_defer_α
n104_match_assign_save_β:
                        mov              r11, 47;                             jmp   n103_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_defer_α:     mov              r11, 48
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx125_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx125_11
.Lx125_13:              mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        cmp              al, 8;                               jne   .Lx125_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx125_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 296];           jmp   .Lx125_10
.Lx125_9:               cmp              al, 88;                              jne   .Lx125_21
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
                        test             rax, rax;                            je    .Lx125_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx125_10
.Lx125_21:              xor              eax, eax
.Lx125_10:              test             rax, rax;                            je    .Lx125_15
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rdx
.Lx125_15:
.Lx125_11:              test             rax, rax;                            jz    .Lx125_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx125_5]
                        push             rcx
                        lea              rcx, [rip + .Lx125_4]
                        push             rcx;                                 jmp   rax
.Lx125_4:                                                                     jmp   n106_match_assign_cond_α
.Lx125_5:                                                                     jmp   n104_match_assign_save_β
.Lx125_0:               push             r14
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
                        test             eax, eax;                            js    n104_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx125_6]
                        push             rcx
                        push             rax;                                 jmp   n106_match_assign_cond_α
.Lx125_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n104_match_assign_save_β
n105_match_defer_β:     mov              r11, 48
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx125_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx125_12
                                                                              jmp   rax
.Lx125_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n106_match_assign_cond_α:
                        mov              r11, 49
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n95_match_alternate_s0
n106_match_assign_cond_β:
                        mov              r11, 49
                        sub              r12, 24;                             jmp   n105_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n95_match_alternate_β
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
n128_match_defer_α:     sub              rsp, 16
                        mov              r11, 50
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx130_16
                        mov              rax, qword ptr [rdx + 0]
.Lx130_16:              test             rax, rax;                            jz    .Lx130_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx130_5]
                        push             rcx
                        lea              rcx, [rip + .Lx130_4]
                        push             rcx;                                 jmp   rax
.Lx130_4:                                                                     jmp   n129_match_fence0_α
.Lx130_5:               add              rsp, 16;                             jmp   PAT$6_ω
.Lx130_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx130_240
                        add              rsp, 16;                             jmp   PAT$6_ω
.Lx130_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx130_6]
                        push             rcx
                        push             rax;                                 jmp   n129_match_fence0_α
.Lx130_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$6_ω
n128_match_defer_β:     mov              r11, 50
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx130_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx130_12
                                                                              jmp   rax
.Lx130_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n129_match_fence0_α:    mov              r11, 51;                             jmp   PAT$6_γ
n129_match_fence0_β:    mov              r11, 51;                             jmp   PAT$6_ω
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
n133_match_pos_α:       mov              r11, 52
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$7_ω
                                                                              jmp   n134_match_arbno_α
n133_match_pos_β:       mov              r11, 52;                             jmp   PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_match_arbno_α:     mov              r11, 53
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n135_match_rpos_α
n134_match_arbno_β:     mov              r11, 53
                        mov              r12, qword ptr [rbp + -40];          jmp   n136_match_defer_α
n134_match_arbno_as:    mov              r11, 53
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n136_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n135_match_rpos_α
n134_match_arbno_af:    mov              r11, 53
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n133_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_rpos_α:      mov              r11, 54
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n134_match_arbno_β
                                                                              jmp   PAT$7_γ
n135_match_rpos_β:      mov              r11, 54;                             jmp   n134_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              r11, 55
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx144_16
                        mov              rax, qword ptr [rdx + 0]
.Lx144_16:              test             rax, rax;                            jz    .Lx144_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx144_5]
                        push             rcx
                        lea              rcx, [rip + .Lx144_4]
                        push             rcx;                                 jmp   rax
.Lx144_4:                                                                     jmp   n137_match_assign_save_α
.Lx144_5:                                                                     jmp   n134_match_arbno_af
.Lx144_0:               push             r14
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
                        test             eax, eax;                            js    n134_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx144_6]
                        push             rcx
                        push             rax;                                 jmp   n137_match_assign_save_α
.Lx144_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n134_match_arbno_af
n136_match_defer_β:     mov              r11, 55
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx144_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx144_12
                                                                              jmp   rax
.Lx144_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_assign_save_α:
                        mov              r11, 56
                        mov              dword ptr [rbp + -80], r14d;         jmp   n138_match_defer_α
n137_match_assign_save_β:
                        mov              r11, 56;                             jmp   n136_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_defer_α:     mov              r11, 57
                        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx147_16
                        mov              rax, qword ptr [rdx + 0]
.Lx147_16:              test             rax, rax;                            jz    .Lx147_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx147_5]
                        push             rcx
                        lea              rcx, [rip + .Lx147_4]
                        push             rcx;                                 jmp   rax
.Lx147_4:                                                                     jmp   n139_match_assign_cond_α
.Lx147_5:                                                                     jmp   n137_match_assign_save_β
.Lx147_0:               push             r14
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
                        test             eax, eax;                            js    n137_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx147_6]
                        push             rcx
                        push             rax;                                 jmp   n139_match_assign_cond_α
.Lx147_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n137_match_assign_save_β
n138_match_defer_β:     mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx147_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx147_12
                                                                              jmp   rax
.Lx147_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α:
                        mov              r11, 58
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n134_match_arbno_as
n139_match_assign_cond_β:
                        mov              r11, 58
                        sub              r12, 24;                             jmp   n138_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$7_β:
                                                                              jmp   n135_match_rpos_β
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
                        mov              edi, 32
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 32
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         DEFINE('EMIT()')
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 59
                        mov              r10, 1;                              jmp   n151_define_α
n150_statement_begin_β: mov              r11, 59;                             jmp   n153_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx506_0]
                        mov              rsi, qword ptr [rip + .Lx506_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n174_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx506_0]
                        lea              rsi, [rip + EMIT_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_statement_end_α
n151_define_β:          mov              r11, 60;                             jmp   n150_statement_begin_β
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "EMIT"
.Lx506_1:               .quad            .Lx506_1_s
.Lx506_1_s:             .string          ""
                                                                              jmp   .Lx507_245
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
                        lea              rax, [rip + n174_statement_begin_α]; jmp   rax
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
.Lx507_245:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 61
                        mov              r10, 1;                              jmp   n153_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 62
                        mov              r10, 2;                              jmp   n154_define_α
n153_statement_begin_β: mov              r11, 62;                             jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        mov              rsi, qword ptr [rip + .Lx513_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n193_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx513_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_statement_end_α
n154_define_β:          mov              r11, 63;                             jmp   n153_statement_begin_β
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "PSH"
.Lx513_1:               .quad            .Lx513_1_s
.Lx513_1_s:             .string          ""
                                                                              jmp   .Lx514_245
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
                        lea              rax, [rip + n193_statement_begin_α]; jmp   rax
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
.Lx514_245:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 64
                        mov              r10, 2;                              jmp   n156_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 65
                        mov              r10, 3;                              jmp   n157_define_α
n156_statement_begin_β: mov              r11, 65;                             jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_define_α:          mov              r11, 66
                        mov              rdi, qword ptr [rip + .Lx520_0]
                        mov              rsi, qword ptr [rip + .Lx520_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n202_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx520_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_statement_end_α
n157_define_β:          mov              r11, 66;                             jmp   n156_statement_begin_β
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "DRF"
.Lx520_1:               .quad            .Lx520_1_s
.Lx520_1_s:             .string          "nm"
                                                                              jmp   .Lx521_245
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
                        cmp              rdx, 0;                              jbe   .Lx521_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx521_41
.Lx521_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx521_41:              lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n202_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx521_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx521_110
.Lx521_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx521_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx521_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx521_180
.Lx521_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx521_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx521_245:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 67
                        mov              r10, 3;                              jmp   n159_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()')
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 68
                        mov              r10, 4;                              jmp   n160_define_α
n159_statement_begin_β: mov              r11, 68;                             jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_define_α:          mov              r11, 69
                        mov              rdi, qword ptr [rip + .Lx527_0]
                        mov              rsi, qword ptr [rip + .Lx527_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n221_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx527_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_statement_end_α
n160_define_β:          mov              r11, 69;                             jmp   n159_statement_begin_β
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "ADD"
.Lx527_1:               .quad            .Lx527_1_s
.Lx527_1_s:             .string          ""
                                                                              jmp   .Lx528_245
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
                        lea              rax, [rip + n221_statement_begin_α]; jmp   rax
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
.Lx528_245:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 70
                        mov              r10, 4;                              jmp   n162_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()')
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 71
                        mov              r10, 5;                              jmp   n163_define_α
n162_statement_begin_β: mov              r11, 71;                             jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_define_α:          mov              r11, 72
                        mov              rdi, qword ptr [rip + .Lx534_0]
                        mov              rsi, qword ptr [rip + .Lx534_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n248_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx534_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_statement_end_α
n163_define_β:          mov              r11, 72;                             jmp   n162_statement_begin_β
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "SUB"
.Lx534_1:               .quad            .Lx534_1_s
.Lx534_1_s:             .string          ""
                                                                              jmp   .Lx535_245
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
                        lea              rax, [rip + n248_statement_begin_α]; jmp   rax
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
.Lx535_245:
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   mov              r11, 73
                        mov              r10, 5;                              jmp   n165_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()')
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 74
                        mov              r10, 6;                              jmp   n166_define_α
n165_statement_begin_β: mov              r11, 74;                             jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_define_α:          mov              r11, 75
                        mov              rdi, qword ptr [rip + .Lx541_0]
                        mov              rsi, qword ptr [rip + .Lx541_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n275_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx541_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_statement_end_α
n166_define_β:          mov              r11, 75;                             jmp   n165_statement_begin_β
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "MUL"
.Lx541_1:               .quad            .Lx541_1_s
.Lx541_1_s:             .string          ""
                                                                              jmp   .Lx542_245
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
                        lea              rax, [rip + n275_statement_begin_α]; jmp   rax
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
.Lx542_245:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 76
                        mov              r10, 6;                              jmp   n168_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()')
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α: mov              r11, 77
                        mov              r10, 7;                              jmp   n169_define_α
n168_statement_begin_β: mov              r11, 77;                             jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_define_α:          mov              r11, 78
                        mov              rdi, qword ptr [rip + .Lx548_0]
                        mov              rsi, qword ptr [rip + .Lx548_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n302_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx548_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_statement_end_α
n169_define_β:          mov              r11, 78;                             jmp   n168_statement_begin_β
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "DIV"
.Lx548_1:               .quad            .Lx548_1_s
.Lx548_1_s:             .string          ""
                                                                              jmp   .Lx549_245
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
                        lea              rax, [rip + n302_statement_begin_α]; jmp   rax
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
.Lx549_245:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 79
                        mov              r10, 7;                              jmp   n171_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(FNS_end)
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 80
                        mov              r10, 8;                              jmp   n172_define_α
n171_statement_begin_β: mov              r11, 80;                             jmp   n346_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_define_α:          mov              r11, 81
                        mov              rdi, qword ptr [rip + .Lx555_0]
                        mov              rsi, qword ptr [rip + .Lx555_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n329_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx555_0]
                        lea              rsi, [rip + NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_statement_end_α
n172_define_β:          mov              r11, 81;                             jmp   n171_statement_begin_β
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "NEG"
.Lx555_1:               .quad            .Lx555_1_s
.Lx555_1_s:             .string          ""
                                                                              jmp   .Lx556_245
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
                        lea              rcx, [rip + NEG_γ]
                        lea              rax, [rip + NEG_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n329_statement_begin_α]; jmp   rax
NEG_γ:                  mov              rdi, qword ptr [r9 + 128]
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx556_245:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 82
                        mov              r10, 8;                              jmp   n346_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 83
                        mov              r10, 9;                              jmp   n175_var_α
n174_statement_begin_β: mov              r11, 83;                             jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_subscript_α
n176_lit_integer_β:     mov              r11, 85
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n174_statement_begin_β
.Lx562_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n177_subscript_α:       sub              rsp, 16
                        mov              r11, 86
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
                        cmp              al, 104;                             jne   .Lx563_240
                        add              rsp, 16;                             jmp   n176_lit_integer_β
.Lx563_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_deref_α
n177_subscript_β:       mov              r11, 86
                        add              rsp, 16;                             jmp   n176_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n178_deref_α:           sub              rsp, 16
                        mov              r11, 87
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
                        cmp              al, 104;                             jne   .Lx564_240
                        add              rsp, 16;                             jmp   n177_subscript_β
.Lx564_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_call_α
n178_deref_β:           mov              r11, 87
                        add              rsp, 16;                             jmp   n177_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            sub              rsp, 16
                        mov              r11, 88
                        lea              rcx, [rip + .Lsig566z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig566z:              .quad            1
                        .quad            .Lx566_2
                        .quad            .Lx566_2
                        .quad            16
.Lx566_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx566_29
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
.Lx566_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx566_240
                        add              rsp, 16;                             jmp   n178_deref_β
.Lx566_240:                                                                   jmp   n180_assign_α
n179_call_β:            mov              r11, 88;                             jmp   n178_deref_β
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 89
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_statement_end_α
.Lx567_0:               .quad            .Lx567_0_s
.Lx567_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 90
                        mov              r10, 9
                        add              rsp, 80;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 91
                        mov              r10, 10;                             jmp   n183_lit_integer_α
n182_statement_begin_β: mov              r11, 91;                             jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:     sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_assign_α
.Lx572_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 93
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n185_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 94
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n186_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 95
                        mov              r10, 11;                             jmp   n187_lit_string_α
n186_statement_begin_β: mov              r11, 95;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_call_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        mov              r11, 97
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd580:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd580]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx579_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n186_statement_begin_β
.Lx579_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
n188_call_β:            mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n186_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n190_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 99
                        mov              r10, 11
                        add              rsp, 32;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α: mov              r11, 100
                        mov              r10, 0;                              jmp   n192_statement_end_α
n191_statement_begin_β: mov              r11, 100;                            jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 101
                        mov              r10, 12;                             jmp   n193_statement_begin_α
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 102
                        mov              r10, 13;                             jmp   n194_var_α
n193_statement_begin_β: mov              r11, 102;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_lit_integer_α
n195_var_β:             mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_binop_α
n196_lit_integer_β:     mov              r11, 105
                        add              rsp, 16;                             jmp   n195_var_β
.Lx592_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 106
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx593_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx593_7
.Lx593_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx593_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx593_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx593_4
.Lx593_3:               movq             xmm0, rsi
.Lx593_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx593_7:                                                                     jmp   n198_assign_α
.Lx593_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx593_240
                        add              rsp, 16;                             jmp   n196_lit_integer_β
.Lx593_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_assign_α
n197_binop_β:           mov              r11, 106
                        add              rsp, 16;                             jmp   n196_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n199_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n199_subscript_α:       sub              rsp, 16
                        mov              r11, 108
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
                        cmp              al, 104;                             jne   .Lx595_240
                        add              rsp, 16;                             jmp   n197_binop_β
.Lx595_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n201_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   mov              r11, 110
                        mov              r10, 13
                        add              rsp, 80;                             jmp   NRETURN
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α: mov              r11, 111
                        mov              r10, 14;                             jmp   n203_var_α
n202_statement_begin_β: mov              r11, 111;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 114
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#         nm ? POS(0) ANY(&LCASE) RPOS(0)         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 115
                        mov              r10, 15;                             jmp   n207_var_α
n206_statement_begin_β: mov              r11, 115;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_match_begin_α:     mov              r11, 117
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
.Lx609_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx609_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n209_match_pos_α
n208_match_begin_β:     mov              r11, 117
.Lx609_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx609_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx609_1
                                                                              jmp   .Lx609_0
.Lx609_1:
n208_match_begin_af:    mov              r11, 117
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
n209_match_pos_α:       mov              r11, 118
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n208_match_begin_β
                                                                              jmp   n210_match_any_α
n209_match_pos_β:       mov              r11, 118;                            jmp   n208_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_match_any_α:       mov              r11, 119
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n208_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n208_match_begin_β
                        add              r14d, 1;                             jmp   n211_match_rpos_α
n210_match_any_β:       mov              r11, 119
                        sub              r14d, 1;                             jmp   n208_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_match_rpos_α:      mov              r11, 120
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n210_match_any_β
                                                                              jmp   n212_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_match_end_α:       mov              r11, 121
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
                        test             rax, rax;                            je    .Lx615_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n208_match_begin_af
.Lx615_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n213_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   mov              r11, 122
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n214_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 123
                        mov              r10, 16;                             jmp   n215_var_α
n214_statement_begin_β: mov              r11, 123;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_subscript_α
n216_var_β:             mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n214_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:       sub              rsp, 16
                        mov              r11, 126
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
                        cmp              al, 104;                             jne   .Lx622_240
                        add              rsp, 16;                             jmp   n216_var_β
.Lx622_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_deref_α
n217_subscript_β:       mov              r11, 126
                        add              rsp, 16;                             jmp   n216_var_β
#-----------------------------------------------------------------------------------------------------------------------
n218_deref_α:           sub              rsp, 16
                        mov              r11, 127
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
                        cmp              al, 104;                             jne   .Lx623_240
                        add              rsp, 16;                             jmp   n217_subscript_β
.Lx623_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:          mov              r11, 128
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n220_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_end_α:   mov              r11, 129
                        mov              r10, 16
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_begin_α: mov              r11, 130
                        mov              r10, 17;                             jmp   n222_var_α
n221_statement_begin_β: mov              r11, 130;                            jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_lit_integer_α
n223_var_β:             mov              r11, 132
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n221_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_binop_α
n224_lit_integer_β:     mov              r11, 133
                        add              rsp, 16;                             jmp   n223_var_β
.Lx631_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n225_binop_α:           sub              rsp, 16
                        mov              r11, 134
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx632_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx632_7
.Lx632_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx632_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx632_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx632_4
.Lx632_3:               movq             xmm0, rsi
.Lx632_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx632_7:                                                                     jmp   n226_assign_α
.Lx632_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx632_240
                        add              rsp, 16;                             jmp   n224_lit_integer_β
.Lx632_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_assign_α
n225_binop_β:           mov              r11, 134
                        add              rsp, 16;                             jmp   n224_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n226_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n227_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n227_subscript_α:       sub              rsp, 16
                        mov              r11, 136
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
                        cmp              al, 104;                             jne   .Lx634_240
                        add              rsp, 16;                             jmp   n225_binop_β
.Lx634_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_var_α
n227_subscript_β:       mov              r11, 136
                        add              rsp, 16;                             jmp   n225_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_var_α
n228_var_β:             mov              r11, 137
                        add              rsp, 16;                             jmp   n227_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_subscript_α
n229_var_β:             mov              r11, 138
                        add              rsp, 16;                             jmp   n228_var_β
#-----------------------------------------------------------------------------------------------------------------------
n230_subscript_α:       sub              rsp, 16
                        mov              r11, 139
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
                        cmp              al, 104;                             jne   .Lx637_240
                        add              rsp, 16;                             jmp   n229_var_β
.Lx637_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_deref_α
n230_subscript_β:       mov              r11, 139
                        add              rsp, 16;                             jmp   n229_var_β
#-----------------------------------------------------------------------------------------------------------------------
n231_deref_α:           sub              rsp, 16
                        mov              r11, 140
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
                        cmp              al, 104;                             jne   .Lx638_240
                        add              rsp, 16;                             jmp   n230_subscript_β
.Lx638_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_call_α
n231_deref_β:           mov              r11, 140
                        add              rsp, 16;                             jmp   n230_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        mov              r11, 141
                        lea              rcx, [rip + .Lsig640z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig640z:              .quad            1
                        .quad            .Lx640_2
                        .quad            .Lx640_2
                        .quad            16
.Lx640_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx640_29
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
.Lx640_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx640_240
                        add              rsp, 16;                             jmp   n231_deref_β
.Lx640_240:                                                                   jmp   n233_var_α
n232_call_β:            mov              r11, 141;                            jmp   n231_deref_β
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_var_α
n233_var_β:             mov              r11, 142
                        add              rsp, 32;                             jmp   n231_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_lit_integer_α
n234_var_β:             mov              r11, 143
                        add              rsp, 16;                             jmp   n233_var_β
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_binop_α
n235_lit_integer_β:     mov              r11, 144
                        add              rsp, 16;                             jmp   n234_var_β
.Lx643_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 145
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx644_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx644_7
.Lx644_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx644_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx644_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx644_4
.Lx644_3:               movq             xmm0, rsi
.Lx644_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx644_7:                                                                     jmp   n237_subscript_α
.Lx644_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx644_240
                        add              rsp, 16;                             jmp   n235_lit_integer_β
.Lx644_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_subscript_α
n236_binop_β:           mov              r11, 145
                        add              rsp, 16;                             jmp   n235_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:       sub              rsp, 16
                        mov              r11, 146
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
                        cmp              al, 104;                             jne   .Lx645_240
                        add              rsp, 16;                             jmp   n236_binop_β
.Lx645_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_deref_α
n237_subscript_β:       mov              r11, 146
                        add              rsp, 16;                             jmp   n236_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n238_deref_α:           sub              rsp, 16
                        mov              r11, 147
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
                        cmp              al, 104;                             jne   .Lx646_240
                        add              rsp, 16;                             jmp   n237_subscript_β
.Lx646_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_call_α
n238_deref_β:           mov              r11, 147
                        add              rsp, 16;                             jmp   n237_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
                        mov              r11, 148
                        lea              rcx, [rip + .Lsig648z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig648z:              .quad            1
                        .quad            .Lx648_2
                        .quad            .Lx648_2
                        .quad            16
.Lx648_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx648_29
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
.Lx648_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx648_240
                        add              rsp, 16;                             jmp   n238_deref_β
.Lx648_240:                                                                   jmp   n240_binop_α
n239_call_β:            mov              r11, 148;                            jmp   n238_deref_β
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:           sub              rsp, 16
                        mov              r11, 149
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx649_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx649_7
.Lx649_2:               and              edx, 1;                              jz    .Lx649_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx649_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx649_4
.Lx649_3:               movq             xmm0, rsi
.Lx649_4:               cmp              cl, 5;                               je    .Lx649_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx649_6
.Lx649_5:               movq             xmm1, rdi
.Lx649_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx649_7:                                                                     jmp   n241_assign_var_α
.Lx649_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx649_240
                        add              rsp, 32;                             jmp   n238_deref_β
.Lx649_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_assign_var_α
n240_binop_β:           mov              r11, 149
                        add              rsp, 32;                             jmp   n238_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_var_α:      sub              rsp, 16
                        mov              r11, 150
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx650_240
                        add              rsp, 16;                             jmp   n240_binop_β
.Lx650_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   mov              r11, 151
                        mov              r10, 17
                        add              rsp, 304;                            jmp   n243_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α: mov              r11, 152
                        mov              r10, 18;                             jmp   n244_lit_string_α
n243_statement_begin_β: mov              r11, 152;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_call_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        mov              r11, 154
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd657:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd657]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx656_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n243_statement_begin_β
.Lx656_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_assign_α
n245_call_β:            mov              r11, 154
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n243_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 156
                        mov              r10, 18
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 157
                        mov              r10, 19;                             jmp   n249_var_α
n248_statement_begin_β: mov              r11, 157;                            jmp   n270_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_integer_α
n250_var_β:             mov              r11, 159
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_binop_α
n251_lit_integer_β:     mov              r11, 160
                        add              rsp, 16;                             jmp   n250_var_β
.Lx665_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 161
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx666_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx666_7
.Lx666_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx666_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx666_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx666_4
.Lx666_3:               movq             xmm0, rsi
.Lx666_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx666_7:                                                                     jmp   n253_assign_α
.Lx666_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx666_240
                        add              rsp, 16;                             jmp   n251_lit_integer_β
.Lx666_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_assign_α
n252_binop_β:           mov              r11, 161
                        add              rsp, 16;                             jmp   n251_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:          mov              r11, 162
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n254_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n254_subscript_α:       sub              rsp, 16
                        mov              r11, 163
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
                        cmp              al, 104;                             jne   .Lx668_240
                        add              rsp, 16;                             jmp   n252_binop_β
.Lx668_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_var_α
n254_subscript_β:       mov              r11, 163
                        add              rsp, 16;                             jmp   n252_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_var_β:             mov              r11, 164
                        add              rsp, 16;                             jmp   n254_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_subscript_α
n256_var_β:             mov              r11, 165
                        add              rsp, 16;                             jmp   n255_var_β
#-----------------------------------------------------------------------------------------------------------------------
n257_subscript_α:       sub              rsp, 16
                        mov              r11, 166
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
                        cmp              al, 104;                             jne   .Lx671_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lx671_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_deref_α
n257_subscript_β:       mov              r11, 166
                        add              rsp, 16;                             jmp   n256_var_β
#-----------------------------------------------------------------------------------------------------------------------
n258_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx672_240
                        add              rsp, 16;                             jmp   n257_subscript_β
.Lx672_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_call_α
n258_deref_β:           mov              r11, 167
                        add              rsp, 16;                             jmp   n257_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            sub              rsp, 16
                        mov              r11, 168
                        lea              rcx, [rip + .Lsig674z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig674z:              .quad            1
                        .quad            .Lx674_2
                        .quad            .Lx674_2
                        .quad            16
.Lx674_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx674_29
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
.Lx674_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx674_240
                        add              rsp, 16;                             jmp   n258_deref_β
.Lx674_240:                                                                   jmp   n260_var_α
n259_call_β:            mov              r11, 168;                            jmp   n258_deref_β
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 169
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_var_α
n260_var_β:             mov              r11, 169
                        add              rsp, 32;                             jmp   n258_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_integer_α
n261_var_β:             mov              r11, 170
                        add              rsp, 16;                             jmp   n260_var_β
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_binop_α
n262_lit_integer_β:     mov              r11, 171
                        add              rsp, 16;                             jmp   n261_var_β
.Lx677_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              r11, 172
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx678_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx678_7
.Lx678_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx678_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx678_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx678_4
.Lx678_3:               movq             xmm0, rsi
.Lx678_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx678_7:                                                                     jmp   n264_subscript_α
.Lx678_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx678_240
                        add              rsp, 16;                             jmp   n262_lit_integer_β
.Lx678_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_subscript_α
n263_binop_β:           mov              r11, 172
                        add              rsp, 16;                             jmp   n262_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n264_subscript_α:       sub              rsp, 16
                        mov              r11, 173
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
                        cmp              al, 104;                             jne   .Lx679_240
                        add              rsp, 16;                             jmp   n263_binop_β
.Lx679_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_deref_α
n264_subscript_β:       mov              r11, 173
                        add              rsp, 16;                             jmp   n263_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n265_deref_α:           sub              rsp, 16
                        mov              r11, 174
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
                        cmp              al, 104;                             jne   .Lx680_240
                        add              rsp, 16;                             jmp   n264_subscript_β
.Lx680_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_call_α
n265_deref_β:           mov              r11, 174
                        add              rsp, 16;                             jmp   n264_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            sub              rsp, 16
                        mov              r11, 175
                        lea              rcx, [rip + .Lsig682z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig682z:              .quad            1
                        .quad            .Lx682_2
                        .quad            .Lx682_2
                        .quad            16
.Lx682_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx682_29
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
.Lx682_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx682_240
                        add              rsp, 16;                             jmp   n265_deref_β
.Lx682_240:                                                                   jmp   n267_binop_α
n266_call_β:            mov              r11, 175;                            jmp   n265_deref_β
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              r11, 176
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx683_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx683_7
.Lx683_2:               and              edx, 1;                              jz    .Lx683_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx683_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx683_4
.Lx683_3:               movq             xmm0, rsi
.Lx683_4:               cmp              cl, 5;                               je    .Lx683_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx683_6
.Lx683_5:               movq             xmm1, rdi
.Lx683_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx683_7:                                                                     jmp   n268_assign_var_α
.Lx683_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx683_240
                        add              rsp, 32;                             jmp   n265_deref_β
.Lx683_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_assign_var_α
n267_binop_β:           mov              r11, 176
                        add              rsp, 32;                             jmp   n265_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n268_assign_var_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx684_240
                        add              rsp, 16;                             jmp   n267_binop_β
.Lx684_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_end_α:   mov              r11, 178
                        mov              r10, 19
                        add              rsp, 304;                            jmp   n270_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α: mov              r11, 179
                        mov              r10, 20;                             jmp   n271_lit_string_α
n270_statement_begin_β: mov              r11, 179;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n272_call_α
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            sub              rsp, 16
                        mov              r11, 181
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd691:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd691]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx690_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
.Lx690_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_assign_α
n272_call_β:            mov              r11, 181
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:          mov              r11, 182
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx;            jmp   n274_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_end_α:   mov              r11, 183
                        mov              r10, 20
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_begin_α: mov              r11, 184
                        mov              r10, 21;                             jmp   n276_var_α
n275_statement_begin_β: mov              r11, 184;                            jmp   n297_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_lit_integer_α
n277_var_β:             mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n275_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_binop_α
n278_lit_integer_β:     mov              r11, 187
                        add              rsp, 16;                             jmp   n277_var_β
.Lx699_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx700_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx700_7
.Lx700_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx700_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx700_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx700_4
.Lx700_3:               movq             xmm0, rsi
.Lx700_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx700_7:                                                                     jmp   n280_assign_α
.Lx700_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx700_240
                        add              rsp, 16;                             jmp   n278_lit_integer_β
.Lx700_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_assign_α
n279_binop_β:           mov              r11, 188
                        add              rsp, 16;                             jmp   n278_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n281_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n281_subscript_α:       sub              rsp, 16
                        mov              r11, 190
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
                        cmp              al, 104;                             jne   .Lx702_240
                        add              rsp, 16;                             jmp   n279_binop_β
.Lx702_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_var_α
n281_subscript_β:       mov              r11, 190
                        add              rsp, 16;                             jmp   n279_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_var_α
n282_var_β:             mov              r11, 191
                        add              rsp, 16;                             jmp   n281_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              r11, 192
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_subscript_α
n283_var_β:             mov              r11, 192
                        add              rsp, 16;                             jmp   n282_var_β
#-----------------------------------------------------------------------------------------------------------------------
n284_subscript_α:       sub              rsp, 16
                        mov              r11, 193
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
                        cmp              al, 104;                             jne   .Lx705_240
                        add              rsp, 16;                             jmp   n283_var_β
.Lx705_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_deref_α
n284_subscript_β:       mov              r11, 193
                        add              rsp, 16;                             jmp   n283_var_β
#-----------------------------------------------------------------------------------------------------------------------
n285_deref_α:           sub              rsp, 16
                        mov              r11, 194
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
                        cmp              al, 104;                             jne   .Lx706_240
                        add              rsp, 16;                             jmp   n284_subscript_β
.Lx706_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_deref_β:           mov              r11, 194
                        add              rsp, 16;                             jmp   n284_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 195
                        lea              rcx, [rip + .Lsig708z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig708z:              .quad            1
                        .quad            .Lx708_2
                        .quad            .Lx708_2
                        .quad            16
.Lx708_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx708_29
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
.Lx708_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx708_240
                        add              rsp, 16;                             jmp   n285_deref_β
.Lx708_240:                                                                   jmp   n287_var_α
n286_call_β:            mov              r11, 195;                            jmp   n285_deref_β
.Lx708_0:               .quad            .Lx708_0_s
.Lx708_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
n287_var_β:             mov              r11, 196
                        add              rsp, 32;                             jmp   n285_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_integer_α
n288_var_β:             mov              r11, 197
                        add              rsp, 16;                             jmp   n287_var_β
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     sub              rsp, 16
                        mov              r11, 198
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_binop_α
n289_lit_integer_β:     mov              r11, 198
                        add              rsp, 16;                             jmp   n288_var_β
.Lx711_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 199
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx712_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx712_7
.Lx712_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx712_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx712_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx712_4
.Lx712_3:               movq             xmm0, rsi
.Lx712_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx712_7:                                                                     jmp   n291_subscript_α
.Lx712_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx712_240
                        add              rsp, 16;                             jmp   n289_lit_integer_β
.Lx712_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_subscript_α
n290_binop_β:           mov              r11, 199
                        add              rsp, 16;                             jmp   n289_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              r11, 200
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
                        cmp              al, 104;                             jne   .Lx713_240
                        add              rsp, 16;                             jmp   n290_binop_β
.Lx713_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_deref_α
n291_subscript_β:       mov              r11, 200
                        add              rsp, 16;                             jmp   n290_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n292_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx714_240
                        add              rsp, 16;                             jmp   n291_subscript_β
.Lx714_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_call_α
n292_deref_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n291_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            sub              rsp, 16
                        mov              r11, 202
                        lea              rcx, [rip + .Lsig716z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig716z:              .quad            1
                        .quad            .Lx716_2
                        .quad            .Lx716_2
                        .quad            16
.Lx716_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx716_29
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
.Lx716_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx716_240
                        add              rsp, 16;                             jmp   n292_deref_β
.Lx716_240:                                                                   jmp   n294_binop_α
n293_call_β:            mov              r11, 202;                            jmp   n292_deref_β
.Lx716_0:               .quad            .Lx716_0_s
.Lx716_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n294_binop_α:           sub              rsp, 16
                        mov              r11, 203
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx717_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx717_7
.Lx717_2:               and              edx, 1;                              jz    .Lx717_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx717_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx717_4
.Lx717_3:               movq             xmm0, rsi
.Lx717_4:               cmp              cl, 5;                               je    .Lx717_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx717_6
.Lx717_5:               movq             xmm1, rdi
.Lx717_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx717_7:                                                                     jmp   n295_assign_var_α
.Lx717_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx717_240
                        add              rsp, 32;                             jmp   n292_deref_β
.Lx717_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n295_assign_var_α
n294_binop_β:           mov              r11, 203
                        add              rsp, 32;                             jmp   n292_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_var_α:      sub              rsp, 16
                        mov              r11, 204
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx718_240
                        add              rsp, 16;                             jmp   n294_binop_β
.Lx718_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   mov              r11, 205
                        mov              r10, 21
                        add              rsp, 304;                            jmp   n297_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α: mov              r11, 206
                        mov              r10, 22;                             jmp   n298_lit_string_α
n297_statement_begin_β: mov              r11, 206;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      sub              rsp, 16
                        mov              r11, 207
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_call_α
.Lx723_0:               .quad            .Lx723_0_s
.Lx723_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 208
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd725:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd725]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx724_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n297_statement_begin_β
.Lx724_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_call_β:            mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n297_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 209
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx;           jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 210
                        mov              r10, 22
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α: mov              r11, 211
                        mov              r10, 23;                             jmp   n303_var_α
n302_statement_begin_β: mov              r11, 211;                            jmp   n324_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_lit_integer_α
n304_var_β:             mov              r11, 213
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_binop_α
n305_lit_integer_β:     mov              r11, 214
                        add              rsp, 16;                             jmp   n304_var_β
.Lx733_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:           sub              rsp, 16
                        mov              r11, 215
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx734_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx734_7
.Lx734_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx734_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx734_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx734_4
.Lx734_3:               movq             xmm0, rsi
.Lx734_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx734_7:                                                                     jmp   n307_assign_α
.Lx734_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx734_240
                        add              rsp, 16;                             jmp   n305_lit_integer_β
.Lx734_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n307_assign_α
n306_binop_β:           mov              r11, 215
                        add              rsp, 16;                             jmp   n305_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n308_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n308_subscript_α:       sub              rsp, 16
                        mov              r11, 217
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
                        cmp              al, 104;                             jne   .Lx736_240
                        add              rsp, 16;                             jmp   n306_binop_β
.Lx736_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_subscript_β:       mov              r11, 217
                        add              rsp, 16;                             jmp   n306_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 218
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
n309_var_β:             mov              r11, 218
                        add              rsp, 16;                             jmp   n308_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_subscript_α
n310_var_β:             mov              r11, 219
                        add              rsp, 16;                             jmp   n309_var_β
#-----------------------------------------------------------------------------------------------------------------------
n311_subscript_α:       sub              rsp, 16
                        mov              r11, 220
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
                        cmp              al, 104;                             jne   .Lx739_240
                        add              rsp, 16;                             jmp   n310_var_β
.Lx739_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_deref_α
n311_subscript_β:       mov              r11, 220
                        add              rsp, 16;                             jmp   n310_var_β
#-----------------------------------------------------------------------------------------------------------------------
n312_deref_α:           sub              rsp, 16
                        mov              r11, 221
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
                        cmp              al, 104;                             jne   .Lx740_240
                        add              rsp, 16;                             jmp   n311_subscript_β
.Lx740_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_call_α
n312_deref_β:           mov              r11, 221
                        add              rsp, 16;                             jmp   n311_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            sub              rsp, 16
                        mov              r11, 222
                        lea              rcx, [rip + .Lsig742z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig742z:              .quad            1
                        .quad            .Lx742_2
                        .quad            .Lx742_2
                        .quad            16
.Lx742_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx742_29
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
.Lx742_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx742_240
                        add              rsp, 16;                             jmp   n312_deref_β
.Lx742_240:                                                                   jmp   n314_var_α
n313_call_β:            mov              r11, 222;                            jmp   n312_deref_β
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_var_α
n314_var_β:             mov              r11, 223
                        add              rsp, 32;                             jmp   n312_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_lit_integer_α
n315_var_β:             mov              r11, 224
                        add              rsp, 16;                             jmp   n314_var_β
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_binop_α
n316_lit_integer_β:     mov              r11, 225
                        add              rsp, 16;                             jmp   n315_var_β
.Lx745_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              r11, 226
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx746_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx746_7
.Lx746_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx746_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx746_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx746_4
.Lx746_3:               movq             xmm0, rsi
.Lx746_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx746_7:                                                                     jmp   n318_subscript_α
.Lx746_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx746_240
                        add              rsp, 16;                             jmp   n316_lit_integer_β
.Lx746_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n318_subscript_α
n317_binop_β:           mov              r11, 226
                        add              rsp, 16;                             jmp   n316_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n318_subscript_α:       sub              rsp, 16
                        mov              r11, 227
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
                        cmp              al, 104;                             jne   .Lx747_240
                        add              rsp, 16;                             jmp   n317_binop_β
.Lx747_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_deref_α
n318_subscript_β:       mov              r11, 227
                        add              rsp, 16;                             jmp   n317_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n319_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx748_240
                        add              rsp, 16;                             jmp   n318_subscript_β
.Lx748_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_call_α
n319_deref_β:           mov              r11, 228
                        add              rsp, 16;                             jmp   n318_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            sub              rsp, 16
                        mov              r11, 229
                        lea              rcx, [rip + .Lsig750z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig750z:              .quad            1
                        .quad            .Lx750_2
                        .quad            .Lx750_2
                        .quad            16
.Lx750_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx750_29
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
.Lx750_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx750_240
                        add              rsp, 16;                             jmp   n319_deref_β
.Lx750_240:                                                                   jmp   n321_binop_α
n320_call_β:            mov              r11, 229;                            jmp   n319_deref_β
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx751_240
                        add              rsp, 32;                             jmp   n319_deref_β
.Lx751_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_assign_var_α
n321_binop_β:           mov              r11, 230
                        add              rsp, 32;                             jmp   n319_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_var_α:      sub              rsp, 16
                        mov              r11, 231
                        mov              rdi, qword ptr [rsp + 224]           # subscript
                        mov              rsi, qword ptr [rsp + 232]
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
                        cmp              al, 104;                             jne   .Lx752_240
                        add              rsp, 16;                             jmp   n321_binop_β
.Lx752_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:   mov              r11, 232
                        mov              r10, 23
                        add              rsp, 304;                            jmp   n324_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n324_statement_begin_α: mov              r11, 233
                        mov              r10, 24;                             jmp   n325_lit_string_α
n324_statement_begin_β: mov              r11, 233;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_call_α
.Lx757_0:               .quad            .Lx757_0_s
.Lx757_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            sub              rsp, 16
                        mov              r11, 235
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd759:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd759]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx758_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n324_statement_begin_β
.Lx758_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_assign_α
n326_call_β:            mov              r11, 235
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n324_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n327_assign_α:          mov              r11, 236
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx;           jmp   n328_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_end_α:   mov              r11, 237
                        mov              r10, 24
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_begin_α: mov              r11, 238
                        mov              r10, 25;                             jmp   n330_var_α
n329_statement_begin_β: mov              r11, 238;                            jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_subscript_α
n331_var_β:             mov              r11, 240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n329_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n332_subscript_α:       sub              rsp, 16
                        mov              r11, 241
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx767_240
                        add              rsp, 16;                             jmp   n331_var_β
.Lx767_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_var_α
n332_subscript_β:       mov              r11, 241
                        add              rsp, 16;                             jmp   n331_var_β
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_var_α
n333_var_β:             mov              r11, 242
                        add              rsp, 16;                             jmp   n332_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_subscript_α
n334_var_β:             mov              r11, 243
                        add              rsp, 16;                             jmp   n333_var_β
#-----------------------------------------------------------------------------------------------------------------------
n335_subscript_α:       sub              rsp, 16
                        mov              r11, 244
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
                        cmp              al, 104;                             jne   .Lx770_240
                        add              rsp, 16;                             jmp   n334_var_β
.Lx770_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_deref_α
n335_subscript_β:       mov              r11, 244
                        add              rsp, 16;                             jmp   n334_var_β
#-----------------------------------------------------------------------------------------------------------------------
n336_deref_α:           sub              rsp, 16
                        mov              r11, 245
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
                        cmp              al, 104;                             jne   .Lx771_240
                        add              rsp, 16;                             jmp   n335_subscript_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_call_α
n336_deref_β:           mov              r11, 245
                        add              rsp, 16;                             jmp   n335_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            sub              rsp, 16
                        mov              r11, 246
                        lea              rcx, [rip + .Lsig773z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig773z:              .quad            1
                        .quad            .Lx773_2
                        .quad            .Lx773_2
                        .quad            16
.Lx773_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx773_29
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
.Lx773_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx773_240
                        add              rsp, 16;                             jmp   n336_deref_β
.Lx773_240:                                                                   jmp   n338_unop_α
n337_call_β:            mov              r11, 246;                            jmp   n336_deref_β
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n338_unop_α:            sub              rsp, 16
                        mov              r11, 247
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_assign_var_α
n338_unop_β:            mov              r11, 247
                        add              rsp, 32;                             jmp   n336_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_var_α:      sub              rsp, 16
                        mov              r11, 248
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              al, 104;                             jne   .Lx775_240
                        add              rsp, 16;                             jmp   n338_unop_β
.Lx775_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   mov              r11, 249
                        mov              r10, 25
                        add              rsp, 160;                            jmp   n341_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α: mov              r11, 250
                        mov              r10, 26;                             jmp   n342_lit_string_α
n341_statement_begin_β: mov              r11, 250;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      sub              rsp, 16
                        mov              r11, 251
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n343_call_α
.Lx780_0:               .quad            .Lx780_0_s
.Lx780_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            sub              rsp, 16
                        mov              r11, 252
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd782:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd782]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx781_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lx781_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_assign_α
n343_call_β:            mov              r11, 252
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # NEG
                        mov              qword ptr [r9 + 136], rdx;           jmp   n345_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 254
                        mov              r10, 26
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# FNS_end  <stmt 27, line 28: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_begin_α: mov              r11, 255
                        mov              r10, 27;                             jmp   n347_statement_end_α
n346_statement_begin_β: mov              r11, 255;                            jmp   n348_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:   mov              r11, 256
                        mov              r10, 27;                             jmp   n348_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_begin_α: mov              r11, 257
                        mov              r10, 28;                             jmp   n349_lit_integer_α
n348_statement_begin_β: mov              r11, 257;                            jmp   n353_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     sub              rsp, 16
                        mov              r11, 258
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n350_call_α
.Lx792_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            sub              rsp, 16
                        mov              r11, 259
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd794:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd794]
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
                        cmp              al, 104;                             jne   .Lx793_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
.Lx793_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_assign_α
n350_call_β:            mov              r11, 259
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_α:          mov              r11, 260
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # S
                        mov              qword ptr [r9 + 152], rdx;           jmp   n352_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_end_α:   mov              r11, 261
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n353_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α: mov              r11, 262
                        mov              r10, 29;                             jmp   n354_lit_string_α
n353_statement_begin_β: mov              r11, 262;                            jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Lx800_0:               .quad            .Lx800_0_s
.Lx800_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        mov              r11, 264
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd802:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd802]
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
                        cmp              al, 104;                             jne   .Lx801_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lx801_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_α
n355_call_β:            mov              r11, 264
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # V
                        mov              qword ptr [r9 + 216], rdx;           jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 266
                        mov              r10, 29
                        add              rsp, 32;                             jmp   n358_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α: mov              r11, 267
                        mov              r10, 30;                             jmp   n359_lit_string_α
n358_statement_begin_β: mov              r11, 267;                            jmp   n363_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_call_α
.Lx808_0:               .quad            .Lx808_0_s
.Lx808_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            sub              rsp, 16
                        mov              r11, 269
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd810:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd810]
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
                        cmp              al, 104;                             jne   .Lx809_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
.Lx809_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n361_assign_α
n360_call_β:            mov              r11, 269
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # I
                        mov              qword ptr [r9 + 232], rdx;           jmp   n362_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n362_statement_end_α:   mov              r11, 271
                        mov              r10, 30
                        add              rsp, 32;                             jmp   n363_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n363_statement_begin_α: mov              r11, 272
                        mov              r10, 31;                             jmp   n364_var_α
n363_statement_begin_β: mov              r11, 272;                            jmp   n373_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 208]            # V
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n365_assign_α:          mov              r11, 274
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 392], rdx;           jmp   n366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              r11, 275
                        mov              rax, qword ptr [r9 + 224]            # I
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_assign_α
n366_var_β:             mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n363_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 408], rdx;           jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      sub              rsp, 16
                        mov              r11, 277
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n369_lit_string_α
n368_lit_string_β:      mov              r11, 277
                        add              rsp, 16;                             jmp   n366_var_β
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      sub              rsp, 16
                        mov              r11, 278
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n370_call_α
n369_lit_string_β:      mov              r11, 278
                        add              rsp, 16;                             jmp   n368_lit_string_β
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            sub              rsp, 16
                        mov              r11, 279
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
.Lrkfnzd823:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd823]
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
                        cmp              al, 104;                             jne   .Lx822_240
                        add              rsp, 16;                             jmp   n369_lit_string_β
.Lx822_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_assign_α
n370_call_β:            mov              r11, 279
                        add              rsp, 16;                             jmp   n369_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # A
                        mov              qword ptr [r9 + 248], rdx;           jmp   n372_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_end_α:   mov              r11, 281
                        mov              r10, 31
                        add              rsp, 80;                             jmp   n373_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_begin_α: mov              r11, 282
                        mov              r10, 32;                             jmp   n374_var_α
n373_statement_begin_β: mov              r11, 282;                            jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 240]            # A
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n375_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 284
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      sub              rsp, 16
                        mov              r11, 285
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n377_lit_string_α
n376_lit_string_β:      mov              r11, 285
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n373_statement_begin_β
.Lx831_0:               .quad            .Lx831_0_s
.Lx831_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      sub              rsp, 16
                        mov              r11, 286
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n378_call_α
n377_lit_string_β:      mov              r11, 286
                        add              rsp, 16;                             jmp   n376_lit_string_β
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            sub              rsp, 16
                        mov              r11, 287
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
.Lrkfnzd834:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd834]
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
                        cmp              al, 104;                             jne   .Lx833_240
                        add              rsp, 16;                             jmp   n377_lit_string_β
.Lx833_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_call_β:            mov              r11, 287
                        add              rsp, 16;                             jmp   n377_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # F
                        mov              qword ptr [r9 + 264], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 289
                        mov              r10, 32
                        add              rsp, 64;                             jmp   n381_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α: mov              r11, 290
                        mov              r10, 33;                             jmp   n382_var_α
n381_statement_begin_β: mov              r11, 290;                            jmp   n389_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              r11, 291
                        mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 440], rdx;           jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      sub              rsp, 16
                        mov              r11, 293
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n385_lit_string_α
n384_lit_string_β:      mov              r11, 293
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n381_statement_begin_β
.Lx842_0:               .quad            .Lx842_0_s
.Lx842_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      sub              rsp, 16
                        mov              r11, 294
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n386_call_α
n385_lit_string_β:      mov              r11, 294
                        add              rsp, 16;                             jmp   n384_lit_string_β
.Lx843_0:               .quad            .Lx843_0_s
.Lx843_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            sub              rsp, 16
                        mov              r11, 295
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
.Lrkfnzd845:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd845]
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
                        cmp              al, 104;                             jne   .Lx844_240
                        add              rsp, 16;                             jmp   n385_lit_string_β
.Lx844_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_assign_α
n386_call_β:            mov              r11, 295
                        add              rsp, 16;                             jmp   n385_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              r11, 296
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # T
                        mov              qword ptr [r9 + 280], rdx;           jmp   n388_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n388_statement_end_α:   mov              r11, 297
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n389_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n389_statement_begin_α: mov              r11, 298
                        mov              r10, 34;                             jmp   n390_var_α
n389_statement_begin_β: mov              r11, 298;                            jmp   n397_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             sub              rsp, 16
                        mov              r11, 299
                        mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      sub              rsp, 16
                        mov              r11, 301
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_lit_string_α
n392_lit_string_β:      mov              r11, 301
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n389_statement_begin_β
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      sub              rsp, 16
                        mov              r11, 302
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n394_call_α
n393_lit_string_β:      mov              r11, 302
                        add              rsp, 16;                             jmp   n392_lit_string_β
.Lx854_0:               .quad            .Lx854_0_s
.Lx854_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n394_call_α:            sub              rsp, 16
                        mov              r11, 303
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
.Lrkfnzd856:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd856]
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
                        cmp              al, 104;                             jne   .Lx855_240
                        add              rsp, 16;                             jmp   n393_lit_string_β
.Lx855_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n395_assign_α
n394_call_β:            mov              r11, 303
                        add              rsp, 16;                             jmp   n393_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # X
                        mov              qword ptr [r9 + 296], rdx;           jmp   n396_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_end_α:   mov              r11, 305
                        mov              r10, 34
                        add              rsp, 64;                             jmp   n397_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n397_statement_begin_α: mov              r11, 306
                        mov              r10, 35;                             jmp   n398_lit_integer_α
n397_statement_begin_β: mov              r11, 306;                            jmp   n406_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     sub              rsp, 16
                        mov              r11, 307
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n399_call_α
.Lx862_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            sub              rsp, 16
                        mov              r11, 308
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd308:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd308]
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
                        cmp              al, 104;                             jne   .Lx863_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n397_statement_begin_β
.Lx863_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_assign_α
n399_call_β:            mov              r11, 308
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n397_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 309
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 472], rdx;           jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      sub              rsp, 16
                        mov              r11, 310
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n402_lit_string_α
n401_lit_string_β:      mov              r11, 310
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n397_statement_begin_β
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      sub              rsp, 16
                        mov              r11, 311
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_call_α
n402_lit_string_β:      mov              r11, 311
                        add              rsp, 16;                             jmp   n401_lit_string_β
.Lx866_0:               .quad            .Lx866_0_s
.Lx866_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        mov              r11, 312
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
.Lrkfnzd868:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd868]
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
                        cmp              al, 104;                             jne   .Lx867_240
                        add              rsp, 16;                             jmp   n402_lit_string_β
.Lx867_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_assign_α
n403_call_β:            mov              r11, 312
                        add              rsp, 16;                             jmp   n402_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:          mov              r11, 313
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # eol
                        mov              qword ptr [r9 + 312], rdx;           jmp   n405_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n405_statement_end_α:   mov              r11, 314
                        mov              r10, 35
                        add              rsp, 80;                             jmp   n406_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol . *EMIT()) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n406_statement_begin_α: mov              r11, 315
                        mov              r10, 36;                             jmp   n407_var_α
n406_statement_begin_β: mov              r11, 315;                            jmp   n416_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n408_assign_α:          mov              r11, 317
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:             sub              rsp, 16
                        mov              r11, 318
                        mov              rax, qword ptr [r9 + 304]            # eol
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_assign_α
n409_var_β:             mov              r11, 318
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n406_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:          mov              r11, 319
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n412_lit_string_α
n411_lit_string_β:      mov              r11, 320
                        add              rsp, 16;                             jmp   n409_var_β
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      sub              rsp, 16
                        mov              r11, 321
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n413_call_α
n412_lit_string_β:      mov              r11, 321
                        add              rsp, 16;                             jmp   n411_lit_string_β
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n413_call_α:            sub              rsp, 16
                        mov              r11, 322
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
.Lrkfnzd881:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd881]
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
                        cmp              al, 104;                             jne   .Lx880_240
                        add              rsp, 16;                             jmp   n412_lit_string_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_assign_α
n413_call_β:            mov              r11, 322
                        add              rsp, 16;                             jmp   n412_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n414_assign_α:          mov              r11, 323
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # C
                        mov              qword ptr [r9 + 328], rdx;           jmp   n415_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n415_statement_end_α:   mov              r11, 324
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n416_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n416_statement_begin_α: mov              r11, 325
                        mov              r10, 37;                             jmp   n417_lit_integer_α
n416_statement_begin_β: mov              r11, 325;                            jmp   n420_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:     sub              rsp, 16
                        mov              r11, 326
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n418_keyword_assign_snobol4_α
.Lx887_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n418_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 327
                        mov              rdi, qword ptr [rip + .Lx888_0]
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
                        cmp              al, 104;                             jne   .Lx888_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n416_statement_begin_β
.Lx888_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_statement_end_α
.Lx888_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n419_statement_end_α:   mov              r11, 328
                        mov              r10, 37
                        add              rsp, 32;                             jmp   n420_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_begin_α: mov              r11, 329
                        mov              r10, 38;                             jmp   n421_call_α
n420_statement_begin_β: mov              r11, 329;                            jmp   n424_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            sub              rsp, 16
                        mov              r11, 330
                        .section         .rodata
.Lrkfnzd894:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd894]
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
                        cmp              al, 104;                             jne   .Lx893_240
                        add              rsp, 16;                             jmp   n420_statement_begin_β
.Lx893_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_assign_α
n421_call_β:            mov              r11, 330
                        add              rsp, 16;                             jmp   n420_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n422_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # vars
                        mov              qword ptr [r9 + 200], rdx;           jmp   n423_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n423_statement_end_α:   mov              r11, 332
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n424_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_begin_α: mov              r11, 333
                        mov              r10, 39;                             jmp   n425_var_α
n424_statement_begin_β: mov              r11, 333;                            jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             sub              rsp, 16
                        mov              r11, 334
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      sub              rsp, 16
                        mov              r11, 335
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n427_subscript_α
n426_lit_string_β:      mov              r11, 335
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n424_statement_begin_β
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n427_subscript_α:       sub              rsp, 16
                        mov              r11, 336
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx902_240
                        add              rsp, 16;                             jmp   n426_lit_string_β
.Lx902_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_lit_integer_α
n427_subscript_β:       mov              r11, 336
                        add              rsp, 16;                             jmp   n426_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     sub              rsp, 16
                        mov              r11, 337
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_assign_var_α
n428_lit_integer_β:     mov              r11, 337
                        add              rsp, 16;                             jmp   n427_subscript_β
.Lx903_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_var_α:      sub              rsp, 16
                        mov              r11, 338
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx904_240
                        add              rsp, 16;                             jmp   n428_lit_integer_β
.Lx904_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:   mov              r11, 339
                        mov              r10, 39
                        add              rsp, 80;                             jmp   n431_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α: mov              r11, 340
                        mov              r10, 40;                             jmp   n432_var_α
n431_statement_begin_β: mov              r11, 340;                            jmp   n438_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_α:             sub              rsp, 16
                        mov              r11, 341
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      sub              rsp, 16
                        mov              r11, 342
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n434_subscript_α
n433_lit_string_β:      mov              r11, 342
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n431_statement_begin_β
.Lx910_0:               .quad            .Lx910_0_s
.Lx910_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n434_subscript_α:       sub              rsp, 16
                        mov              r11, 343
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx911_240
                        add              rsp, 16;                             jmp   n433_lit_string_β
.Lx911_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_lit_integer_α
n434_subscript_β:       mov              r11, 343
                        add              rsp, 16;                             jmp   n433_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n436_assign_var_α
n435_lit_integer_β:     mov              r11, 344
                        add              rsp, 16;                             jmp   n434_subscript_β
.Lx912_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_var_α:      sub              rsp, 16
                        mov              r11, 345
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx913_240
                        add              rsp, 16;                             jmp   n435_lit_integer_β
.Lx913_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_end_α:   mov              r11, 346
                        mov              r10, 40
                        add              rsp, 80;                             jmp   n438_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_begin_α: mov              r11, 347
                        mov              r10, 41;                             jmp   n439_var_α
n438_statement_begin_β: mov              r11, 347;                            jmp   n445_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_α:             sub              rsp, 16
                        mov              r11, 348
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:      sub              rsp, 16
                        mov              r11, 349
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n441_subscript_α
n440_lit_string_β:      mov              r11, 349
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n438_statement_begin_β
.Lx919_0:               .quad            .Lx919_0_s
.Lx919_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n441_subscript_α:       sub              rsp, 16
                        mov              r11, 350
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx920_240
                        add              rsp, 16;                             jmp   n440_lit_string_β
.Lx920_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_lit_integer_α
n441_subscript_β:       mov              r11, 350
                        add              rsp, 16;                             jmp   n440_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:     sub              rsp, 16
                        mov              r11, 351
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n443_assign_var_α
n442_lit_integer_β:     mov              r11, 351
                        add              rsp, 16;                             jmp   n441_subscript_β
.Lx921_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_var_α:      sub              rsp, 16
                        mov              r11, 352
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx922_240
                        add              rsp, 16;                             jmp   n442_lit_integer_β
.Lx922_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:   mov              r11, 353
                        mov              r10, 41
                        add              rsp, 80;                             jmp   n445_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_begin_α: mov              r11, 354
                        mov              r10, 42;                             jmp   n446_lit_string_α
n445_statement_begin_β: mov              r11, 354;                            jmp   n452_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      sub              rsp, 16
                        mov              r11, 355
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n447_call_α
.Lx927_0:               .quad            .Lx927_0_s
.Lx927_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n447_call_α:            sub              rsp, 16
                        mov              r11, 356
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd929:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd929]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx928_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n445_statement_begin_β
.Lx928_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_lit_integer_α
n447_call_β:            mov              r11, 356
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n445_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     sub              rsp, 16
                        mov              r11, 357
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n449_lit_string_α
n448_lit_integer_β:     mov              r11, 357
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n445_statement_begin_β
.Lx930_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      sub              rsp, 16
                        mov              r11, 358
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n450_call_α
n449_lit_string_β:      mov              r11, 358
                        add              rsp, 16;                             jmp   n448_lit_integer_β
.Lx931_0:               .quad            .Lx931_0_s
.Lx931_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            sub              rsp, 16
                        mov              r11, 359
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
.Lbynamefnzd359:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd359]
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
                        cmp              al, 104;                             jne   .Lx932_240
                        add              rsp, 16;                             jmp   n449_lit_string_β
.Lx932_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_statement_end_α
n450_call_β:            mov              r11, 359
                        add              rsp, 16;                             jmp   n449_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n451_statement_end_α:   mov              r11, 360
                        mov              r10, 42
                        add              rsp, 80;                             jmp   n452_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n452_statement_begin_α: mov              r11, 361
                        mov              r10, 43;                             jmp   n453_var_α
n452_statement_begin_β: mov              r11, 361;                            jmp   n456_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             sub              rsp, 16
                        mov              r11, 362
                        mov              rdi, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx937_240
                        add              rsp, 16;                             jmp   n452_statement_begin_β
.Lx937_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_assign_α
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n454_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # src
                        mov              qword ptr [r9 + 344], rdx;           jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_end_α:   mov              r11, 364
                        mov              r10, 43
                        add              rsp, 16;                             jmp   n456_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_begin_α: mov              r11, 365
                        mov              r10, 44;                             jmp   n457_call_α
n456_statement_begin_β: mov              r11, 365;                            jmp   n460_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_α:            sub              rsp, 16
                        mov              r11, 366
                        .section         .rodata
.Lrkfnzd944:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd944]
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
                        cmp              al, 104;                             jne   .Lx943_240
                        add              rsp, 16;                             jmp   n456_statement_begin_β
.Lx943_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_assign_α
n457_call_β:            mov              r11, 366
                        add              rsp, 16;                             jmp   n456_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # t0
                        mov              qword ptr [r9 + 360], rdx;           jmp   n459_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n459_statement_end_α:   mov              r11, 368
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n460_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n460_statement_begin_α: mov              r11, 369
                        mov              r10, 45;                             jmp   n461_var_α
n460_statement_begin_β: mov              r11, 369;                            jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_α:             sub              rsp, 16
                        mov              r11, 370
                        mov              rax, qword ptr [r9 + 336]            # src
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             sub              rsp, 16
                        mov              r11, 371
                        mov              rax, qword ptr [r9 + 320]            # C
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_assign_α
n462_var_β:             mov              r11, 371
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n463_assign_α:          mov              r11, 372
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_match_begin_α
n463_assign_β:          mov              r11, 372;                            jmp   n462_var_β
.Lx952_0:               .quad            .Lx952_0_s
.Lx952_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n464_match_begin_α:     mov              r11, 373
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
.Lx954_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx954_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n465_match_defer_α
n464_match_begin_β:     mov              r11, 373
.Lx954_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx954_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx954_1
                                                                              jmp   .Lx954_0
.Lx954_1:
n464_match_begin_af:    mov              r11, 373
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
                        pop              rbp;                                 jmp   n463_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n465_match_defer_α:     mov              r11, 374
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lx955_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx955_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx955_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx955_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx955_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx955_0
.Lx955_31:              mov              edx, -1;                             jmp   .Lx955_0
.Lx955_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx955_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx955_5]
                        push             rcx
                        lea              rcx, [rip + .Lx955_4]
                        push             rcx;                                 jmp   rax
.Lx955_4:                                                                     jmp   n466_match_end_α
.Lx955_5:                                                                     jmp   n464_match_begin_β
.Lx955_0:               mov              eax, edx
                        test             eax, eax;                            js    n464_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx955_6]
                        push             rcx
                        push             rax;                                 jmp   n466_match_end_α
.Lx955_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n464_match_begin_β
n465_match_defer_β:     mov              r11, 374
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx955_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx955_12
                                                                              jmp   rax
.Lx955_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n466_match_end_α:       mov              r11, 375
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
                        test             rax, rax;                            je    .Lx957_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n464_match_begin_af
.Lx957_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n467_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:   mov              r11, 376
                        mov              r10, 45
                        add              rsp, 32;                             jmp   n468_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α: mov              r11, 377
                        mov              r10, 46;                             jmp   n469_call_α
n468_statement_begin_β: mov              r11, 377;                            jmp   n472_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            sub              rsp, 16
                        mov              r11, 378
                        .section         .rodata
.Lrkfnzd963:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd963]
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
                        cmp              al, 104;                             jne   .Lx962_240
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lx962_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_assign_α
n469_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n468_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx;           jmp   n471_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:   mov              r11, 380
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n472_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α: mov              r11, 381
                        mov              r10, 47;                             jmp   n473_lit_string_α
n472_statement_begin_β: mov              r11, 381;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:      sub              rsp, 16
                        mov              r11, 382
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n474_var_α
.Lx969_0:               .quad            .Lx969_0_s
.Lx969_0_s:             .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n475_var_α
n474_var_β:             mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n472_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             sub              rsp, 16
                        mov              r11, 384
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n476_binop_α
n475_var_β:             mov              r11, 384
                        add              rsp, 16;                             jmp   n474_var_β
#-----------------------------------------------------------------------------------------------------------------------
n476_binop_α:           sub              rsp, 16
                        mov              r11, 385
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx972_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx972_7
.Lx972_2:               and              edx, 1;                              jz    .Lx972_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx972_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx972_4
.Lx972_3:               movq             xmm0, rsi
.Lx972_4:               cmp              cl, 5;                               je    .Lx972_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx972_6
.Lx972_5:               movq             xmm1, rdi
.Lx972_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx972_7:                                                                     jmp   n477_lit_integer_α
.Lx972_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx972_240
                        add              rsp, 16;                             jmp   n475_var_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n477_lit_integer_α
n476_binop_β:           mov              r11, 385
                        add              rsp, 16;                             jmp   n475_var_β
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:     sub              rsp, 16
                        mov              r11, 386
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n478_binop_α
n477_lit_integer_β:     mov              r11, 386
                        add              rsp, 16;                             jmp   n476_binop_β
.Lx973_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n478_binop_α:           sub              rsp, 16
                        mov              r11, 387
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx974_240
                        add              rsp, 16;                             jmp   n477_lit_integer_β
.Lx974_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_binop_α
n478_binop_β:           mov              r11, 387
                        add              rsp, 16;                             jmp   n477_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n479_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n480_assign_α:          mov              r11, 389
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n481_statement_end_α
.Lx976_0:               .quad            .Lx976_0_s
.Lx976_0_s:             .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_end_α:   mov              r11, 390
                        mov              r10, 47
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α: mov              r11, 391
                        mov              r10, 48;                             jmp   n483_call_α
n482_statement_begin_β: mov              r11, 391;                            jmp   n486_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:            sub              rsp, 16
                        mov              r11, 392
                        .section         .rodata
.Lrkfnzd982:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd982]
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
                        cmp              al, 104;                             jne   .Lx981_240
                        add              rsp, 16;                             jmp   n482_statement_begin_β
.Lx981_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n484_assign_α
n483_call_β:            mov              r11, 392
                        add              rsp, 16;                             jmp   n482_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n484_assign_α:          mov              r11, 393
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx;           jmp   n485_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_end_α:   mov              r11, 394
                        mov              r10, 48
                        add              rsp, 16;                             jmp   n486_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_begin_α: mov              r11, 395
                        mov              r10, 49;                             jmp   n487_lit_string_α
n486_statement_begin_β: mov              r11, 395;                            jmp   n490_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      sub              rsp, 16
                        mov              r11, 396
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n488_assign_α
.Lx988_0:               .quad            .Lx988_0_s
.Lx988_0_s:             .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n488_assign_α:          mov              r11, 397
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx989_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n489_statement_end_α
.Lx989_0:               .quad            .Lx989_0_s
.Lx989_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_end_α:   mov              r11, 398
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n490_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_begin_α: mov              r11, 399
                        mov              r10, 50;                             jmp   n491_lit_string_α
n490_statement_begin_β: mov              r11, 399;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      sub              rsp, 16
                        mov              r11, 400
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n492_var_α
.Lx994_0:               .quad            .Lx994_0_s
.Lx994_0_s:             .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:             sub              rsp, 16
                        mov              r11, 401
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n493_var_α
n492_var_β:             mov              r11, 401
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n490_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n493_var_α:             sub              rsp, 16
                        mov              r11, 402
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n494_binop_α
n493_var_β:             mov              r11, 402
                        add              rsp, 16;                             jmp   n492_var_β
#-----------------------------------------------------------------------------------------------------------------------
n494_binop_α:           sub              rsp, 16
                        mov              r11, 403
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx997_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx997_7
.Lx997_2:               and              edx, 1;                              jz    .Lx997_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx997_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx997_4
.Lx997_3:               movq             xmm0, rsi
.Lx997_4:               cmp              cl, 5;                               je    .Lx997_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx997_6
.Lx997_5:               movq             xmm1, rdi
.Lx997_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx997_7:                                                                     jmp   n495_lit_integer_α
.Lx997_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx997_240
                        add              rsp, 16;                             jmp   n493_var_β
.Lx997_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n495_lit_integer_α
n494_binop_β:           mov              r11, 403
                        add              rsp, 16;                             jmp   n493_var_β
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     sub              rsp, 16
                        mov              r11, 404
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_binop_α
n495_lit_integer_β:     mov              r11, 404
                        add              rsp, 16;                             jmp   n494_binop_β
.Lx998_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_α:           sub              rsp, 16
                        mov              r11, 405
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx999_240
                        add              rsp, 16;                             jmp   n495_lit_integer_β
.Lx999_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_binop_α
n496_binop_β:           mov              r11, 405
                        add              rsp, 16;                             jmp   n495_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n497_binop_α:           sub              rsp, 16
                        mov              r11, 406
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n498_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_α:          mov              r11, 407
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n499_statement_end_α
.Lx1001_0:              .quad            .Lx1001_0_s
.Lx1001_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n499_statement_end_α:   mov              r11, 408
                        mov              r10, 50
                        add              rsp, 112;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 409
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 410
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 411
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 1;              jmp   RETURN
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
