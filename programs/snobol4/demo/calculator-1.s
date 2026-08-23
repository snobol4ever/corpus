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
                        mov              dword ptr [rbp + -44], r14d;         jmp   n135_match_rpos_α
n134_match_arbno_β:     mov              r11, 53;                             jmp   n136_match_defer_α
n134_match_arbno_as:    mov              r11, 53
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n136_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n135_match_rpos_α
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
#         DEFINE('EMIT()')                        :(EMIT_end)
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 59
                        mov              r10, 1;                              jmp   n151_define_α
n150_statement_begin_β: mov              r11, 59;                             jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx518_0]
                        mov              rsi, qword ptr [rip + .Lx518_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n153_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx518_0]
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
.Lx518_0:               .quad            .Lx518_0_s
.Lx518_0_s:             .string          "EMIT"
.Lx518_1:               .quad            .Lx518_1_s
.Lx518_1_s:             .string          ""
                                                                              jmp   .Lx519_245
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
                        lea              rax, [rip + n153_statement_begin_α]; jmp   rax
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
.Lx519_245:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 61
                        mov              r10, 1;                              jmp   n170_statement_begin_α
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 62
                        mov              r10, 2;                              jmp   n154_var_α
n153_statement_begin_β: mov              r11, 62;                             jmp   n161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_subscript_α
n155_lit_integer_β:     mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Lx525_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_subscript_α:       sub              rsp, 16
                        mov              r11, 65
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
                        cmp              al, 104;                             jne   .Lx526_240
                        add              rsp, 16;                             jmp   n155_lit_integer_β
.Lx526_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_deref_α
n156_subscript_β:       mov              r11, 65
                        add              rsp, 16;                             jmp   n155_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n157_deref_α:           sub              rsp, 16
                        mov              r11, 66
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
                        cmp              al, 104;                             jne   .Lx527_240
                        add              rsp, 16;                             jmp   n156_subscript_β
.Lx527_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_call_α
n157_deref_β:           mov              r11, 66
                        add              rsp, 16;                             jmp   n156_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 67
                        lea              rcx, [rip + .Lsig529z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig529z:              .quad            1
                        .quad            .Lx529_2
                        .quad            .Lx529_2
                        .quad            16
.Lx529_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx529_29
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
.Lx529_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx529_240
                        add              rsp, 16;                             jmp   n157_deref_β
.Lx529_240:                                                                   jmp   n159_assign_α
n158_call_β:            mov              r11, 67;                             jmp   n157_deref_β
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:          mov              r11, 68
                        mov              rsi, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n160_statement_end_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   mov              r11, 69
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n161_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α: mov              r11, 70
                        mov              r10, 3;                              jmp   n162_lit_integer_α
n161_statement_begin_β: mov              r11, 70;                             jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_assign_α
.Lx535_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n164_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   mov              r11, 73
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 74
                        mov              r10, 4;                              jmp   n166_lit_string_α
n165_statement_begin_β: mov              r11, 74;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            sub              rsp, 16
                        mov              r11, 76
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd543:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd543]
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
                        cmp              al, 104;                             jne   .Lx542_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
.Lx542_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_assign_α
n167_call_β:            mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # EMIT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n169_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 78
                        mov              r10, 4
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# EMIT_end  <stmt 5, line 6: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 79
                        mov              r10, 5;                              jmp   n171_statement_end_α
n170_statement_begin_β: mov              r11, 79;                             jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 80
                        mov              r10, 5;                              jmp   n172_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_end)
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 81
                        mov              r10, 6;                              jmp   n173_define_α
n172_statement_begin_β: mov              r11, 81;                             jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_define_α:          mov              r11, 82
                        mov              rdi, qword ptr [rip + .Lx554_0]
                        mov              rsi, qword ptr [rip + .Lx554_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n175_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx554_0]
                        lea              rsi, [rip + PSH_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_statement_end_α
n173_define_β:          mov              r11, 82;                             jmp   n172_statement_begin_β
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          "PSH"
.Lx554_1:               .quad            .Lx554_1_s
.Lx554_1_s:             .string          ""
                                                                              jmp   .Lx555_245
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
                        lea              rax, [rip + n175_statement_begin_α]; jmp   rax
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
.Lx555_245:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 83
                        mov              r10, 6;                              jmp   n184_statement_begin_α
#=======================================================================================================================
# PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 84
                        mov              r10, 7;                              jmp   n176_var_α
n175_statement_begin_β: mov              r11, 84;                             jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_var_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_lit_integer_α
n177_var_β:             mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_binop_α
n178_lit_integer_β:     mov              r11, 87
                        add              rsp, 16;                             jmp   n177_var_β
.Lx562_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           sub              rsp, 16
                        mov              r11, 88
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx563_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx563_7
.Lx563_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx563_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx563_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx563_4
.Lx563_3:               movq             xmm0, rsi
.Lx563_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx563_7:                                                                     jmp   n180_assign_α
.Lx563_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx563_240
                        add              rsp, 16;                             jmp   n178_lit_integer_β
.Lx563_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_assign_α
n179_binop_β:           mov              r11, 88
                        add              rsp, 16;                             jmp   n178_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n181_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n181_subscript_α:       sub              rsp, 16
                        mov              r11, 90
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
                        cmp              al, 104;                             jne   .Lx565_240
                        add              rsp, 16;                             jmp   n179_binop_β
.Lx565_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 91
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # PSH
                        mov              qword ptr [r9 + 24], rdx;            jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 92
                        mov              r10, 7
                        add              rsp, 80;                             jmp   NRETURN
#=======================================================================================================================
# PSH_end  <stmt 8, line 10: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 93
                        mov              r10, 8;                              jmp   n185_statement_end_α
n184_statement_begin_β: mov              r11, 93;                             jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 94
                        mov              r10, 8;                              jmp   n186_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_end)
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 95
                        mov              r10, 9;                              jmp   n187_define_α
n186_statement_begin_β: mov              r11, 95;                             jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n187_define_α:          mov              r11, 96
                        mov              rdi, qword ptr [rip + .Lx576_0]
                        mov              rsi, qword ptr [rip + .Lx576_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n189_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx576_0]
                        lea              rsi, [rip + DRF_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n188_statement_end_α
n187_define_β:          mov              r11, 96;                             jmp   n186_statement_begin_β
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "DRF"
.Lx576_1:               .quad            .Lx576_1_s
.Lx576_1_s:             .string          "nm"
                                                                              jmp   .Lx577_245
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
                        cmp              rdx, 0;                              jbe   .Lx577_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 48]             # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx577_41
.Lx577_10:              mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx577_41:              lea              rcx, [rip + DRF_γ]
                        lea              rax, [rip + DRF_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n189_statement_begin_α]; jmp   rax
DRF_γ:                  mov              rdi, qword ptr [r9 + 32]             # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Lx577_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx577_110
.Lx577_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx577_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx577_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 48], rax             # nm
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 56], rax;            jmp   .Lx577_180
.Lx577_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 56], rax
.Lx577_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx577_245:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 97
                        mov              r10, 9;                              jmp   n208_statement_begin_α
#=======================================================================================================================
# DRF     DRF = nm
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 98
                        mov              r10, 10;                             jmp   n190_var_α
n189_statement_begin_β: mov              r11, 98;                             jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n192_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 101
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n193_statement_begin_α
#=======================================================================================================================
#         nm ? POS(0) ANY(&LCASE) RPOS(0)         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 102
                        mov              r10, 11;                             jmp   n194_var_α
n193_statement_begin_β: mov              r11, 102;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_match_begin_α:     mov              r11, 104
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
.Lx590_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx590_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n196_match_pos_α
n195_match_begin_β:     mov              r11, 104
.Lx590_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx590_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx590_1
                                                                              jmp   .Lx590_0
.Lx590_1:
n195_match_begin_af:    mov              r11, 104
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
n196_match_pos_α:       mov              r11, 105
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n195_match_begin_β
                                                                              jmp   n197_match_any_α
n196_match_pos_β:       mov              r11, 105;                            jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n197_match_any_α:       mov              r11, 106
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n195_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n195_match_begin_β
                        add              r14d, 1;                             jmp   n198_match_rpos_α
n197_match_any_β:       mov              r11, 106
                        sub              r14d, 1;                             jmp   n195_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n198_match_rpos_α:      mov              r11, 107
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n197_match_any_β
                                                                              jmp   n199_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n199_match_end_α:       mov              r11, 108
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
                        test             rax, rax;                            je    .Lx596_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n195_match_begin_af
.Lx596_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   mov              r11, 109
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 110
                        mov              r10, 12;                             jmp   n202_var_α
n201_statement_begin_β: mov              r11, 110;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 48]             # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_subscript_α
n203_var_β:             mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_subscript_α:       sub              rsp, 16
                        mov              r11, 113
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
                        cmp              al, 104;                             jne   .Lx603_240
                        add              rsp, 16;                             jmp   n203_var_β
.Lx603_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_deref_α
n204_subscript_β:       mov              r11, 113
                        add              rsp, 16;                             jmp   n203_var_β
#-----------------------------------------------------------------------------------------------------------------------
n205_deref_α:           sub              rsp, 16
                        mov              r11, 114
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
                        cmp              al, 104;                             jne   .Lx604_240
                        add              rsp, 16;                             jmp   n204_subscript_β
.Lx604_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # DRF
                        mov              qword ptr [r9 + 40], rdx;            jmp   n207_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 116
                        mov              r10, 12
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# DRF_end  <stmt 13, line 15: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 117
                        mov              r10, 13;                             jmp   n209_statement_end_α
n208_statement_begin_β: mov              r11, 117;                            jmp   n210_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 118
                        mov              r10, 13;                             jmp   n210_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()')                         :(ADD_end)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α: mov              r11, 119
                        mov              r10, 14;                             jmp   n211_define_α
n210_statement_begin_β: mov              r11, 119;                            jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_define_α:          mov              r11, 120
                        mov              rdi, qword ptr [rip + .Lx615_0]
                        mov              rsi, qword ptr [rip + .Lx615_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n213_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx615_0]
                        lea              rsi, [rip + ADD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_statement_end_α
n211_define_β:          mov              r11, 120;                            jmp   n210_statement_begin_β
.Lx615_0:               .quad            .Lx615_0_s
.Lx615_0_s:             .string          "ADD"
.Lx615_1:               .quad            .Lx615_1_s
.Lx615_1_s:             .string          ""
                                                                              jmp   .Lx616_245
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
                        lea              rax, [rip + n213_statement_begin_α]; jmp   rax
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
.Lx616_245:
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 121
                        mov              r10, 14;                             jmp   n240_statement_begin_α
#=======================================================================================================================
# ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 122
                        mov              r10, 15;                             jmp   n214_var_α
n213_statement_begin_β: mov              r11, 122;                            jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_var_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_lit_integer_α
n215_var_β:             mov              r11, 124
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_binop_α
n216_lit_integer_β:     mov              r11, 125
                        add              rsp, 16;                             jmp   n215_var_β
.Lx623_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx624_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx624_7
.Lx624_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx624_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx624_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx624_4
.Lx624_3:               movq             xmm0, rsi
.Lx624_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx624_7:                                                                     jmp   n218_assign_α
.Lx624_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx624_240
                        add              rsp, 16;                             jmp   n216_lit_integer_β
.Lx624_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_assign_α
n217_binop_β:           mov              r11, 126
                        add              rsp, 16;                             jmp   n216_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 127
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n219_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n219_subscript_α:       sub              rsp, 16
                        mov              r11, 128
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
                        cmp              al, 104;                             jne   .Lx626_240
                        add              rsp, 16;                             jmp   n217_binop_β
.Lx626_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_var_α
n219_subscript_β:       mov              r11, 128
                        add              rsp, 16;                             jmp   n217_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_var_α
n220_var_β:             mov              r11, 129
                        add              rsp, 16;                             jmp   n219_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 130
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_subscript_α
n221_var_β:             mov              r11, 130
                        add              rsp, 16;                             jmp   n220_var_β
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
                        mov              r11, 131
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
                        cmp              al, 104;                             jne   .Lx629_240
                        add              rsp, 16;                             jmp   n221_var_β
.Lx629_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_deref_α
n222_subscript_β:       mov              r11, 131
                        add              rsp, 16;                             jmp   n221_var_β
#-----------------------------------------------------------------------------------------------------------------------
n223_deref_α:           sub              rsp, 16
                        mov              r11, 132
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
                        cmp              al, 104;                             jne   .Lx630_240
                        add              rsp, 16;                             jmp   n222_subscript_β
.Lx630_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_call_α
n223_deref_β:           mov              r11, 132
                        add              rsp, 16;                             jmp   n222_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            sub              rsp, 16
                        mov              r11, 133
                        lea              rcx, [rip + .Lsig632z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig632z:              .quad            1
                        .quad            .Lx632_2
                        .quad            .Lx632_2
                        .quad            16
.Lx632_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx632_29
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
.Lx632_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx632_240
                        add              rsp, 16;                             jmp   n223_deref_β
.Lx632_240:                                                                   jmp   n225_var_α
n224_call_β:            mov              r11, 133;                            jmp   n223_deref_β
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
n225_var_β:             mov              r11, 134
                        add              rsp, 32;                             jmp   n223_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_integer_α
n226_var_β:             mov              r11, 135
                        add              rsp, 16;                             jmp   n225_var_β
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_binop_α
n227_lit_integer_β:     mov              r11, 136
                        add              rsp, 16;                             jmp   n226_var_β
.Lx635_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx636_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx636_7
.Lx636_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx636_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx636_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx636_4
.Lx636_3:               movq             xmm0, rsi
.Lx636_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx636_7:                                                                     jmp   n229_subscript_α
.Lx636_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx636_240
                        add              rsp, 16;                             jmp   n227_lit_integer_β
.Lx636_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_subscript_α
n228_binop_β:           mov              r11, 137
                        add              rsp, 16;                             jmp   n227_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n229_subscript_α:       sub              rsp, 16
                        mov              r11, 138
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
                        cmp              al, 104;                             jne   .Lx637_240
                        add              rsp, 16;                             jmp   n228_binop_β
.Lx637_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_deref_α
n229_subscript_β:       mov              r11, 138
                        add              rsp, 16;                             jmp   n228_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n230_deref_α:           sub              rsp, 16
                        mov              r11, 139
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
                        add              rsp, 16;                             jmp   n229_subscript_β
.Lx638_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_call_α
n230_deref_β:           mov              r11, 139
                        add              rsp, 16;                             jmp   n229_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
                        mov              r11, 140
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
                        add              rsp, 16;                             jmp   n230_deref_β
.Lx640_240:                                                                   jmp   n232_binop_α
n231_call_β:            mov              r11, 140;                            jmp   n230_deref_β
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx641_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx641_7
.Lx641_2:               and              edx, 1;                              jz    .Lx641_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx641_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx641_4
.Lx641_3:               movq             xmm0, rsi
.Lx641_4:               cmp              cl, 5;                               je    .Lx641_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx641_6
.Lx641_5:               movq             xmm1, rdi
.Lx641_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx641_7:                                                                     jmp   n233_assign_var_α
.Lx641_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx641_240
                        add              rsp, 32;                             jmp   n230_deref_β
.Lx641_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_assign_var_α
n232_binop_β:           mov              r11, 141
                        add              rsp, 32;                             jmp   n230_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_var_α:      sub              rsp, 16
                        mov              r11, 142
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
                        cmp              al, 104;                             jne   .Lx642_240
                        add              rsp, 16;                             jmp   n232_binop_β
.Lx642_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 143
                        mov              r10, 15
                        add              rsp, 304;                            jmp   n235_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 144
                        mov              r10, 16;                             jmp   n236_lit_string_α
n235_statement_begin_β: mov              r11, 144;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      sub              rsp, 16
                        mov              r11, 145
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_call_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        mov              r11, 146
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd649:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd649]
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
                        cmp              al, 104;                             jne   .Lx648_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
.Lx648_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_assign_α
n237_call_β:            mov              r11, 146
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ADD
                        mov              qword ptr [r9 + 72], rdx;            jmp   n239_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   mov              r11, 148
                        mov              r10, 16
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# ADD_end  <stmt 17, line 19: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α: mov              r11, 149
                        mov              r10, 17;                             jmp   n241_statement_end_α
n240_statement_begin_β: mov              r11, 149;                            jmp   n242_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   mov              r11, 150
                        mov              r10, 17;                             jmp   n242_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()')                         :(SUB_end)
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α: mov              r11, 151
                        mov              r10, 18;                             jmp   n243_define_α
n242_statement_begin_β: mov              r11, 151;                            jmp   n272_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n243_define_α:          mov              r11, 152
                        mov              rdi, qword ptr [rip + .Lx660_0]
                        mov              rsi, qword ptr [rip + .Lx660_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n245_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx660_0]
                        lea              rsi, [rip + SUB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_statement_end_α
n243_define_β:          mov              r11, 152;                            jmp   n242_statement_begin_β
.Lx660_0:               .quad            .Lx660_0_s
.Lx660_0_s:             .string          "SUB"
.Lx660_1:               .quad            .Lx660_1_s
.Lx660_1_s:             .string          ""
                                                                              jmp   .Lx661_245
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
                        lea              rax, [rip + n245_statement_begin_α]; jmp   rax
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
.Lx661_245:
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 153
                        mov              r10, 18;                             jmp   n272_statement_begin_α
#=======================================================================================================================
# SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_begin_α: mov              r11, 154
                        mov              r10, 19;                             jmp   n246_var_α
n245_statement_begin_β: mov              r11, 154;                            jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_lit_integer_α
n247_var_β:             mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n245_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_binop_α
n248_lit_integer_β:     mov              r11, 157
                        add              rsp, 16;                             jmp   n247_var_β
.Lx668_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
                        mov              r11, 158
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx669_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx669_7
.Lx669_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx669_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx669_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx669_4
.Lx669_3:               movq             xmm0, rsi
.Lx669_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx669_7:                                                                     jmp   n250_assign_α
.Lx669_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx669_240
                        add              rsp, 16;                             jmp   n248_lit_integer_β
.Lx669_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n250_assign_α
n249_binop_β:           mov              r11, 158
                        add              rsp, 16;                             jmp   n248_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              r11, 159
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n251_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n251_subscript_α:       sub              rsp, 16
                        mov              r11, 160
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
                        cmp              al, 104;                             jne   .Lx671_240
                        add              rsp, 16;                             jmp   n249_binop_β
.Lx671_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
n251_subscript_β:       mov              r11, 160
                        add              rsp, 16;                             jmp   n249_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_var_α
n252_var_β:             mov              r11, 161
                        add              rsp, 16;                             jmp   n251_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_subscript_α
n253_var_β:             mov              r11, 162
                        add              rsp, 16;                             jmp   n252_var_β
#-----------------------------------------------------------------------------------------------------------------------
n254_subscript_α:       sub              rsp, 16
                        mov              r11, 163
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
                        cmp              al, 104;                             jne   .Lx674_240
                        add              rsp, 16;                             jmp   n253_var_β
.Lx674_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_deref_α
n254_subscript_β:       mov              r11, 163
                        add              rsp, 16;                             jmp   n253_var_β
#-----------------------------------------------------------------------------------------------------------------------
n255_deref_α:           sub              rsp, 16
                        mov              r11, 164
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
                        cmp              al, 104;                             jne   .Lx675_240
                        add              rsp, 16;                             jmp   n254_subscript_β
.Lx675_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_call_α
n255_deref_β:           mov              r11, 164
                        add              rsp, 16;                             jmp   n254_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            sub              rsp, 16
                        mov              r11, 165
                        lea              rcx, [rip + .Lsig677z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig677z:              .quad            1
                        .quad            .Lx677_2
                        .quad            .Lx677_2
                        .quad            16
.Lx677_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx677_29
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
.Lx677_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx677_240
                        add              rsp, 16;                             jmp   n255_deref_β
.Lx677_240:                                                                   jmp   n257_var_α
n256_call_β:            mov              r11, 165;                            jmp   n255_deref_β
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_var_α
n257_var_β:             mov              r11, 166
                        add              rsp, 32;                             jmp   n255_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_lit_integer_α
n258_var_β:             mov              r11, 167
                        add              rsp, 16;                             jmp   n257_var_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:     sub              rsp, 16
                        mov              r11, 168
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_binop_α
n259_lit_integer_β:     mov              r11, 168
                        add              rsp, 16;                             jmp   n258_var_β
.Lx680_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx681_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx681_7
.Lx681_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx681_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx681_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx681_4
.Lx681_3:               movq             xmm0, rsi
.Lx681_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx681_7:                                                                     jmp   n261_subscript_α
.Lx681_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx681_240
                        add              rsp, 16;                             jmp   n259_lit_integer_β
.Lx681_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_subscript_α
n260_binop_β:           mov              r11, 169
                        add              rsp, 16;                             jmp   n259_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n261_subscript_α:       sub              rsp, 16
                        mov              r11, 170
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
                        cmp              al, 104;                             jne   .Lx682_240
                        add              rsp, 16;                             jmp   n260_binop_β
.Lx682_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_deref_α
n261_subscript_β:       mov              r11, 170
                        add              rsp, 16;                             jmp   n260_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n262_deref_α:           sub              rsp, 16
                        mov              r11, 171
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
                        cmp              al, 104;                             jne   .Lx683_240
                        add              rsp, 16;                             jmp   n261_subscript_β
.Lx683_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_call_α
n262_deref_β:           mov              r11, 171
                        add              rsp, 16;                             jmp   n261_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        mov              r11, 172
                        lea              rcx, [rip + .Lsig685z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig685z:              .quad            1
                        .quad            .Lx685_2
                        .quad            .Lx685_2
                        .quad            16
.Lx685_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx685_29
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
.Lx685_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx685_240
                        add              rsp, 16;                             jmp   n262_deref_β
.Lx685_240:                                                                   jmp   n264_binop_α
n263_call_β:            mov              r11, 172;                            jmp   n262_deref_β
.Lx685_0:               .quad            .Lx685_0_s
.Lx685_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 173
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx686_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx686_7
.Lx686_2:               and              edx, 1;                              jz    .Lx686_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx686_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx686_4
.Lx686_3:               movq             xmm0, rsi
.Lx686_4:               cmp              cl, 5;                               je    .Lx686_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx686_6
.Lx686_5:               movq             xmm1, rdi
.Lx686_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx686_7:                                                                     jmp   n265_assign_var_α
.Lx686_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx686_240
                        add              rsp, 32;                             jmp   n262_deref_β
.Lx686_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_assign_var_α
n264_binop_β:           mov              r11, 173
                        add              rsp, 32;                             jmp   n262_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_var_α:      sub              rsp, 16
                        mov              r11, 174
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
                        cmp              al, 104;                             jne   .Lx687_240
                        add              rsp, 16;                             jmp   n264_binop_β
.Lx687_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   mov              r11, 175
                        mov              r10, 19
                        add              rsp, 304;                            jmp   n267_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α: mov              r11, 176
                        mov              r10, 20;                             jmp   n268_lit_string_α
n267_statement_begin_β: mov              r11, 176;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_call_α
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            sub              rsp, 16
                        mov              r11, 178
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd694:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd694]
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
                        cmp              al, 104;                             jne   .Lx693_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n267_statement_begin_β
.Lx693_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_assign_α
n269_call_β:            mov              r11, 178
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n267_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              r11, 179
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # SUB
                        mov              qword ptr [r9 + 88], rdx;            jmp   n271_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   mov              r11, 180
                        mov              r10, 20
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# SUB_end  <stmt 21, line 23: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α: mov              r11, 181
                        mov              r10, 21;                             jmp   n273_statement_end_α
n272_statement_begin_β: mov              r11, 181;                            jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   mov              r11, 182
                        mov              r10, 21;                             jmp   n274_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()')                         :(MUL_end)
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α: mov              r11, 183
                        mov              r10, 22;                             jmp   n275_define_α
n274_statement_begin_β: mov              r11, 183;                            jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n275_define_α:          mov              r11, 184
                        mov              rdi, qword ptr [rip + .Lx705_0]
                        mov              rsi, qword ptr [rip + .Lx705_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n277_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx705_0]
                        lea              rsi, [rip + MUL_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n276_statement_end_α
n275_define_β:          mov              r11, 184;                            jmp   n274_statement_begin_β
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "MUL"
.Lx705_1:               .quad            .Lx705_1_s
.Lx705_1_s:             .string          ""
                                                                              jmp   .Lx706_245
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
                        lea              rax, [rip + n277_statement_begin_α]; jmp   rax
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
.Lx706_245:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   mov              r11, 185
                        mov              r10, 22;                             jmp   n304_statement_begin_α
#=======================================================================================================================
# MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α: mov              r11, 186
                        mov              r10, 23;                             jmp   n278_var_α
n277_statement_begin_β: mov              r11, 186;                            jmp   n299_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_lit_integer_α
n279_var_β:             mov              r11, 188
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n277_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_binop_α
n280_lit_integer_β:     mov              r11, 189
                        add              rsp, 16;                             jmp   n279_var_β
.Lx713_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:           sub              rsp, 16
                        mov              r11, 190
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx714_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx714_7
.Lx714_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx714_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx714_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx714_4
.Lx714_3:               movq             xmm0, rsi
.Lx714_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx714_7:                                                                     jmp   n282_assign_α
.Lx714_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx714_240
                        add              rsp, 16;                             jmp   n280_lit_integer_β
.Lx714_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n282_assign_α
n281_binop_β:           mov              r11, 190
                        add              rsp, 16;                             jmp   n280_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n283_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n283_subscript_α:       sub              rsp, 16
                        mov              r11, 192
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
                        cmp              al, 104;                             jne   .Lx716_240
                        add              rsp, 16;                             jmp   n281_binop_β
.Lx716_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_var_α
n283_subscript_β:       mov              r11, 192
                        add              rsp, 16;                             jmp   n281_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 193
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_var_α
n284_var_β:             mov              r11, 193
                        add              rsp, 16;                             jmp   n283_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_subscript_α
n285_var_β:             mov              r11, 194
                        add              rsp, 16;                             jmp   n284_var_β
#-----------------------------------------------------------------------------------------------------------------------
n286_subscript_α:       sub              rsp, 16
                        mov              r11, 195
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
                        cmp              al, 104;                             jne   .Lx719_240
                        add              rsp, 16;                             jmp   n285_var_β
.Lx719_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_deref_α
n286_subscript_β:       mov              r11, 195
                        add              rsp, 16;                             jmp   n285_var_β
#-----------------------------------------------------------------------------------------------------------------------
n287_deref_α:           sub              rsp, 16
                        mov              r11, 196
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
                        cmp              al, 104;                             jne   .Lx720_240
                        add              rsp, 16;                             jmp   n286_subscript_β
.Lx720_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_call_α
n287_deref_β:           mov              r11, 196
                        add              rsp, 16;                             jmp   n286_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            sub              rsp, 16
                        mov              r11, 197
                        lea              rcx, [rip + .Lsig722z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig722z:              .quad            1
                        .quad            .Lx722_2
                        .quad            .Lx722_2
                        .quad            16
.Lx722_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx722_29
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
.Lx722_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx722_240
                        add              rsp, 16;                             jmp   n287_deref_β
.Lx722_240:                                                                   jmp   n289_var_α
n288_call_β:            mov              r11, 197;                            jmp   n287_deref_β
.Lx722_0:               .quad            .Lx722_0_s
.Lx722_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_var_α
n289_var_β:             mov              r11, 198
                        add              rsp, 32;                             jmp   n287_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_lit_integer_α
n290_var_β:             mov              r11, 199
                        add              rsp, 16;                             jmp   n289_var_β
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n292_binop_α
n291_lit_integer_β:     mov              r11, 200
                        add              rsp, 16;                             jmp   n290_var_β
.Lx725_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n292_binop_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx726_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx726_7
.Lx726_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx726_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx726_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx726_4
.Lx726_3:               movq             xmm0, rsi
.Lx726_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx726_7:                                                                     jmp   n293_subscript_α
.Lx726_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx726_240
                        add              rsp, 16;                             jmp   n291_lit_integer_β
.Lx726_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n293_subscript_α
n292_binop_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n291_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              r11, 202
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
                        cmp              al, 104;                             jne   .Lx727_240
                        add              rsp, 16;                             jmp   n292_binop_β
.Lx727_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_subscript_β:       mov              r11, 202
                        add              rsp, 16;                             jmp   n292_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              r11, 203
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
                        cmp              al, 104;                             jne   .Lx728_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lx728_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_call_α
n294_deref_β:           mov              r11, 203
                        add              rsp, 16;                             jmp   n293_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            sub              rsp, 16
                        mov              r11, 204
                        lea              rcx, [rip + .Lsig730z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig730z:              .quad            1
                        .quad            .Lx730_2
                        .quad            .Lx730_2
                        .quad            16
.Lx730_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx730_29
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
.Lx730_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx730_240
                        add              rsp, 16;                             jmp   n294_deref_β
.Lx730_240:                                                                   jmp   n296_binop_α
n295_call_β:            mov              r11, 204;                            jmp   n294_deref_β
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n296_binop_α:           sub              rsp, 16
                        mov              r11, 205
                        mov              eax, dword ptr [rsp + 128]           # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx731_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx731_7
.Lx731_2:               and              edx, 1;                              jz    .Lx731_0
                        mov              rsi, qword ptr [rsp + 136]           # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx731_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx731_4
.Lx731_3:               movq             xmm0, rsi
.Lx731_4:               cmp              cl, 5;                               je    .Lx731_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx731_6
.Lx731_5:               movq             xmm1, rdi
.Lx731_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx731_7:                                                                     jmp   n297_assign_var_α
.Lx731_0:               mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx731_240
                        add              rsp, 32;                             jmp   n294_deref_β
.Lx731_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_assign_var_α
n296_binop_β:           mov              r11, 205
                        add              rsp, 32;                             jmp   n294_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_var_α:      sub              rsp, 16
                        mov              r11, 206
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
                        cmp              al, 104;                             jne   .Lx732_240
                        add              rsp, 16;                             jmp   n296_binop_β
.Lx732_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n298_statement_end_α:   mov              r11, 207
                        mov              r10, 23
                        add              rsp, 304;                            jmp   n299_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n299_statement_begin_α: mov              r11, 208
                        mov              r10, 24;                             jmp   n300_lit_string_α
n299_statement_begin_β: mov              r11, 208;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n301_call_α
.Lx737_0:               .quad            .Lx737_0_s
.Lx737_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            sub              rsp, 16
                        mov              r11, 210
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd739:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd739]
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
                        cmp              al, 104;                             jne   .Lx738_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n299_statement_begin_β
.Lx738_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_assign_α
n301_call_β:            mov              r11, 210
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n299_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              r11, 211
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # MUL
                        mov              qword ptr [r9 + 104], rdx;           jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   mov              r11, 212
                        mov              r10, 24
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# MUL_end  <stmt 25, line 27: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α: mov              r11, 213
                        mov              r10, 25;                             jmp   n305_statement_end_α
n304_statement_begin_β: mov              r11, 213;                            jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 214
                        mov              r10, 25;                             jmp   n306_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()')                         :(DIV_end)
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α: mov              r11, 215
                        mov              r10, 26;                             jmp   n307_define_α
n306_statement_begin_β: mov              r11, 215;                            jmp   n336_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_define_α:          mov              r11, 216
                        mov              rdi, qword ptr [rip + .Lx750_0]
                        mov              rsi, qword ptr [rip + .Lx750_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n309_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx750_0]
                        lea              rsi, [rip + DIV_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_statement_end_α
n307_define_β:          mov              r11, 216;                            jmp   n306_statement_begin_β
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "DIV"
.Lx750_1:               .quad            .Lx750_1_s
.Lx750_1_s:             .string          ""
                                                                              jmp   .Lx751_245
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
                        lea              rax, [rip + n309_statement_begin_α]; jmp   rax
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
.Lx751_245:
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:   mov              r11, 217
                        mov              r10, 26;                             jmp   n336_statement_begin_α
#=======================================================================================================================
# DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_begin_α: mov              r11, 218
                        mov              r10, 27;                             jmp   n310_var_α
n309_statement_begin_β: mov              r11, 218;                            jmp   n331_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_lit_integer_α
n311_var_β:             mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n309_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     sub              rsp, 16
                        mov              r11, 221
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_binop_α
n312_lit_integer_β:     mov              r11, 221
                        add              rsp, 16;                             jmp   n311_var_β
.Lx758_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n313_binop_α:           sub              rsp, 16
                        mov              r11, 222
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx759_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx759_7
.Lx759_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx759_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx759_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx759_4
.Lx759_3:               movq             xmm0, rsi
.Lx759_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx759_7:                                                                     jmp   n314_assign_α
.Lx759_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx759_240
                        add              rsp, 16;                             jmp   n312_lit_integer_β
.Lx759_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n314_assign_α
n313_binop_β:           mov              r11, 222
                        add              rsp, 16;                             jmp   n312_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # sp
                        mov              qword ptr [r9 + 168], rdx;           jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:       sub              rsp, 16
                        mov              r11, 224
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
                        cmp              al, 104;                             jne   .Lx761_240
                        add              rsp, 16;                             jmp   n313_binop_β
.Lx761_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_var_α
n315_subscript_β:       mov              r11, 224
                        add              rsp, 16;                             jmp   n313_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_var_α
n316_var_β:             mov              r11, 225
                        add              rsp, 16;                             jmp   n315_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_subscript_α
n317_var_β:             mov              r11, 226
                        add              rsp, 16;                             jmp   n316_var_β
#-----------------------------------------------------------------------------------------------------------------------
n318_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx764_240
                        add              rsp, 16;                             jmp   n317_var_β
.Lx764_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_deref_α
n318_subscript_β:       mov              r11, 227
                        add              rsp, 16;                             jmp   n317_var_β
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
                        cmp              al, 104;                             jne   .Lx765_240
                        add              rsp, 16;                             jmp   n318_subscript_β
.Lx765_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_call_α
n319_deref_β:           mov              r11, 228
                        add              rsp, 16;                             jmp   n318_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            sub              rsp, 16
                        mov              r11, 229
                        lea              rcx, [rip + .Lsig767z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig767z:              .quad            1
                        .quad            .Lx767_2
                        .quad            .Lx767_2
                        .quad            16
.Lx767_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx767_29
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
.Lx767_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx767_240
                        add              rsp, 16;                             jmp   n319_deref_β
.Lx767_240:                                                                   jmp   n321_var_α
n320_call_β:            mov              r11, 229;                            jmp   n319_deref_β
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_var_α
n321_var_β:             mov              r11, 230
                        add              rsp, 32;                             jmp   n319_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              r11, 231
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_integer_α
n322_var_β:             mov              r11, 231
                        add              rsp, 16;                             jmp   n321_var_β
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_binop_α
n323_lit_integer_β:     mov              r11, 232
                        add              rsp, 16;                             jmp   n322_var_β
.Lx770_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 233
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx771_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx771_7
.Lx771_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx771_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx771_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx771_4
.Lx771_3:               movq             xmm0, rsi
.Lx771_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx771_7:                                                                     jmp   n325_subscript_α
.Lx771_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx771_240
                        add              rsp, 16;                             jmp   n323_lit_integer_β
.Lx771_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_subscript_α
n324_binop_β:           mov              r11, 233
                        add              rsp, 16;                             jmp   n323_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:       sub              rsp, 16
                        mov              r11, 234
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
                        cmp              al, 104;                             jne   .Lx772_240
                        add              rsp, 16;                             jmp   n324_binop_β
.Lx772_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_deref_α
n325_subscript_β:       mov              r11, 234
                        add              rsp, 16;                             jmp   n324_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n326_deref_α:           sub              rsp, 16
                        mov              r11, 235
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
                        cmp              al, 104;                             jne   .Lx773_240
                        add              rsp, 16;                             jmp   n325_subscript_β
.Lx773_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_call_α
n326_deref_β:           mov              r11, 235
                        add              rsp, 16;                             jmp   n325_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            sub              rsp, 16
                        mov              r11, 236
                        lea              rcx, [rip + .Lsig775z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig775z:              .quad            1
                        .quad            .Lx775_2
                        .quad            .Lx775_2
                        .quad            16
.Lx775_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx775_29
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
.Lx775_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx775_240
                        add              rsp, 16;                             jmp   n326_deref_β
.Lx775_240:                                                                   jmp   n328_binop_α
n327_call_β:            mov              r11, 236;                            jmp   n326_deref_β
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n328_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              rdi, qword ptr [rsp + 128]           # call
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx776_240
                        add              rsp, 32;                             jmp   n326_deref_β
.Lx776_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_assign_var_α
n328_binop_β:           mov              r11, 237
                        add              rsp, 32;                             jmp   n326_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_var_α:      sub              rsp, 16
                        mov              r11, 238
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
                        cmp              al, 104;                             jne   .Lx777_240
                        add              rsp, 16;                             jmp   n328_binop_β
.Lx777_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 239
                        mov              r10, 27
                        add              rsp, 304;                            jmp   n331_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_begin_α: mov              r11, 240
                        mov              r10, 28;                             jmp   n332_lit_string_α
n331_statement_begin_β: mov              r11, 240;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n333_call_α
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            sub              rsp, 16
                        mov              r11, 242
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd784:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd784]
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
                        cmp              al, 104;                             jne   .Lx783_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
.Lx783_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_assign_α
n333_call_β:            mov              r11, 242
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              r11, 243
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # DIV
                        mov              qword ptr [r9 + 120], rdx;           jmp   n335_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   mov              r11, 244
                        mov              r10, 28
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# DIV_end  <stmt 29, line 31: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_begin_α: mov              r11, 245
                        mov              r10, 29;                             jmp   n337_statement_end_α
n336_statement_begin_β: mov              r11, 245;                            jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   mov              r11, 246
                        mov              r10, 29;                             jmp   n338_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_end)
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α: mov              r11, 247
                        mov              r10, 30;                             jmp   n339_define_α
n338_statement_begin_β: mov              r11, 247;                            jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n339_define_α:          mov              r11, 248
                        mov              rdi, qword ptr [rip + .Lx795_0]
                        mov              rsi, qword ptr [rip + .Lx795_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n341_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx795_0]
                        lea              rsi, [rip + NEG_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n340_statement_end_α
n339_define_β:          mov              r11, 248;                            jmp   n338_statement_begin_β
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "NEG"
.Lx795_1:               .quad            .Lx795_1_s
.Lx795_1_s:             .string          ""
                                                                              jmp   .Lx796_245
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
                        lea              rax, [rip + n341_statement_begin_α]; jmp   rax
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
.Lx796_245:
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   mov              r11, 249
                        mov              r10, 30;                             jmp   n358_statement_begin_α
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α: mov              r11, 250
                        mov              r10, 31;                             jmp   n342_var_α
n341_statement_begin_β: mov              r11, 250;                            jmp   n353_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_subscript_α
n343_var_β:             mov              r11, 252
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n344_subscript_α:       sub              rsp, 16
                        mov              r11, 253
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
                        cmp              al, 104;                             jne   .Lx803_240
                        add              rsp, 16;                             jmp   n343_var_β
.Lx803_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_var_α
n344_subscript_β:       mov              r11, 253
                        add              rsp, 16;                             jmp   n343_var_β
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 144]            # S
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_var_α
n345_var_β:             mov              r11, 254
                        add              rsp, 16;                             jmp   n344_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 160]            # sp
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_subscript_α
n346_var_β:             mov              r11, 255
                        add              rsp, 16;                             jmp   n345_var_β
#-----------------------------------------------------------------------------------------------------------------------
n347_subscript_α:       sub              rsp, 16
                        mov              r11, 256
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
                        cmp              al, 104;                             jne   .Lx806_240
                        add              rsp, 16;                             jmp   n346_var_β
.Lx806_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_deref_α
n347_subscript_β:       mov              r11, 256
                        add              rsp, 16;                             jmp   n346_var_β
#-----------------------------------------------------------------------------------------------------------------------
n348_deref_α:           sub              rsp, 16
                        mov              r11, 257
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
                        cmp              al, 104;                             jne   .Lx807_240
                        add              rsp, 16;                             jmp   n347_subscript_β
.Lx807_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_call_α
n348_deref_β:           mov              r11, 257
                        add              rsp, 16;                             jmp   n347_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            sub              rsp, 16
                        mov              r11, 258
                        lea              rcx, [rip + .Lsig809z]
                        lea              rax, [rip + DRF_α];                  jmp   rax
.Lsig809z:              .quad            1
                        .quad            .Lx809_2
                        .quad            .Lx809_2
                        .quad            16
.Lx809_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx809_29
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
.Lx809_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx809_240
                        add              rsp, 16;                             jmp   n348_deref_β
.Lx809_240:                                                                   jmp   n350_unop_α
n349_call_β:            mov              r11, 258;                            jmp   n348_deref_β
.Lx809_0:               .quad            .Lx809_0_s
.Lx809_0_s:             .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n350_unop_α:            sub              rsp, 16
                        mov              r11, 259
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_assign_var_α
n350_unop_β:            mov              r11, 259
                        add              rsp, 32;                             jmp   n348_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n351_assign_var_α:      sub              rsp, 16
                        mov              r11, 260
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
                        cmp              al, 104;                             jne   .Lx811_240
                        add              rsp, 16;                             jmp   n350_unop_β
.Lx811_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_end_α:   mov              r11, 261
                        mov              r10, 31
                        add              rsp, 160;                            jmp   n353_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n353_statement_begin_α: mov              r11, 262
                        mov              r10, 32;                             jmp   n354_lit_string_α
n353_statement_begin_β: mov              r11, 262;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n355_call_α
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        mov              r11, 264
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd818:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd818]
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
                        cmp              al, 104;                             jne   .Lx817_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
.Lx817_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_assign_α
n355_call_β:            mov              r11, 264
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n353_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # NEG
                        mov              qword ptr [r9 + 136], rdx;           jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 266
                        mov              r10, 32
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# NEG_end  <stmt 33, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α: mov              r11, 267
                        mov              r10, 33;                             jmp   n359_statement_end_α
n358_statement_begin_β: mov              r11, 267;                            jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:   mov              r11, 268
                        mov              r10, 33;                             jmp   n360_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α: mov              r11, 269
                        mov              r10, 34;                             jmp   n361_lit_integer_α
n360_statement_begin_β: mov              r11, 269;                            jmp   n365_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:     sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n362_call_α
.Lx828_0:               .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            sub              rsp, 16
                        mov              r11, 271
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd830:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd830]
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
                        cmp              al, 104;                             jne   .Lx829_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n360_statement_begin_β
.Lx829_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n363_assign_α
n362_call_β:            mov              r11, 271
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n360_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n363_assign_α:          mov              r11, 272
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # S
                        mov              qword ptr [r9 + 152], rdx;           jmp   n364_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:   mov              r11, 273
                        mov              r10, 34
                        add              rsp, 32;                             jmp   n365_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α: mov              r11, 274
                        mov              r10, 35;                             jmp   n366_lit_string_α
n365_statement_begin_β: mov              r11, 274;                            jmp   n370_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx836_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n367_call_α
.Lx836_0:               .quad            .Lx836_0_s
.Lx836_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            sub              rsp, 16
                        mov              r11, 276
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd838:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd838]
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
                        cmp              al, 104;                             jne   .Lx837_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
.Lx837_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_assign_α
n367_call_β:            mov              r11, 276
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n368_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # V
                        mov              qword ptr [r9 + 216], rdx;           jmp   n369_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_end_α:   mov              r11, 278
                        mov              r10, 35
                        add              rsp, 32;                             jmp   n370_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n370_statement_begin_α: mov              r11, 279
                        mov              r10, 36;                             jmp   n371_lit_string_α
n370_statement_begin_β: mov              r11, 279;                            jmp   n375_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      sub              rsp, 16
                        mov              r11, 280
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_call_α
.Lx844_0:               .quad            .Lx844_0_s
.Lx844_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            sub              rsp, 16
                        mov              r11, 281
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd846:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd846]
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
                        cmp              al, 104;                             jne   .Lx845_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n370_statement_begin_β
.Lx845_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n373_assign_α
n372_call_β:            mov              r11, 281
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n370_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # I
                        mov              qword ptr [r9 + 232], rdx;           jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   mov              r11, 283
                        mov              r10, 36
                        add              rsp, 32;                             jmp   n375_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α: mov              r11, 284
                        mov              r10, 37;                             jmp   n376_var_α
n375_statement_begin_β: mov              r11, 284;                            jmp   n385_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 208]            # V
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n377_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 392], rdx;           jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              r11, 287
                        mov              rax, qword ptr [r9 + 224]            # I
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
n378_var_β:             mov              r11, 287
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 408], rdx;           jmp   n380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      sub              rsp, 16
                        mov              r11, 289
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_lit_string_α
n380_lit_string_β:      mov              r11, 289
                        add              rsp, 16;                             jmp   n378_var_β
.Lx856_0:               .quad            .Lx856_0_s
.Lx856_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      sub              rsp, 16
                        mov              r11, 290
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_call_α
n381_lit_string_β:      mov              r11, 290
                        add              rsp, 16;                             jmp   n380_lit_string_β
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            sub              rsp, 16
                        mov              r11, 291
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
                        cmp              al, 104;                             jne   .Lx858_240
                        add              rsp, 16;                             jmp   n381_lit_string_β
.Lx858_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
n382_call_β:            mov              r11, 291
                        add              rsp, 16;                             jmp   n381_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # A
                        mov              qword ptr [r9 + 248], rdx;           jmp   n384_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:   mov              r11, 293
                        mov              r10, 37
                        add              rsp, 80;                             jmp   n385_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_begin_α: mov              r11, 294
                        mov              r10, 38;                             jmp   n386_var_α
n385_statement_begin_β: mov              r11, 294;                            jmp   n393_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              r11, 295
                        mov              rax, qword ptr [r9 + 240]            # A
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:          mov              r11, 296
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 424], rdx;           jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      sub              rsp, 16
                        mov              r11, 297
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n389_lit_string_α
n388_lit_string_β:      mov              r11, 297
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
.Lx867_0:               .quad            .Lx867_0_s
.Lx867_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      sub              rsp, 16
                        mov              r11, 298
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_call_α
n389_lit_string_β:      mov              r11, 298
                        add              rsp, 16;                             jmp   n388_lit_string_β
.Lx868_0:               .quad            .Lx868_0_s
.Lx868_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        mov              r11, 299
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
.Lrkfnzd870:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd870]
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
                        cmp              al, 104;                             jne   .Lx869_240
                        add              rsp, 16;                             jmp   n389_lit_string_β
.Lx869_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_assign_α
n390_call_β:            mov              r11, 299
                        add              rsp, 16;                             jmp   n389_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n391_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # F
                        mov              qword ptr [r9 + 264], rdx;           jmp   n392_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_end_α:   mov              r11, 301
                        mov              r10, 38
                        add              rsp, 64;                             jmp   n393_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n393_statement_begin_α: mov              r11, 302
                        mov              r10, 39;                             jmp   n394_var_α
n393_statement_begin_β: mov              r11, 302;                            jmp   n401_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 256]            # F
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n395_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 440], rdx;           jmp   n396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      sub              rsp, 16
                        mov              r11, 305
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n397_lit_string_α
n396_lit_string_β:      mov              r11, 305
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n393_statement_begin_β
.Lx878_0:               .quad            .Lx878_0_s
.Lx878_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      sub              rsp, 16
                        mov              r11, 306
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n398_call_α
n397_lit_string_β:      mov              r11, 306
                        add              rsp, 16;                             jmp   n396_lit_string_β
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n398_call_α:            sub              rsp, 16
                        mov              r11, 307
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
                        add              rsp, 16;                             jmp   n397_lit_string_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_assign_α
n398_call_β:            mov              r11, 307
                        add              rsp, 16;                             jmp   n397_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:          mov              r11, 308
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # T
                        mov              qword ptr [r9 + 280], rdx;           jmp   n400_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:   mov              r11, 309
                        mov              r10, 39
                        add              rsp, 64;                             jmp   n401_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_begin_α: mov              r11, 310
                        mov              r10, 40;                             jmp   n402_var_α
n401_statement_begin_β: mov              r11, 310;                            jmp   n409_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              r11, 311
                        mov              rax, qword ptr [r9 + 272]            # T
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n403_assign_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 456], rdx;           jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n405_lit_string_α
n404_lit_string_β:      mov              r11, 313
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
.Lx889_0:               .quad            .Lx889_0_s
.Lx889_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_call_α
n405_lit_string_β:      mov              r11, 314
                        add              rsp, 16;                             jmp   n404_lit_string_β
.Lx890_0:               .quad            .Lx890_0_s
.Lx890_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_α:            sub              rsp, 16
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
.Lrkfnzd892:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd892]
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
                        cmp              al, 104;                             jne   .Lx891_240
                        add              rsp, 16;                             jmp   n405_lit_string_β
.Lx891_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_assign_α
n406_call_β:            mov              r11, 315
                        add              rsp, 16;                             jmp   n405_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # X
                        mov              qword ptr [r9 + 296], rdx;           jmp   n408_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n408_statement_end_α:   mov              r11, 317
                        mov              r10, 40
                        add              rsp, 64;                             jmp   n409_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n409_statement_begin_α: mov              r11, 318
                        mov              r10, 41;                             jmp   n410_lit_integer_α
n409_statement_begin_β: mov              r11, 318;                            jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     sub              rsp, 16
                        mov              r11, 319
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n411_call_α
.Lx898_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:            sub              rsp, 16
                        mov              r11, 320
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd320:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd320]
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
                        cmp              al, 104;                             jne   .Lx899_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n409_statement_begin_β
.Lx899_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_assign_α
n411_call_β:            mov              r11, 320
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n409_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n412_assign_α:          mov              r11, 321
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 472], rdx;           jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n414_lit_string_α
n413_lit_string_β:      mov              r11, 322
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n409_statement_begin_β
.Lx901_0:               .quad            .Lx901_0_s
.Lx901_0_s:             .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n415_call_α
n414_lit_string_β:      mov              r11, 323
                        add              rsp, 16;                             jmp   n413_lit_string_β
.Lx902_0:               .quad            .Lx902_0_s
.Lx902_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            sub              rsp, 16
                        mov              r11, 324
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
.Lrkfnzd904:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd904]
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
                        cmp              al, 104;                             jne   .Lx903_240
                        add              rsp, 16;                             jmp   n414_lit_string_β
.Lx903_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_assign_α
n415_call_β:            mov              r11, 324
                        add              rsp, 16;                             jmp   n414_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:          mov              r11, 325
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # eol
                        mov              qword ptr [r9 + 312], rdx;           jmp   n417_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:   mov              r11, 326
                        mov              r10, 41
                        add              rsp, 80;                             jmp   n418_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol . *EMIT()) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α: mov              r11, 327
                        mov              r10, 42;                             jmp   n419_var_α
n418_statement_begin_β: mov              r11, 327;                            jmp   n428_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:             sub              rsp, 16
                        mov              r11, 328
                        mov              rax, qword ptr [r9 + 288]            # X
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n420_assign_α:          mov              r11, 329
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # PAT$7$V0
                        mov              qword ptr [r9 + 488], rdx;           jmp   n421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             sub              rsp, 16
                        mov              r11, 330
                        mov              rax, qword ptr [r9 + 304]            # eol
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_assign_α
n421_var_β:             mov              r11, 330
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n418_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n422_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # PAT$7$V1
                        mov              qword ptr [r9 + 504], rdx;           jmp   n423_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      sub              rsp, 16
                        mov              r11, 332
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n424_lit_string_α
n423_lit_string_β:      mov              r11, 332
                        add              rsp, 16;                             jmp   n421_var_β
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:      sub              rsp, 16
                        mov              r11, 333
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n425_call_α
n424_lit_string_β:      mov              r11, 333
                        add              rsp, 16;                             jmp   n423_lit_string_β
.Lx915_0:               .quad            .Lx915_0_s
.Lx915_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n425_call_α:            sub              rsp, 16
                        mov              r11, 334
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
.Lrkfnzd917:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd917]
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
                        cmp              al, 104;                             jne   .Lx916_240
                        add              rsp, 16;                             jmp   n424_lit_string_β
.Lx916_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_assign_α
n425_call_β:            mov              r11, 334
                        add              rsp, 16;                             jmp   n424_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n426_assign_α:          mov              r11, 335
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # C
                        mov              qword ptr [r9 + 328], rdx;           jmp   n427_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n427_statement_end_α:   mov              r11, 336
                        mov              r10, 42
                        add              rsp, 80;                             jmp   n428_statement_begin_α
#=======================================================================================================================
#         &TRIM = 0
#-----------------------------------------------------------------------------------------------------------------------
n428_statement_begin_α: mov              r11, 337
                        mov              r10, 43;                             jmp   n429_lit_integer_α
n428_statement_begin_β: mov              r11, 337;                            jmp   n432_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     sub              rsp, 16
                        mov              r11, 338
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n430_keyword_assign_snobol4_α
.Lx923_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n430_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 339
                        mov              rdi, qword ptr [rip + .Lx924_0]
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
                        cmp              al, 104;                             jne   .Lx924_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n428_statement_begin_β
.Lx924_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_statement_end_α
.Lx924_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   mov              r11, 340
                        mov              r10, 43
                        add              rsp, 32;                             jmp   n432_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α: mov              r11, 341
                        mov              r10, 44;                             jmp   n433_call_α
n432_statement_begin_β: mov              r11, 341;                            jmp   n436_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            sub              rsp, 16
                        mov              r11, 342
                        .section         .rodata
.Lrkfnzd930:            .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd930]
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
                        cmp              al, 104;                             jne   .Lx929_240
                        add              rsp, 16;                             jmp   n432_statement_begin_β
.Lx929_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_assign_α
n433_call_β:            mov              r11, 342
                        add              rsp, 16;                             jmp   n432_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n434_assign_α:          mov              r11, 343
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # vars
                        mov              qword ptr [r9 + 200], rdx;           jmp   n435_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_end_α:   mov              r11, 344
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n436_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_begin_α: mov              r11, 345
                        mov              r10, 45;                             jmp   n437_var_α
n436_statement_begin_β: mov              r11, 345;                            jmp   n443_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_α:             sub              rsp, 16
                        mov              r11, 346
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      sub              rsp, 16
                        mov              r11, 347
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_subscript_α
n438_lit_string_β:      mov              r11, 347
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n436_statement_begin_β
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n439_subscript_α:       sub              rsp, 16
                        mov              r11, 348
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
                        cmp              al, 104;                             jne   .Lx938_240
                        add              rsp, 16;                             jmp   n438_lit_string_β
.Lx938_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_lit_integer_α
n439_subscript_β:       mov              r11, 348
                        add              rsp, 16;                             jmp   n438_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_integer_α:     sub              rsp, 16
                        mov              r11, 349
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n441_assign_var_α
n440_lit_integer_β:     mov              r11, 349
                        add              rsp, 16;                             jmp   n439_subscript_β
.Lx939_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_var_α:      sub              rsp, 16
                        mov              r11, 350
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
                        cmp              al, 104;                             jne   .Lx940_240
                        add              rsp, 16;                             jmp   n440_lit_integer_β
.Lx940_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_end_α:   mov              r11, 351
                        mov              r10, 45
                        add              rsp, 80;                             jmp   n443_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n443_statement_begin_α: mov              r11, 352
                        mov              r10, 46;                             jmp   n444_var_α
n443_statement_begin_β: mov              r11, 352;                            jmp   n450_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:             sub              rsp, 16
                        mov              r11, 353
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n445_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      sub              rsp, 16
                        mov              r11, 354
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n446_subscript_α
n445_lit_string_β:      mov              r11, 354
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n443_statement_begin_β
.Lx946_0:               .quad            .Lx946_0_s
.Lx946_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n446_subscript_α:       sub              rsp, 16
                        mov              r11, 355
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
                        cmp              al, 104;                             jne   .Lx947_240
                        add              rsp, 16;                             jmp   n445_lit_string_β
.Lx947_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_lit_integer_α
n446_subscript_β:       mov              r11, 355
                        add              rsp, 16;                             jmp   n445_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:     sub              rsp, 16
                        mov              r11, 356
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n448_assign_var_α
n447_lit_integer_β:     mov              r11, 356
                        add              rsp, 16;                             jmp   n446_subscript_β
.Lx948_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n448_assign_var_α:      sub              rsp, 16
                        mov              r11, 357
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
                        cmp              al, 104;                             jne   .Lx949_240
                        add              rsp, 16;                             jmp   n447_lit_integer_β
.Lx949_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_end_α:   mov              r11, 358
                        mov              r10, 46
                        add              rsp, 80;                             jmp   n450_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n450_statement_begin_α: mov              r11, 359
                        mov              r10, 47;                             jmp   n451_var_α
n450_statement_begin_β: mov              r11, 359;                            jmp   n457_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:             sub              rsp, 16
                        mov              r11, 360
                        mov              rax, qword ptr [r9 + 192]            # vars
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:      sub              rsp, 16
                        mov              r11, 361
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n453_subscript_α
n452_lit_string_β:      mov              r11, 361
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n450_statement_begin_β
.Lx955_0:               .quad            .Lx955_0_s
.Lx955_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n453_subscript_α:       sub              rsp, 16
                        mov              r11, 362
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
                        cmp              al, 104;                             jne   .Lx956_240
                        add              rsp, 16;                             jmp   n452_lit_string_β
.Lx956_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n454_lit_integer_α
n453_subscript_β:       mov              r11, 362
                        add              rsp, 16;                             jmp   n452_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     sub              rsp, 16
                        mov              r11, 363
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx957_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n455_assign_var_α
n454_lit_integer_β:     mov              r11, 363
                        add              rsp, 16;                             jmp   n453_subscript_β
.Lx957_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_var_α:      sub              rsp, 16
                        mov              r11, 364
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
                        cmp              al, 104;                             jne   .Lx958_240
                        add              rsp, 16;                             jmp   n454_lit_integer_β
.Lx958_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n456_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   mov              r11, 365
                        mov              r10, 47
                        add              rsp, 80;                             jmp   n457_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_begin_α: mov              r11, 366
                        mov              r10, 48;                             jmp   n458_lit_string_α
n457_statement_begin_β: mov              r11, 366;                            jmp   n464_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:      sub              rsp, 16
                        mov              r11, 367
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_call_α
.Lx963_0:               .quad            .Lx963_0_s
.Lx963_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        mov              r11, 368
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd965:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd965]
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
                        cmp              al, 104;                             jne   .Lx964_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
.Lx964_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_lit_integer_α
n459_call_β:            mov              r11, 368
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n457_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     sub              rsp, 16
                        mov              r11, 369
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n461_lit_string_α
n460_lit_integer_β:     mov              r11, 369
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n457_statement_begin_β
.Lx966_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      sub              rsp, 16
                        mov              r11, 370
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n462_call_α
n461_lit_string_β:      mov              r11, 370
                        add              rsp, 16;                             jmp   n460_lit_integer_β
.Lx967_0:               .quad            .Lx967_0_s
.Lx967_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n462_call_α:            sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx968_240
                        add              rsp, 16;                             jmp   n461_lit_string_β
.Lx968_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n463_statement_end_α
n462_call_β:            mov              r11, 371
                        add              rsp, 16;                             jmp   n461_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_end_α:   mov              r11, 372
                        mov              r10, 48
                        add              rsp, 80;                             jmp   n464_statement_begin_α
#=======================================================================================================================
#         src = INPUT
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_begin_α: mov              r11, 373
                        mov              r10, 49;                             jmp   n465_var_α
n464_statement_begin_β: mov              r11, 373;                            jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rdi, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx973_240
                        add              rsp, 16;                             jmp   n464_statement_begin_β
.Lx973_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n466_assign_α
.Lx973_0:               .quad            .Lx973_0_s
.Lx973_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n466_assign_α:          mov              r11, 375
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # src
                        mov              qword ptr [r9 + 344], rdx;           jmp   n467_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_end_α:   mov              r11, 376
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n468_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α: mov              r11, 377
                        mov              r10, 50;                             jmp   n469_call_α
n468_statement_begin_β: mov              r11, 377;                            jmp   n472_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_α:            sub              rsp, 16
                        mov              r11, 378
                        .section         .rodata
.Lrkfnzd980:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd980]
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
                        cmp              al, 104;                             jne   .Lx979_240
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lx979_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_assign_α
n469_call_β:            mov              r11, 378
                        add              rsp, 16;                             jmp   n468_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:          mov              r11, 379
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # t0
                        mov              qword ptr [r9 + 360], rdx;           jmp   n471_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:   mov              r11, 380
                        mov              r10, 50
                        add              rsp, 16;                             jmp   n472_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α: mov              r11, 381
                        mov              r10, 51;                             jmp   n473_var_α
n472_statement_begin_β: mov              r11, 381;                            jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             sub              rsp, 16
                        mov              r11, 382
                        mov              rax, qword ptr [r9 + 336]            # src
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n474_var_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             sub              rsp, 16
                        mov              r11, 383
                        mov              rax, qword ptr [r9 + 320]            # C
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n475_assign_α
n474_var_β:             mov              r11, 383
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_assign_α:          mov              r11, 384
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n476_match_begin_α
n475_assign_β:          mov              r11, 384;                            jmp   n474_var_β
.Lx988_0:               .quad            .Lx988_0_s
.Lx988_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n476_match_begin_α:     mov              r11, 385
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
.Lx990_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx990_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n477_match_defer_α
n476_match_begin_β:     mov              r11, 385
.Lx990_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx990_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx990_1
                                                                              jmp   .Lx990_0
.Lx990_1:
n476_match_begin_af:    mov              r11, 385
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
#-----------------------------------------------------------------------------------------------------------------------
n477_match_defer_α:     mov              r11, 386
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lx991_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx991_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx991_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx991_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx991_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx991_0
.Lx991_31:              mov              edx, -1;                             jmp   .Lx991_0
.Lx991_30:              push             r14
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
                        test             rax, rax;                            jz    .Lx991_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx991_5]
                        push             rcx
                        lea              rcx, [rip + .Lx991_4]
                        push             rcx;                                 jmp   rax
.Lx991_4:                                                                     jmp   n478_match_end_α
.Lx991_5:                                                                     jmp   n476_match_begin_β
.Lx991_0:               mov              eax, edx
                        test             eax, eax;                            js    n476_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx991_6]
                        push             rcx
                        push             rax;                                 jmp   n478_match_end_α
.Lx991_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n476_match_begin_β
n477_match_defer_β:     mov              r11, 386
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx991_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx991_12
                                                                              jmp   rax
.Lx991_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n478_match_end_α:       mov              r11, 387
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
                        test             rax, rax;                            je    .Lx993_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n476_match_begin_af
.Lx993_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_end_α:   mov              r11, 388
                        mov              r10, 51
                        add              rsp, 32;                             jmp   n480_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_begin_α: mov              r11, 389
                        mov              r10, 52;                             jmp   n481_call_α
n480_statement_begin_β: mov              r11, 389;                            jmp   n484_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n481_call_α:            sub              rsp, 16
                        mov              r11, 390
                        .section         .rodata
.Lrkfnzd999:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd999]
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
                        cmp              al, 104;                             jne   .Lx998_240
                        add              rsp, 16;                             jmp   n480_statement_begin_β
.Lx998_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n482_assign_α
n481_call_β:            mov              r11, 390
                        add              rsp, 16;                             jmp   n480_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n482_assign_α:          mov              r11, 391
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx;           jmp   n483_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   mov              r11, 392
                        mov              r10, 52
                        add              rsp, 16;                             jmp   n484_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_begin_α: mov              r11, 393
                        mov              r10, 53;                             jmp   n485_lit_string_α
n484_statement_begin_β: mov              r11, 393;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      sub              rsp, 16
                        mov              r11, 394
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n486_var_α
.Lx1005_0:              .quad            .Lx1005_0_s
.Lx1005_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n487_var_α
n486_var_β:             mov              r11, 395
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n484_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             sub              rsp, 16
                        mov              r11, 396
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n488_binop_α
n487_var_β:             mov              r11, 396
                        add              rsp, 16;                             jmp   n486_var_β
#-----------------------------------------------------------------------------------------------------------------------
n488_binop_α:           sub              rsp, 16
                        mov              r11, 397
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1008_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1008_7
.Lx1008_2:              and              edx, 1;                              jz    .Lx1008_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1008_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1008_4
.Lx1008_3:              movq             xmm0, rsi
.Lx1008_4:              cmp              cl, 5;                               je    .Lx1008_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1008_6
.Lx1008_5:              movq             xmm1, rdi
.Lx1008_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1008_7:                                                                    jmp   n489_lit_integer_α
.Lx1008_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1008_240
                        add              rsp, 16;                             jmp   n487_var_β
.Lx1008_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n489_lit_integer_α
n488_binop_β:           mov              r11, 397
                        add              rsp, 16;                             jmp   n487_var_β
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     sub              rsp, 16
                        mov              r11, 398
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n490_binop_α
n489_lit_integer_β:     mov              r11, 398
                        add              rsp, 16;                             jmp   n488_binop_β
.Lx1009_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n490_binop_α:           sub              rsp, 16
                        mov              r11, 399
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1010_240
                        add              rsp, 16;                             jmp   n489_lit_integer_β
.Lx1010_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_binop_α
n490_binop_β:           mov              r11, 399
                        add              rsp, 16;                             jmp   n489_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n491_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n492_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n492_assign_α:          mov              r11, 401
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_statement_end_α
.Lx1012_0:              .quad            .Lx1012_0_s
.Lx1012_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   mov              r11, 402
                        mov              r10, 53
                        add              rsp, 112;                            jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α: mov              r11, 403
                        mov              r10, 54;                             jmp   n495_call_α
n494_statement_begin_β: mov              r11, 403;                            jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_α:            sub              rsp, 16
                        mov              r11, 404
                        .section         .rodata
.Lrkfnzd1018:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1018]
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
                        cmp              al, 104;                             jne   .Lx1017_240
                        add              rsp, 16;                             jmp   n494_statement_begin_β
.Lx1017_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n496_assign_α
n495_call_β:            mov              r11, 404
                        add              rsp, 16;                             jmp   n494_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_α:          mov              r11, 405
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # t1
                        mov              qword ptr [r9 + 376], rdx;           jmp   n497_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:   mov              r11, 406
                        mov              r10, 54
                        add              rsp, 16;                             jmp   n498_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α: mov              r11, 407
                        mov              r10, 55;                             jmp   n499_lit_string_α
n498_statement_begin_β: mov              r11, 407;                            jmp   n502_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:      sub              rsp, 16
                        mov              r11, 408
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n500_assign_α
.Lx1024_0:              .quad            .Lx1024_0_s
.Lx1024_0_s:            .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_α:          mov              r11, 409
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n501_statement_end_α
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:   mov              r11, 410
                        mov              r10, 55
                        add              rsp, 16;                             jmp   n502_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0) / 1000000
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α: mov              r11, 411
                        mov              r10, 56;                             jmp   n503_lit_string_α
n502_statement_begin_β: mov              r11, 411;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:      sub              rsp, 16
                        mov              r11, 412
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n504_var_α
.Lx1030_0:              .quad            .Lx1030_0_s
.Lx1030_0_s:            .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             sub              rsp, 16
                        mov              r11, 413
                        mov              rax, qword ptr [r9 + 368]            # t1
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n505_var_α
n504_var_β:             mov              r11, 413
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n502_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:             sub              rsp, 16
                        mov              r11, 414
                        mov              rax, qword ptr [r9 + 352]            # t0
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n506_binop_α
n505_var_β:             mov              r11, 414
                        add              rsp, 16;                             jmp   n504_var_β
#-----------------------------------------------------------------------------------------------------------------------
n506_binop_α:           sub              rsp, 16
                        mov              r11, 415
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1033_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1033_7
.Lx1033_2:              and              edx, 1;                              jz    .Lx1033_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx1033_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1033_4
.Lx1033_3:              movq             xmm0, rsi
.Lx1033_4:              cmp              cl, 5;                               je    .Lx1033_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1033_6
.Lx1033_5:              movq             xmm1, rdi
.Lx1033_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1033_7:                                                                    jmp   n507_lit_integer_α
.Lx1033_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1033_240
                        add              rsp, 16;                             jmp   n505_var_β
.Lx1033_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_lit_integer_α
n506_binop_β:           mov              r11, 415
                        add              rsp, 16;                             jmp   n505_var_β
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:     sub              rsp, 16
                        mov              r11, 416
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n508_binop_α
n507_lit_integer_β:     mov              r11, 416
                        add              rsp, 16;                             jmp   n506_binop_β
.Lx1034_0:              .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
                        mov              r11, 417
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx1035_240
                        add              rsp, 16;                             jmp   n507_lit_integer_β
.Lx1035_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n509_binop_α
n508_binop_β:           mov              r11, 417
                        add              rsp, 16;                             jmp   n507_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n509_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n510_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n510_assign_α:          mov              r11, 419
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n511_statement_end_α
.Lx1037_0:              .quad            .Lx1037_0_s
.Lx1037_0_s:            .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n511_statement_end_α:   mov              r11, 420
                        mov              r10, 56
                        add              rsp, 112;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 421
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 422
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 423
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
