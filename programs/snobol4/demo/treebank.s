                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
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
n0_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rbp + -48], r14d;         jmp   n1_match_defer_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_defer_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx5_16
                        mov              rax, qword ptr [rdx + 0]
.Lx5_16:                test             rax, rax;                            jz    .Lx5_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx5_5]
                        push             rcx
                        lea              rcx, [rip + .Lx5_4]
                        push             rcx;                                 jmp   rax
.Lx5_4:                                                                       jmp   n2_match_assign_cond_α
.Lx5_5:                 add              rsp, 16;                             jmp   n0_match_assign_save_β
.Lx5_0:                 push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx5_240
                        add              rsp, 16;                             jmp   n0_match_assign_save_β
.Lx5_240:               mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx5_6]
                        push             rcx
                        push             rax;                                 jmp   n2_match_assign_cond_α
.Lx5_6:                 add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n0_match_assign_save_β
n1_match_defer_β:       cmp              qword ptr [rsp + 0], 0;              jne   .Lx5_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx5_12
                                                                              jmp   rax
.Lx5_12:                                                                      jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_defer_β
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
n8_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx10_0:                cmp              ecx, r15d;                           jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx10_10
                        cmp              esi, 10;                             je    .Lx10_10
                                                                              jmp   .Lx10_1
.Lx10_10:               add              ecx, 1;                              jmp   .Lx10_0
.Lx10_1:                cmp              ecx, r14d;                           jg    .Lx10_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx10_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n8_match_span_β:        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n8_match_span_β
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
n11_match_notany_α:     mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n12_match_break_α
n11_match_notany_β:     sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_break_α:      sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jl    .Lx15_240
                        add              rsp, 16;                             jmp   n11_match_notany_β
.Lx15_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$2_γ
n12_match_break_β:      mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   n11_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n12_match_break_β
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
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n17_match_assign_save_α
n16_match_lit_β:        sub              r14d, 1;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -48], r14d;         jmp   n18_match_defer_α
n17_match_assign_save_β:
                        add              rsp, 16;                             jmp   n16_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx37_16
                        mov              rax, qword ptr [rdx + 0]
.Lx37_16:               test             rax, rax;                            jz    .Lx37_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx37_5]
                        push             rcx
                        lea              rcx, [rip + .Lx37_4]
                        push             rcx;                                 jmp   rax
.Lx37_4:                                                                      jmp   n19_match_assign_cond_α
.Lx37_5:                add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx37_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S2]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx37_240
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx37_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx37_6]
                        push             rcx
                        push             rax;                                 jmp   n19_match_assign_cond_α
.Lx37_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
n18_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx37_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx37_12
                                                                              jmp   rax
.Lx37_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n20_match_defer_α
n19_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n18_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx40_16
                        mov              rax, qword ptr [rdx + 0]
.Lx40_16:               test             rax, rax;                            jz    .Lx40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx40_5]
                        push             rcx
                        lea              rcx, [rip + .Lx40_4]
                        push             rcx;                                 jmp   rax
.Lx40_4:                                                                      jmp   n21_match_arbno_α
.Lx40_5:                add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx40_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx40_240
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx40_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx40_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_arbno_α
.Lx40_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
n20_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx40_12
                                                                              jmp   rax
.Lx40_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:      mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_β:                                                            jmp   n24_match_defer_α
n21_match_arbno_as:     mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n21_match_arbno_af
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_af:     mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n20_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx43_16
                        mov              rax, qword ptr [rdx + 0]
.Lx43_16:               test             rax, rax;                            jz    .Lx43_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx43_5]
                        push             rcx
                        lea              rcx, [rip + .Lx43_4]
                        push             rcx;                                 jmp   rax
.Lx43_4:                                                                      jmp   n23_match_lit_α
.Lx43_5:                add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx43_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx43_240
                        add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx43_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx43_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_lit_α
.Lx43_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n21_match_arbno_β
n22_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx43_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx43_12
                                                                              jmp   rax
.Lx43_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n22_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n22_match_defer_β
                        add              r14d, 1;                             jmp   PAT$3_γ
n23_match_lit_β:        sub              r14d, 1;                             jmp   n22_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx46_16
                        mov              rax, qword ptr [rdx + 0]
.Lx46_16:               test             rax, rax;                            jz    .Lx46_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx46_5]
                        push             rcx
                        lea              rcx, [rip + .Lx46_4]
                        push             rcx;                                 jmp   rax
.Lx46_4:                                                                      jmp   n25_match_fence1_α
.Lx46_5:                                                                      jmp   n21_match_arbno_af
.Lx46_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S6]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n21_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx46_6]
                        push             rcx
                        push             rax;                                 jmp   n25_match_fence1_α
.Lx46_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n21_match_arbno_af
n24_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx46_12
                                                                              jmp   rax
.Lx46_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n25_match_fence1_α:     mov              qword ptr [rbp + -80], rsp;          jmp   n26_match_alternate_α
n25_match_fence1_as:    mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_as
n25_match_fence1_af:
n25_match_fence1_β:     mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx50_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n32_match_defer_α
.Lx50_21:               lea              rax, [rip + .Lx50_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n28_match_assign_save_α
n26_match_alternate_s0: lea              rax, [rip + .Lx50_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
n26_match_alternate_s1: lea              rax, [rip + .Lx50_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
.Lx50_40:                                                                     jmp   n32_match_defer_β
.Lx50_41:                                                                     jmp   n27_goto_β
n26_match_alternate_as:                                                       jmp   n25_match_fence1_as
n26_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n26_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx50_19:               add              rsp, 32;                             jmp   n25_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:                                                                   jmp   n26_match_alternate_af
n27_goto_β:                                                                   jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_save_α:
                        mov              dword ptr [rbp + -112], r14d;        jmp   n29_match_defer_α
n28_match_assign_save_β:
                                                                              jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx54_16
                        mov              rax, qword ptr [rdx + 0]
.Lx54_16:               test             rax, rax;                            jz    .Lx54_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx54_5]
                        push             rcx
                        lea              rcx, [rip + .Lx54_4]
                        push             rcx;                                 jmp   rax
.Lx54_4:                                                                      jmp   n30_match_assign_cond_α
.Lx54_5:                                                                      jmp   n28_match_assign_save_β
.Lx54_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S7]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n28_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx54_6]
                        push             rcx
                        push             rax;                                 jmp   n30_match_assign_cond_α
.Lx54_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n28_match_assign_save_β
n29_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx54_12
                                                                              jmp   rax
.Lx54_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -112]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n31_match_defer_α
n30_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n29_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx57_16
                        mov              rax, qword ptr [rdx + 0]
.Lx57_16:               test             rax, rax;                            jz    .Lx57_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx57_5]
                        push             rcx
                        lea              rcx, [rip + .Lx57_4]
                        push             rcx;                                 jmp   rax
.Lx57_4:                                                                      jmp   n26_match_alternate_s1
.Lx57_5:                                                                      jmp   n30_match_assign_cond_β
.Lx57_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n30_match_assign_cond_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s1
.Lx57_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n30_match_assign_cond_β
n31_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx57_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx57_12
                                                                              jmp   rax
.Lx57_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8;                              jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx58_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx58_10
.Lx58_9:                cmp              eax, 88;                             jne   .Lx58_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx58_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx58_10
.Lx58_21:               xor              eax, eax
.Lx58_10:               test             rax, rax;                            jz    .Lx58_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx58_5]
                        push             rcx
                        lea              rcx, [rip + .Lx58_4]
                        push             rcx;                                 jmp   rax
.Lx58_4:                                                                      jmp   n26_match_alternate_s0
.Lx58_5:                                                                      jmp   n26_match_alternate_af
.Lx58_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n26_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx58_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s0
.Lx58_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n26_match_alternate_af
n32_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx58_12
                                                                              jmp   rax
.Lx58_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n59_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$4_ω
                                                                              jmp   n60_match_defer_α
n59_match_pos_β:                                                              jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx73_16
                        mov              rax, qword ptr [rdx + 0]
.Lx73_16:               test             rax, rax;                            jz    .Lx73_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx73_5]
                        push             rcx
                        lea              rcx, [rip + .Lx73_4]
                        push             rcx;                                 jmp   rax
.Lx73_4:                                                                      jmp   n61_match_defer_α
.Lx73_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx73_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S11]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        push             rax;                                 jmp   n61_match_defer_α
.Lx73_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n60_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx73_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx73_12
                                                                              jmp   rax
.Lx73_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx74_16
                        mov              rax, qword ptr [rdx + 0]
.Lx74_16:               test             rax, rax;                            jz    .Lx74_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx74_5]
                        push             rcx
                        lea              rcx, [rip + .Lx74_4]
                        push             rcx;                                 jmp   rax
.Lx74_4:                                                                      jmp   n62_match_arbno_α
.Lx74_5:                add              rsp, 16;                             jmp   n60_match_defer_β
.Lx74_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S12]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx74_240
                        add              rsp, 16;                             jmp   n60_match_defer_β
.Lx74_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx74_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_arbno_α
.Lx74_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n60_match_defer_β
n61_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx74_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx74_12
                                                                              jmp   rax
.Lx74_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_arbno_α:      mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_β:                                                            jmp   n65_match_defer_α
n62_match_arbno_as:     mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n69_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_af:     mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n61_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx77_16
                        mov              rax, qword ptr [rdx + 0]
.Lx77_16:               test             rax, rax;                            jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_5]
                        push             rcx
                        lea              rcx, [rip + .Lx77_4]
                        push             rcx;                                 jmp   rax
.Lx77_4:                                                                      jmp   n64_match_rpos_α
.Lx77_5:                add              rsp, 16;                             jmp   n62_match_arbno_β
.Lx77_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S13]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx77_240
                        add              rsp, 16;                             jmp   n62_match_arbno_β
.Lx77_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_rpos_α
.Lx77_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n62_match_arbno_β
n63_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx77_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx77_12
                                                                              jmp   rax
.Lx77_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n63_match_defer_β
                                                                              jmp   PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S14]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx79_16
                        mov              rax, qword ptr [rdx + 0]
.Lx79_16:               test             rax, rax;                            jz    .Lx79_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx79_5]
                        push             rcx
                        lea              rcx, [rip + .Lx79_4]
                        push             rcx;                                 jmp   rax
.Lx79_4:                                                                      jmp   n66_match_arbno_α
.Lx79_5:                                                                      jmp   n62_match_arbno_af
.Lx79_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S14]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n62_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx79_6]
                        push             rcx
                        push             rax;                                 jmp   n66_match_arbno_α
.Lx79_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_arbno_af
n65_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx79_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx79_12
                                                                              jmp   rax
.Lx79_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_arbno_α:      mov              dword ptr [rbp + -80], r14d
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_β:                                                            jmp   n70_match_defer_α
n66_match_arbno_as:     mov              eax, dword ptr [rbp + -76]
                        cmp              r14d, eax;                           je    n66_match_arbno_af
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_af:     mov              eax, dword ptr [rbp + -80]
                        cmp              r14d, eax;                           jmp   n65_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S15]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx82_16
                        mov              rax, qword ptr [rdx + 0]
.Lx82_16:               test             rax, rax;                            jz    .Lx82_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx82_5]
                        push             rcx
                        lea              rcx, [rip + .Lx82_4]
                        push             rcx;                                 jmp   rax
.Lx82_4:                                                                      jmp   n68_match_fence0_α
.Lx82_5:                                                                      jmp   n66_match_arbno_β
.Lx82_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
                        lea              rdx, [rip + .S15]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n66_match_arbno_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx82_6]
                        push             rcx
                        push             rax;                                 jmp   n68_match_fence0_α
.Lx82_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n66_match_arbno_β
n67_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_fence0_α:                                                           jmp   n69_match_defer_α
n68_match_fence0_β:                                                           jmp   n62_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx85_16
                        mov              rax, qword ptr [rdx + 0]
.Lx85_16:               test             rax, rax;                            jz    .Lx85_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx85_5]
                        push             rcx
                        lea              rcx, [rip + .Lx85_4]
                        push             rcx;                                 jmp   rax
.Lx85_4:                                                                      jmp   n62_match_arbno_as
.Lx85_5:                                                                      jmp   n62_match_arbno_af
.Lx85_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S16]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n62_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx85_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_arbno_as
.Lx85_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_arbno_af
n69_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx85_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx85_12
                                                                              jmp   rax
.Lx85_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8;                              jne   .Lx86_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx86_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx86_10
.Lx86_9:                cmp              eax, 88;                             jne   .Lx86_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx86_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx86_10
.Lx86_21:               xor              eax, eax
.Lx86_10:               test             rax, rax;                            jz    .Lx86_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx86_5]
                        push             rcx
                        lea              rcx, [rip + .Lx86_4]
                        push             rcx;                                 jmp   rax
.Lx86_4:                                                                      jmp   n71_match_fence0_α
.Lx86_5:                                                                      jmp   n66_match_arbno_af
.Lx86_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n66_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx86_6]
                        push             rcx
                        push             rax;                                 jmp   n71_match_fence0_α
.Lx86_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n66_match_arbno_af
n70_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx86_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx86_12
                                                                              jmp   rax
.Lx86_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_fence0_α:                                                           jmp   n66_match_arbno_as
n71_match_fence0_β:                                                           jmp   n66_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   PAT$4_ω
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 50
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 50
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ListValue"
.Lgvan1:                .string          "x"
.Lgvan2:                .string          "place"
.Lgvan3:                .string          "ListName"
.Lgvan4:                .string          "ListAppend"
.Lgvan5:                .string          "item"
.Lgvan6:                .string          "ListPrepend"
.Lgvan7:                .string          "ListInsert"
.Lgvan8:                .string          "a"
.Lgvan9:                .string          "i"
.Lgvan10:               .string          "size"
.Lgvan11:               .string          "ListRemove"
.Lgvan12:               .string          "ListPop"
.Lgvan13:               .string          "ListSize"
.Lgvan14:               .string          "Init_list"
.Lgvan15:               .string          "vs"
.Lgvan16:               .string          "init_list"
.Lgvan17:               .string          "v"
.Lgvan18:               .string          "Push_list"
.Lgvan19:               .string          "push_list"
.Lgvan20:               .string          "Push_item"
.Lgvan21:               .string          "push_item"
.Lgvan22:               .string          "Pop_list"
.Lgvan23:               .string          "pop_list"
.Lgvan24:               .string          "Pop_final"
.Lgvan25:               .string          "pop_final"
.Lgvan26:               .string          "epsilon"
.Lgvan27:               .string          "tags"
.Lgvan28:               .string          "stack"
.Lgvan29:               .string          "dummy"
.Lgvan30:               .string          "delim"
.Lgvan31:               .string          "word"
.Lgvan32:               .string          "group"
.Lgvan33:               .string          "tag"
.Lgvan34:               .string          "wrd"
.Lgvan35:               .string          "treebank"
.Lgvan36:               .string          "src"
.Lgvan37:               .string          "PAT$0$V0"
.Lgvan38:               .string          "PAT$3$V0"
.Lgvan39:               .string          "PAT$3$V1"
.Lgvan40:               .string          "PAT$3$V2"
.Lgvan41:               .string          "PAT$3$V3"
.Lgvan42:               .string          "PAT$3$V4"
.Lgvan43:               .string          "PAT$3$V5"
.Lgvan44:               .string          "PAT$4$V0"
.Lgvan45:               .string          "PAT$4$V1"
.Lgvan46:               .string          "PAT$4$V2"
.Lgvan47:               .string          "PAT$4$V3"
.Lgvan48:               .string          "PAT$4$V4"
.Lgvan49:               .string          "PAT$4$V5"
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
                        .quad            .Lgvan41
                        .quad            .Lgvan42
                        .quad            .Lgvan43
                        .quad            .Lgvan44
                        .quad            .Lgvan45
                        .quad            .Lgvan46
                        .quad            .Lgvan47
                        .quad            .Lgvan48
                        .quad            .Lgvan49
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#                 DATA('list(n,a)')
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:                                                        jmp   n90_lit_string_α
n89_statement_begin_β:                                                        jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_α
.Lx725_0:               .quad            .Lx725_0_s
.Lx725_0_s:             .string          "list(n,a)"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd727:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd727]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx726_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx726_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_statement_end_α
n91_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    add              rsp, 32;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListValue(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:                                                        jmp   n94_define_α
n93_statement_begin_β:                                                        jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_define_α:           mov              rdi, qword ptr [rip + .Lx733_0]
                        mov              rsi, qword ptr [rip + .Lx733_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n117_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx733_0]
                        lea              rsi, [rip + ListValue_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_statement_end_α
n94_define_β:                                                                 jmp   n93_statement_begin_β
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "ListValue"
.Lx733_1:               .quad            .Lx733_1_s
.Lx733_1_s:             .string          "x,place"
                                                                              jmp   .Lx734_245
#-----------------------------------------------------------------------------------------------------------------------
ListValue_α:            sub              rsp, 80
                        mov              rax, qword ptr [r9 + 0]              # ListValue
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx734_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx734_41
.Lx734_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx734_41:              cmp              rdx, 1;                              jbe   .Lx734_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx734_42
.Lx734_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx734_42:              lea              r10, [rip + ListValue_γ]
                        lea              r11, [rip + ListValue_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n117_statement_begin_α]; jmp   rax
ListValue_γ:            mov              rdi, qword ptr [r9 + 0]              # ListValue
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx734_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx734_110
.Lx734_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx734_110:             cmp              rdx, 1;                              jbe   .Lx734_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx734_111
.Lx734_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx734_111:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListValue_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx734_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx734_180
.Lx734_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx734_180:             cmp              rdx, 1;                              jbe   .Lx734_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx734_181
.Lx734_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx734_181:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx734_245:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:                                                          jmp   n96_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListName(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:                                                        jmp   n97_define_α
n96_statement_begin_β:                                                        jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_define_α:           mov              rdi, qword ptr [rip + .Lx740_0]
                        mov              rsi, qword ptr [rip + .Lx740_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n138_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx740_0]
                        lea              rsi, [rip + ListName_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_statement_end_α
n97_define_β:                                                                 jmp   n96_statement_begin_β
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "ListName"
.Lx740_1:               .quad            .Lx740_1_s
.Lx740_1_s:             .string          "x,place"
                                                                              jmp   .Lx741_245
#-----------------------------------------------------------------------------------------------------------------------
ListName_α:             sub              rsp, 80
                        mov              rax, qword ptr [r9 + 48]             # ListName
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx741_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx741_41
.Lx741_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx741_41:              cmp              rdx, 1;                              jbe   .Lx741_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx741_42
.Lx741_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx741_42:              lea              r10, [rip + ListName_γ]
                        lea              r11, [rip + ListName_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n138_statement_begin_α]; jmp   rax
ListName_γ:             mov              rdi, qword ptr [r9 + 48]             # ListName
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx741_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx741_110
.Lx741_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx741_110:             cmp              rdx, 1;                              jbe   .Lx741_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx741_111
.Lx741_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx741_111:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListName_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx741_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx741_180
.Lx741_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx741_180:             cmp              rdx, 1;                              jbe   .Lx741_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx741_181
.Lx741_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx741_181:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx741_245:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:                                                          jmp   n99_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListAppend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:                                                        jmp   n100_define_α
n99_statement_begin_β:                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_define_α:          mov              rdi, qword ptr [rip + .Lx747_0]
                        mov              rsi, qword ptr [rip + .Lx747_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n158_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx747_0]
                        lea              rsi, [rip + ListAppend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_statement_end_α
n100_define_β:                                                                jmp   n99_statement_begin_β
.Lx747_0:               .quad            .Lx747_0_s
.Lx747_0_s:             .string          "ListAppend"
.Lx747_1:               .quad            .Lx747_1_s
.Lx747_1_s:             .string          "x,item"
                                                                              jmp   .Lx748_245
#-----------------------------------------------------------------------------------------------------------------------
ListAppend_α:           sub              rsp, 80
                        mov              rax, qword ptr [r9 + 64]             # ListAppend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx748_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx748_41
.Lx748_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx748_41:              cmp              rdx, 1;                              jbe   .Lx748_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx748_42
.Lx748_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx748_42:              lea              r10, [rip + ListAppend_γ]
                        lea              r11, [rip + ListAppend_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n158_statement_begin_α]; jmp   rax
ListAppend_γ:           mov              rdi, qword ptr [r9 + 64]             # ListAppend
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx748_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx748_110
.Lx748_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx748_110:             cmp              rdx, 1;                              jbe   .Lx748_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx748_111
.Lx748_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx748_111:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListAppend_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx748_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx748_180
.Lx748_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx748_180:             cmp              rdx, 1;                              jbe   .Lx748_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx748_181
.Lx748_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx748_181:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx748_245:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:                                                         jmp   n102_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPrepend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:                                                       jmp   n103_define_α
n102_statement_begin_β:                                                       jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_define_α:          mov              rdi, qword ptr [rip + .Lx754_0]
                        mov              rsi, qword ptr [rip + .Lx754_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n166_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx754_0]
                        lea              rsi, [rip + ListPrepend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_statement_end_α
n103_define_β:                                                                jmp   n102_statement_begin_β
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "ListPrepend"
.Lx754_1:               .quad            .Lx754_1_s
.Lx754_1_s:             .string          "x,item"
                                                                              jmp   .Lx755_245
#-----------------------------------------------------------------------------------------------------------------------
ListPrepend_α:          sub              rsp, 80
                        mov              rax, qword ptr [r9 + 96]             # ListPrepend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx755_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx755_41
.Lx755_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx755_41:              cmp              rdx, 1;                              jbe   .Lx755_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx755_42
.Lx755_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx755_42:              lea              r10, [rip + ListPrepend_γ]
                        lea              r11, [rip + ListPrepend_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n166_statement_begin_α]; jmp   rax
ListPrepend_γ:          mov              rdi, qword ptr [r9 + 96]             # ListPrepend
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx755_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx755_110
.Lx755_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx755_110:             cmp              rdx, 1;                              jbe   .Lx755_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx755_111
.Lx755_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx755_111:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListPrepend_ω:          mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx755_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx755_180
.Lx755_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx755_180:             cmp              rdx, 1;                              jbe   .Lx755_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx755_181
.Lx755_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx755_181:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx755_245:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:                                                         jmp   n105_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListInsert(x,item,place)a,i,size')
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α:                                                       jmp   n106_define_α
n105_statement_begin_β:                                                       jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_define_α:          mov              rdi, qword ptr [rip + .Lx761_0]
                        mov              rsi, qword ptr [rip + .Lx761_1]
                        mov              edx, 6
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + n173_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx761_0]
                        lea              rsi, [rip + ListInsert_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_statement_end_α
n106_define_β:                                                                jmp   n105_statement_begin_β
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "ListInsert"
.Lx761_1:               .quad            .Lx761_1_s
.Lx761_1_s:             .string          "x,item,place,a,i,size"
                                                                              jmp   .Lx762_245
#-----------------------------------------------------------------------------------------------------------------------
ListInsert_α:           sub              rsp, 144
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 112]            # ListInsert
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 64], r10
                        mov              qword ptr [rsp + 72], r11
                        mov              qword ptr [rsp + 80], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        cmp              rdx, 0;                              jbe   .Lx762_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx762_41
.Lx762_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx762_41:              cmp              rdx, 1;                              jbe   .Lx762_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx762_42
.Lx762_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx762_42:              cmp              rdx, 2;                              jbe   .Lx762_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx762_43
.Lx762_12:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx762_43:              lea              r10, [rip + ListInsert_γ]
                        lea              r11, [rip + ListInsert_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n173_statement_begin_α]; jmp   rax
ListInsert_γ:           mov              rdi, qword ptr [r9 + 112]            # ListInsert
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx762_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx762_110
.Lx762_80:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx762_110:             cmp              rdx, 1;                              jbe   .Lx762_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx762_111
.Lx762_81:              mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx762_111:             cmp              rdx, 2;                              jbe   .Lx762_82
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx762_112
.Lx762_82:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx762_112:             mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 144
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListInsert_ω:           mov              rcx, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 120], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 152], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rdx, 0;                              jbe   .Lx762_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx762_180
.Lx762_150:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx762_180:             cmp              rdx, 1;                              jbe   .Lx762_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx762_181
.Lx762_151:             mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx762_181:             cmp              rdx, 2;                              jbe   .Lx762_152
                        mov              r11, qword ptr [rcx + 40]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx762_182
.Lx762_152:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx762_182:             mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 144
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx762_245:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:                                                         jmp   n108_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListRemove(x,place)i,size')
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α:                                                       jmp   n109_define_α
n108_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_define_α:          mov              rdi, qword ptr [rip + .Lx768_0]
                        mov              rsi, qword ptr [rip + .Lx768_1]
                        mov              edx, 4
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n356_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx768_0]
                        lea              rsi, [rip + ListRemove_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_statement_end_α
n109_define_β:                                                                jmp   n108_statement_begin_β
.Lx768_0:               .quad            .Lx768_0_s
.Lx768_0_s:             .string          "ListRemove"
.Lx768_1:               .quad            .Lx768_1_s
.Lx768_1_s:             .string          "x,place,i,size"
                                                                              jmp   .Lx769_245
#-----------------------------------------------------------------------------------------------------------------------
ListRemove_α:           sub              rsp, 112
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 160], 0
                        mov              qword ptr [r9 + 168], 0
                        mov              rax, qword ptr [r9 + 176]            # ListRemove
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [r9 + 176], 0
                        mov              qword ptr [r9 + 184], 0
                        mov              qword ptr [rsp + 48], r10
                        mov              qword ptr [rsp + 56], r11
                        mov              qword ptr [rsp + 64], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        cmp              rdx, 0;                              jbe   .Lx769_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx769_41
.Lx769_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx769_41:              cmp              rdx, 1;                              jbe   .Lx769_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx769_42
.Lx769_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx769_42:              lea              r10, [rip + ListRemove_γ]
                        lea              r11, [rip + ListRemove_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n356_statement_begin_α]; jmp   rax
ListRemove_γ:           mov              rdi, qword ptr [r9 + 176]            # ListRemove
                        mov              rsi, qword ptr [r9 + 184]
                        mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx769_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx769_110
.Lx769_80:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx769_110:             cmp              rdx, 1;                              jbe   .Lx769_81
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx769_111
.Lx769_81:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx769_111:             mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 112
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListRemove_ω:           mov              rcx, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 184], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 168], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rdx, 0;                              jbe   .Lx769_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx769_180
.Lx769_150:             mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx769_180:             cmp              rdx, 1;                              jbe   .Lx769_151
                        mov              r11, qword ptr [rcx + 32]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx769_181
.Lx769_151:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx769_181:             mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 112
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx769_245:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:                                                         jmp   n111_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPop(x)')
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_define_α
n111_statement_begin_β:                                                       jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_define_α:          mov              rdi, qword ptr [rip + .Lx775_0]
                        mov              rsi, qword ptr [rip + .Lx775_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n442_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx775_0]
                        lea              rsi, [rip + ListPop_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_statement_end_α
n112_define_β:                                                                jmp   n111_statement_begin_β
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "ListPop"
.Lx775_1:               .quad            .Lx775_1_s
.Lx775_1_s:             .string          "x"
                                                                              jmp   .Lx776_245
#-----------------------------------------------------------------------------------------------------------------------
ListPop_α:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 192]            # ListPop
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx776_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx776_41
.Lx776_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx776_41:              lea              r10, [rip + ListPop_γ]
                        lea              r11, [rip + ListPop_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n442_statement_begin_α]; jmp   rax
ListPop_γ:              mov              rdi, qword ptr [r9 + 192]            # ListPop
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx776_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx776_110
.Lx776_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx776_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListPop_ω:              mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx776_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx776_180
.Lx776_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx776_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx776_245:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:                                                         jmp   n114_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListSize(x)')                                   :(ListEnd)
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                                       jmp   n115_define_α
n114_statement_begin_β:                                                       jmp   n474_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_define_α:          mov              rdi, qword ptr [rip + .Lx782_0]
                        mov              rsi, qword ptr [rip + .Lx782_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n449_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx782_0]
                        lea              rsi, [rip + ListSize_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_statement_end_α
n115_define_β:                                                                jmp   n114_statement_begin_β
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "ListSize"
.Lx782_1:               .quad            .Lx782_1_s
.Lx782_1_s:             .string          "x"
                                                                              jmp   .Lx783_245
#-----------------------------------------------------------------------------------------------------------------------
ListSize_α:             sub              rsp, 64
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx783_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx783_41
.Lx783_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx783_41:              lea              r10, [rip + ListSize_γ]
                        lea              r11, [rip + ListSize_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n449_statement_begin_α]; jmp   rax
ListSize_γ:             mov              rdi, qword ptr [r9 + 208]            # ListSize
                        mov              rsi, qword ptr [r9 + 216]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx783_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx783_110
.Lx783_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx783_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ListSize_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx783_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx783_180
.Lx783_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx783_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx783_245:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:                                                         jmp   n474_statement_begin_α
#=======================================================================================================================
# ListValue       place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α:                                                       jmp   n118_var_α
n117_statement_begin_β:                                                       jmp   n130_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
n119_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx789_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx791_1
                        cmp              eax, 3;                              jne   .Lx791_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx791_0
.Lx791_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_coerce_numeric_α
.Lx791_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_coerce_numeric_α
n120_coerce_numeric_β:  add              rsp, 16;                             jmp   n119_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx793_1
                        cmp              eax, 3;                              jne   .Lx793_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx793_0
.Lx793_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_cmp_test_α
.Lx793_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_cmp_test_α
n121_coerce_numeric_β:  add              rsp, 16;                             jmp   n120_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n122_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx795_240
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx795_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n123_var_α
n122_cmp_test_β:        add              rsp, 16;                             jmp   n121_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_call_α
n123_var_β:             add              rsp, 16;                             jmp   n122_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd798:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd798]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx797_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lx797_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_call_β:            add              rsp, 16;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_var_β:             add              rsp, 32;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx800_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx800_7
.Lx800_2:               and              edx, 1;                              jz    .Lx800_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx800_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx800_4
.Lx800_3:               movq             xmm0, rsi
.Lx800_4:               cmp              ecx, 5;                              je    .Lx800_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx800_6
.Lx800_5:               movq             xmm1, rdi
.Lx800_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx800_7:                                                                     jmp   n127_binop_α
.Lx800_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx800_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx800_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_binop_α
n126_binop_β:           add              rsp, 16;                             jmp   n125_var_β
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # cmp_test
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n129_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 160;                            jmp   n130_statement_begin_α
#=======================================================================================================================
#                 ListValue       =   a(x)[place]                         :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α:                                                       jmp   n131_var_α
n130_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_call_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd809:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd809]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx808_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_var_α
n132_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_subscript_α
n133_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n130_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n134_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx811_240
                        add              rsp, 16;                             jmp   n133_var_β
.Lx811_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_deref_α
n134_subscript_β:       add              rsp, 16;                             jmp   n133_var_β
#-----------------------------------------------------------------------------------------------------------------------
n135_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx812_240
                        add              rsp, 16;                             jmp   n134_subscript_β
.Lx812_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              qword ptr [r9 + 8], rdx;             jmp   n137_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListName        place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α:                                                       jmp   n139_var_α
n138_statement_begin_β:                                                       jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_coerce_numeric_α
n140_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
.Lx819_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx821_1
                        cmp              eax, 3;                              jne   .Lx821_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx821_0
.Lx821_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_coerce_numeric_α
.Lx821_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_coerce_numeric_α
n141_coerce_numeric_β:  add              rsp, 16;                             jmp   n140_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx823_1
                        cmp              eax, 3;                              jne   .Lx823_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx823_0
.Lx823_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_cmp_test_α
.Lx823_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_cmp_test_α
n142_coerce_numeric_β:  add              rsp, 16;                             jmp   n141_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n143_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx825_240
                        add              rsp, 16;                             jmp   n142_coerce_numeric_β
.Lx825_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n144_var_α
n143_cmp_test_β:        add              rsp, 16;                             jmp   n142_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_call_α
n144_var_β:             add              rsp, 16;                             jmp   n143_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd828:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd828]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx827_240
                        add              rsp, 16;                             jmp   n144_var_β
.Lx827_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_var_α
n145_call_β:            add              rsp, 16;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_binop_α
n146_var_β:             add              rsp, 32;                             jmp   n144_var_β
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx830_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx830_7
.Lx830_2:               and              edx, 1;                              jz    .Lx830_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx830_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx830_4
.Lx830_3:               movq             xmm0, rsi
.Lx830_4:               cmp              ecx, 5;                              je    .Lx830_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx830_6
.Lx830_5:               movq             xmm1, rdi
.Lx830_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx830_7:                                                                     jmp   n148_binop_α
.Lx830_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx830_240
                        add              rsp, 16;                             jmp   n146_var_β
.Lx830_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_binop_α
n147_binop_β:           add              rsp, 16;                             jmp   n146_var_β
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # cmp_test
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   add              rsp, 160;                            jmp   n151_statement_begin_α
#=======================================================================================================================
#                 ListName        =   .a(x)[place]                        :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α:                                                       jmp   n152_var_α
n151_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_call_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd839:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd839]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx838_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
.Lx838_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_var_α
n153_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_subscript_α
n154_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n151_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n155_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx841_240
                        add              rsp, 16;                             jmp   n154_var_β
.Lx841_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              qword ptr [r9 + 56], rdx;            jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListAppend      ListAppend      =   ListInsert(x, item, n(x))     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:                                                       jmp   n159_var_α
n158_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_var_α
n160_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_call_α
n161_var_β:             add              rsp, 16;                             jmp   n160_var_β
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd851:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd851]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx850_240
                        add              rsp, 16;                             jmp   n161_var_β
.Lx850_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_call_α
n162_call_β:            add              rsp, 16;                             jmp   n161_var_β
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig853z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig853z:              .quad            3
                        .quad            .Lx853_2
                        .quad            .Lx853_2
                        .quad            64
                        .quad            48
                        .quad            16
.Lx853_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx853_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx853_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx853_240
                        add              rsp, 32;                             jmp   n161_var_β
.Lx853_240:                                                                   jmp   n164_assign_α
n163_call_β:                                                                  jmp   n161_var_β
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              qword ptr [r9 + 72], rdx;            jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListPrepend     ListPrepend     =   ListInsert(x, item, 0)              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                                       jmp   n167_var_α
n166_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_lit_integer_α
n168_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n166_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_α
n169_lit_integer_β:     add              rsp, 16;                             jmp   n168_var_β
.Lx861_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig863z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig863z:              .quad            3
                        .quad            .Lx863_2
                        .quad            .Lx863_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx863_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx863_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx863_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx863_240
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lx863_240:                                                                   jmp   n171_assign_α
n170_call_β:                                                                  jmp   n169_lit_integer_β
.Lx863_0:               .quad            .Lx863_0_s
.Lx863_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              qword ptr [r9 + 104], rdx;           jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListInsert      ListInsert      =   x
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:                                                       jmp   n174_var_α
n173_statement_begin_β:                                                       jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              qword ptr [r9 + 120], rdx;           jmp   n176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 16;                             jmp   n177_statement_begin_α
#=======================================================================================================================
#                 size            =   ListSize(x)
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:                                                       jmp   n178_var_α
n177_statement_begin_β:                                                       jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_call_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig877z]
                        lea              rax, [rip + ListSize_α];             jmp   rax
.Lsig877z:              .quad            1
                        .quad            .Lx877_2
                        .quad            .Lx877_2
                        .quad            16
.Lx877_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx877_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx877_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx877_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
.Lx877_240:                                                                   jmp   n180_assign_α
n179_call_β:                                                                  jmp   n177_statement_begin_β
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          "ListSize"
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              qword ptr [r9 + 168], rdx;           jmp   n181_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   add              rsp, 32;                             jmp   n182_statement_begin_α
#=======================================================================================================================
#                 place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α:                                                       jmp   n183_var_α
n182_statement_begin_β:                                                       jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_coerce_numeric_α
n184_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n182_statement_begin_β
.Lx884_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx886_1
                        cmp              eax, 3;                              jne   .Lx886_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx886_0
.Lx886_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_coerce_numeric_α
.Lx886_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_coerce_numeric_α
n185_coerce_numeric_β:  add              rsp, 16;                             jmp   n184_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n186_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx888_1
                        cmp              eax, 3;                              jne   .Lx888_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx888_0
.Lx888_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_cmp_test_α
.Lx888_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_cmp_test_α
n186_coerce_numeric_β:  add              rsp, 16;                             jmp   n185_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n187_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx890_240
                        add              rsp, 16;                             jmp   n186_coerce_numeric_β
.Lx890_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n188_var_α
n187_cmp_test_β:        add              rsp, 16;                             jmp   n186_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_call_α
n188_var_β:             add              rsp, 16;                             jmp   n187_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd893:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd893]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx892_240
                        add              rsp, 16;                             jmp   n188_var_β
.Lx892_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_var_α
n189_call_β:            add              rsp, 16;                             jmp   n188_var_β
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_binop_α
n190_var_β:             add              rsp, 32;                             jmp   n188_var_β
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx895_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx895_7
.Lx895_2:               and              edx, 1;                              jz    .Lx895_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx895_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx895_4
.Lx895_3:               movq             xmm0, rsi
.Lx895_4:               cmp              ecx, 5;                              je    .Lx895_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx895_6
.Lx895_5:               movq             xmm1, rdi
.Lx895_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx895_7:                                                                     jmp   n192_binop_α
.Lx895_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx895_240
                        add              rsp, 16;                             jmp   n190_var_β
.Lx895_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_binop_α
n191_binop_β:           add              rsp, 16;                             jmp   n190_var_β
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # cmp_test
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n193_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 160;                            jmp   n195_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                                       jmp   n196_var_α
n195_statement_begin_β:                                                       jmp   n716_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_coerce_numeric_α
n197_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n195_statement_begin_β
.Lx903_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n198_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx905_1
                        cmp              eax, 3;                              jne   .Lx905_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx905_0
.Lx905_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_coerce_numeric_α
.Lx905_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_coerce_numeric_α
n198_coerce_numeric_β:  add              rsp, 16;                             jmp   n197_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n199_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx907_1
                        cmp              eax, 3;                              jne   .Lx907_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx907_0
.Lx907_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_cmp_test_α
.Lx907_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_cmp_test_α
n199_coerce_numeric_β:  add              rsp, 16;                             jmp   n198_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n200_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx909_240
                        add              rsp, 16;                             jmp   n199_coerce_numeric_β
.Lx909_240:                                                                   jmp   n201_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   add              rsp, 80;                             jmp   n202_statement_begin_α
#=======================================================================================================================
#                 LE(place, n(x))                                         :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:                                                       jmp   n203_var_α
n202_statement_begin_β:                                                       jmp   n716_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_call_α
n204_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd917:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd917]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx916_240
                        add              rsp, 16;                             jmp   n204_var_β
.Lx916_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_coerce_numeric_α
n205_call_β:            add              rsp, 16;                             jmp   n204_var_β
#-----------------------------------------------------------------------------------------------------------------------
n206_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 5;                              je    .Lx919_1
                        cmp              eax, 3;                              jne   .Lx919_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              eax, 3;                              jne   .Lx919_0
.Lx919_1:               mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_coerce_numeric_α
.Lx919_0:               lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n207_coerce_numeric_α
n206_coerce_numeric_β:  add              rsp, 32;                             jmp   n204_var_β
#-----------------------------------------------------------------------------------------------------------------------
n207_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx921_1
                        cmp              eax, 3;                              jne   .Lx921_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              eax, 3;                              jne   .Lx921_0
.Lx921_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_cmp_test_α
.Lx921_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n208_cmp_test_α
n207_coerce_numeric_β:  add              rsp, 16;                             jmp   n206_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n208_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jle   .Lx923_240
                        add              rsp, 16;                             jmp   n207_coerce_numeric_β
.Lx923_240:                                                                   jmp   n209_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   add              rsp, 96;                             jmp   n210_statement_begin_α
#=======================================================================================================================
#                 LT(n(x), size)                                          :F(ListInsert4)
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_begin_α:                                                       jmp   n211_var_α
n210_statement_begin_β:                                                       jmp   n263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_call_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd930:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd930]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx929_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
.Lx929_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_var_α
n212_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_coerce_numeric_α
n213_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n210_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx933_1
                        cmp              eax, 3;                              jne   .Lx933_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx933_0
.Lx933_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_coerce_numeric_α
.Lx933_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_coerce_numeric_α
n214_coerce_numeric_β:  add              rsp, 16;                             jmp   n213_var_β
#-----------------------------------------------------------------------------------------------------------------------
n215_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx935_1
                        cmp              eax, 3;                              jne   .Lx935_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx935_0
.Lx935_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_cmp_test_α
.Lx935_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_cmp_test_α
n215_coerce_numeric_β:  add              rsp, 16;                             jmp   n214_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n216_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx937_240
                        add              rsp, 16;                             jmp   n215_coerce_numeric_β
.Lx937_240:                                                                   jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   add              rsp, 96;                             jmp   n218_statement_begin_α
#=======================================================================================================================
#                 i               =   n(x) + 1
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α:                                                       jmp   n219_var_α
n218_statement_begin_β:                                                       jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_call_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd944:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd944]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx943_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
.Lx943_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_lit_integer_α
n220_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_binop_α
n221_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n218_statement_begin_β
.Lx945_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx946_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx946_7
.Lx946_2:               and              edx, 1;                              jz    .Lx946_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx946_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx946_4
.Lx946_3:               movq             xmm0, rsi
.Lx946_4:               cmp              ecx, 5;                              je    .Lx946_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx946_6
.Lx946_5:               movq             xmm1, rdi
.Lx946_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx946_7:                                                                     jmp   n223_assign_α
.Lx946_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx946_240
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lx946_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n224_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   add              rsp, 64;                             jmp   n225_statement_begin_α
#=======================================================================================================================
# ListInsert1     i               =   GT(i, place + 1) i - 1              :F(ListInsert2)
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α:                                                       jmp   n226_var_α
n225_statement_begin_β:                                                       jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_lit_integer_α
n227_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_binop_α
n228_lit_integer_β:     add              rsp, 16;                             jmp   n227_var_β
.Lx954_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx955_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx955_7
.Lx955_2:               and              edx, 1;                              jz    .Lx955_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx955_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx955_4
.Lx955_3:               movq             xmm0, rsi
.Lx955_4:               cmp              ecx, 5;                              je    .Lx955_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx955_6
.Lx955_5:               movq             xmm1, rdi
.Lx955_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx955_7:                                                                     jmp   n230_coerce_numeric_α
.Lx955_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx955_240
                        add              rsp, 16;                             jmp   n228_lit_integer_β
.Lx955_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_coerce_numeric_α
n229_binop_β:           add              rsp, 16;                             jmp   n228_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n230_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              eax, 5;                              je    .Lx957_1
                        cmp              eax, 3;                              jne   .Lx957_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx957_0
.Lx957_1:               mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_coerce_numeric_α
.Lx957_0:               lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n231_coerce_numeric_α
n230_coerce_numeric_β:  add              rsp, 16;                             jmp   n229_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n231_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx959_1
                        cmp              eax, 3;                              jne   .Lx959_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              eax, 3;                              jne   .Lx959_0
.Lx959_1:               mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_cmp_test_α
.Lx959_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_cmp_test_α
n231_coerce_numeric_β:  add              rsp, 16;                             jmp   n230_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n232_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx961_240
                        add              rsp, 16;                             jmp   n231_coerce_numeric_β
.Lx961_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n233_var_α
n232_cmp_test_β:        add              rsp, 16;                             jmp   n231_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_lit_integer_α
n233_var_β:             add              rsp, 16;                             jmp   n232_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_binop_α
n234_lit_integer_β:     add              rsp, 16;                             jmp   n233_var_β
.Lx963_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx964_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx964_7
.Lx964_2:               and              edx, 1;                              jz    .Lx964_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx964_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx964_4
.Lx964_3:               movq             xmm0, rsi
.Lx964_4:               cmp              ecx, 5;                              je    .Lx964_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx964_6
.Lx964_5:               movq             xmm1, rdi
.Lx964_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx964_7:                                                                     jmp   n236_binop_α
.Lx964_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx964_240
                        add              rsp, 16;                             jmp   n234_lit_integer_β
.Lx964_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n236_binop_α
n235_binop_β:           add              rsp, 16;                             jmp   n234_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n237_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n238_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   add              rsp, 176;                            jmp   n239_statement_begin_α
#=======================================================================================================================
#                 a(x)[i]         =   a(x)[i - 1]                         :(ListInsert1)
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α:                                                       jmp   n240_var_α
n239_statement_begin_β:                                                       jmp   n225_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd973:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd973]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx972_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
n241_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_subscript_α
n242_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n239_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n243_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx975_240
                        add              rsp, 16;                             jmp   n242_var_β
.Lx975_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_var_α
n243_subscript_β:       add              rsp, 16;                             jmp   n242_var_β
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_call_α
n244_var_β:             add              rsp, 16;                             jmp   n243_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd978:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd978]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx977_240
                        add              rsp, 16;                             jmp   n244_var_β
.Lx977_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_var_α
n245_call_β:            add              rsp, 16;                             jmp   n244_var_β
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_lit_integer_α
n246_var_β:             add              rsp, 32;                             jmp   n244_var_β
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_binop_α
n247_lit_integer_β:     add              rsp, 16;                             jmp   n246_var_β
.Lx980_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n248_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx981_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx981_7
.Lx981_2:               and              edx, 1;                              jz    .Lx981_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx981_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx981_4
.Lx981_3:               movq             xmm0, rsi
.Lx981_4:               cmp              ecx, 5;                              je    .Lx981_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx981_6
.Lx981_5:               movq             xmm1, rdi
.Lx981_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx981_7:                                                                     jmp   n249_subscript_α
.Lx981_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx981_240
                        add              rsp, 16;                             jmp   n247_lit_integer_β
.Lx981_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_subscript_α
n248_binop_β:           add              rsp, 16;                             jmp   n247_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n249_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx982_240
                        add              rsp, 16;                             jmp   n248_binop_β
.Lx982_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_deref_α
n249_subscript_β:       add              rsp, 16;                             jmp   n248_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx983_240
                        add              rsp, 16;                             jmp   n249_subscript_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_assign_var_α
n250_deref_β:           add              rsp, 16;                             jmp   n249_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx984_240
                        add              rsp, 16;                             jmp   n250_deref_β
.Lx984_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   add              rsp, 192;                            jmp   n225_statement_begin_α
#=======================================================================================================================
# ListInsert2     a(x)[i - 1]     =   item                                :(ListInsert9)
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α:                                                       jmp   n254_var_α
n253_statement_begin_β:                                                       jmp   n347_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_call_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd991:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd991]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx990_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n253_statement_begin_β
.Lx990_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n253_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_lit_integer_α
n256_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n253_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_binop_α
n257_lit_integer_β:     add              rsp, 16;                             jmp   n256_var_β
.Lx993_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n258_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx994_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx994_7
.Lx994_2:               and              edx, 1;                              jz    .Lx994_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx994_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx994_4
.Lx994_3:               movq             xmm0, rsi
.Lx994_4:               cmp              ecx, 5;                              je    .Lx994_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx994_6
.Lx994_5:               movq             xmm1, rdi
.Lx994_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx994_7:                                                                     jmp   n259_subscript_α
.Lx994_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx994_240
                        add              rsp, 16;                             jmp   n257_lit_integer_β
.Lx994_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n259_subscript_α
n258_binop_β:           add              rsp, 16;                             jmp   n257_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n259_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx995_240
                        add              rsp, 16;                             jmp   n258_binop_β
.Lx995_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_var_α
n259_subscript_β:       add              rsp, 16;                             jmp   n258_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_assign_var_α
n260_var_β:             add              rsp, 16;                             jmp   n259_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx997_240
                        add              rsp, 16;                             jmp   n260_var_β
.Lx997_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   add              rsp, 128;                            jmp   n347_statement_begin_α
#=======================================================================================================================
# ListInsert4     a               =   ARRAY('0:' (IDENT(a(x)) 0, size * 2 - 1))
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α:                                                       jmp   n264_lit_string_α
n263_statement_begin_β:                                                       jmp   n274_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_var_α
.Lx1002_0:              .quad            .Lx1002_0_s
.Lx1002_0_s:            .string          "0:"
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_call_α
n265_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1005:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1005]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1004_240
                        add              rsp, 16;                             jmp   n265_var_β
.Lx1004_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_call_β:            add              rsp, 16;                             jmp   n265_var_β
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1007:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1007]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1006_240
                        add              rsp, 32;                             jmp   n265_var_β
.Lx1006_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_lit_integer_α
n267_call_β:            add              rsp, 32;                             jmp   n265_var_β
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_binop_α
n268_lit_integer_β:     add              rsp, 48;                             jmp   n265_var_β
.Lx1008_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n270_binop_α
n269_binop_β:           add              rsp, 16;                             jmp   n268_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # lit_string
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_call_α
n270_binop_β:           add              rsp, 16;                             jmp   n269_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1012:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1012]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1011_240
                        add              rsp, 16;                             jmp   n270_binop_β
.Lx1011_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_assign_α
n271_call_β:            add              rsp, 16;                             jmp   n270_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              qword ptr [r9 + 136], rdx;           jmp   n273_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   add              rsp, 128;                            jmp   n274_statement_begin_α
#=======================================================================================================================
#                 i               =   -1
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α:                                                       jmp   n275_lit_integer_α
n274_statement_begin_β:                                                       jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_unop_α
.Lx1018_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n276_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n278_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_end_α:   add              rsp, 32;                             jmp   n279_statement_begin_α
#=======================================================================================================================
# ListInsert5     i               =   LT(i, place - 1) i + 1              :F(ListInsert6)
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_begin_α:                                                       jmp   n280_var_α
n279_statement_begin_β:                                                       jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n281_var_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_lit_integer_α
n281_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n279_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_binop_α
n282_lit_integer_β:     add              rsp, 16;                             jmp   n281_var_β
.Lx1027_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n283_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1028_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1028_7
.Lx1028_2:              and              edx, 1;                              jz    .Lx1028_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1028_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1028_4
.Lx1028_3:              movq             xmm0, rsi
.Lx1028_4:              cmp              ecx, 5;                              je    .Lx1028_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1028_6
.Lx1028_5:              movq             xmm1, rdi
.Lx1028_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1028_7:                                                                    jmp   n284_coerce_numeric_α
.Lx1028_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1028_240
                        add              rsp, 16;                             jmp   n282_lit_integer_β
.Lx1028_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_coerce_numeric_α
n283_binop_β:           add              rsp, 16;                             jmp   n282_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n284_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              eax, 5;                              je    .Lx1030_1
                        cmp              eax, 3;                              jne   .Lx1030_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1030_0
.Lx1030_1:              mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_coerce_numeric_α
.Lx1030_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_coerce_numeric_α
n284_coerce_numeric_β:  add              rsp, 16;                             jmp   n283_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n285_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1032_1
                        cmp              eax, 3;                              jne   .Lx1032_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              eax, 3;                              jne   .Lx1032_0
.Lx1032_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_cmp_test_α
.Lx1032_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_cmp_test_α
n285_coerce_numeric_β:  add              rsp, 16;                             jmp   n284_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n286_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1034_240
                        add              rsp, 16;                             jmp   n285_coerce_numeric_β
.Lx1034_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n287_var_α
n286_cmp_test_β:        add              rsp, 16;                             jmp   n285_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_lit_integer_α
n287_var_β:             add              rsp, 16;                             jmp   n286_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1036_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_binop_α
n288_lit_integer_β:     add              rsp, 16;                             jmp   n287_var_β
.Lx1036_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1037_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1037_7
.Lx1037_2:              and              edx, 1;                              jz    .Lx1037_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1037_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1037_4
.Lx1037_3:              movq             xmm0, rsi
.Lx1037_4:              cmp              ecx, 5;                              je    .Lx1037_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1037_6
.Lx1037_5:              movq             xmm1, rdi
.Lx1037_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1037_7:                                                                    jmp   n290_binop_α
.Lx1037_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1037_240
                        add              rsp, 16;                             jmp   n288_lit_integer_β
.Lx1037_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n290_binop_α
n289_binop_β:           add              rsp, 16;                             jmp   n288_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n291_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n292_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_end_α:   add              rsp, 176;                            jmp   n293_statement_begin_α
#=======================================================================================================================
#                 a[i]            =   a(x)[i]                             :(ListInsert5)
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α:                                                       jmp   n294_var_α
n293_statement_begin_β:                                                       jmp   n279_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_subscript_α
n295_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n293_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n296_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1046_240
                        add              rsp, 16;                             jmp   n295_var_β
.Lx1046_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_var_α
n296_subscript_β:       add              rsp, 16;                             jmp   n295_var_β
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_call_α
n297_var_β:             add              rsp, 16;                             jmp   n296_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1049:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1049]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1048_240
                        add              rsp, 16;                             jmp   n297_var_β
.Lx1048_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_var_α
n298_call_β:            add              rsp, 16;                             jmp   n297_var_β
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_subscript_α
n299_var_β:             add              rsp, 32;                             jmp   n297_var_β
#-----------------------------------------------------------------------------------------------------------------------
n300_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1051_240
                        add              rsp, 16;                             jmp   n299_var_β
.Lx1051_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_deref_α
n300_subscript_β:       add              rsp, 16;                             jmp   n299_var_β
#-----------------------------------------------------------------------------------------------------------------------
n301_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1052_240
                        add              rsp, 16;                             jmp   n300_subscript_β
.Lx1052_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_assign_var_α
n301_deref_β:           add              rsp, 16;                             jmp   n300_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1053_240
                        add              rsp, 16;                             jmp   n301_deref_β
.Lx1053_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   add              rsp, 144;                            jmp   n279_statement_begin_α
#=======================================================================================================================
# ListInsert6     a[i + 1]        =   item
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α:                                                       jmp   n305_var_α
n304_statement_begin_β:                                                       jmp   n313_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_lit_integer_α
n306_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n304_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_binop_α
n307_lit_integer_β:     add              rsp, 16;                             jmp   n306_var_β
.Lx1060_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n308_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1061_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1061_7
.Lx1061_2:              and              edx, 1;                              jz    .Lx1061_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1061_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1061_4
.Lx1061_3:              movq             xmm0, rsi
.Lx1061_4:              cmp              ecx, 5;                              je    .Lx1061_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1061_6
.Lx1061_5:              movq             xmm1, rdi
.Lx1061_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1061_7:                                                                    jmp   n309_subscript_α
.Lx1061_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1061_240
                        add              rsp, 16;                             jmp   n307_lit_integer_β
.Lx1061_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n309_subscript_α
n308_binop_β:           add              rsp, 16;                             jmp   n307_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1062_240
                        add              rsp, 16;                             jmp   n308_binop_β
.Lx1062_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
n309_subscript_β:       add              rsp, 16;                             jmp   n308_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_assign_var_α
n310_var_β:             add              rsp, 16;                             jmp   n309_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1064_240
                        add              rsp, 16;                             jmp   n310_var_β
.Lx1064_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_end_α:   add              rsp, 112;                            jmp   n313_statement_begin_α
#=======================================================================================================================
# ListInsert7     i               =   LT(i, n(x) - 1) i + 1               :F(ListInsert8)
#-----------------------------------------------------------------------------------------------------------------------
n313_statement_begin_α:                                                       jmp   n314_var_α
n313_statement_begin_β:                                                       jmp   n341_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_call_α
n315_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n313_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1072:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1072]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1071_240
                        add              rsp, 16;                             jmp   n315_var_β
.Lx1071_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n317_lit_integer_α
n316_call_β:            add              rsp, 16;                             jmp   n315_var_β
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_binop_α
n317_lit_integer_β:     add              rsp, 32;                             jmp   n315_var_β
.Lx1073_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1074_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1074_7
.Lx1074_2:              and              edx, 1;                              jz    .Lx1074_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1074_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1074_4
.Lx1074_3:              movq             xmm0, rsi
.Lx1074_4:              cmp              ecx, 5;                              je    .Lx1074_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1074_6
.Lx1074_5:              movq             xmm1, rdi
.Lx1074_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1074_7:                                                                    jmp   n319_coerce_numeric_α
.Lx1074_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1074_240
                        add              rsp, 16;                             jmp   n317_lit_integer_β
.Lx1074_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n319_coerce_numeric_α
n318_binop_β:           add              rsp, 16;                             jmp   n317_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n319_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              eax, 5;                              je    .Lx1076_1
                        cmp              eax, 3;                              jne   .Lx1076_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1076_0
.Lx1076_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_coerce_numeric_α
.Lx1076_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_coerce_numeric_α
n319_coerce_numeric_β:  add              rsp, 16;                             jmp   n318_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n320_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1078_1
                        cmp              eax, 3;                              jne   .Lx1078_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              eax, 3;                              jne   .Lx1078_0
.Lx1078_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n321_cmp_test_α
.Lx1078_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_cmp_test_α
n320_coerce_numeric_β:  add              rsp, 16;                             jmp   n319_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n321_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1080_240
                        add              rsp, 16;                             jmp   n320_coerce_numeric_β
.Lx1080_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n322_var_α
n321_cmp_test_β:        add              rsp, 16;                             jmp   n320_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_integer_α
n322_var_β:             add              rsp, 16;                             jmp   n321_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1082_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_binop_α
n323_lit_integer_β:     add              rsp, 16;                             jmp   n322_var_β
.Lx1082_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1083_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1083_7
.Lx1083_2:              and              edx, 1;                              jz    .Lx1083_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1083_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1083_4
.Lx1083_3:              movq             xmm0, rsi
.Lx1083_4:              cmp              ecx, 5;                              je    .Lx1083_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1083_6
.Lx1083_5:              movq             xmm1, rdi
.Lx1083_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1083_7:                                                                    jmp   n325_binop_α
.Lx1083_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1083_240
                        add              rsp, 16;                             jmp   n323_lit_integer_β
.Lx1083_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n325_binop_α
n324_binop_β:           add              rsp, 16;                             jmp   n323_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n325_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n327_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_end_α:   add              rsp, 192;                            jmp   n328_statement_begin_α
#=======================================================================================================================
#                 a[i + 1]        =   a(x)[i]                             :(ListInsert7)
#-----------------------------------------------------------------------------------------------------------------------
n328_statement_begin_α:                                                       jmp   n329_var_α
n328_statement_begin_β:                                                       jmp   n313_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_var_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_lit_integer_α
n330_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n328_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n332_binop_α
n331_lit_integer_β:     add              rsp, 16;                             jmp   n330_var_β
.Lx1092_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n332_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1093_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1093_7
.Lx1093_2:              and              edx, 1;                              jz    .Lx1093_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1093_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1093_4
.Lx1093_3:              movq             xmm0, rsi
.Lx1093_4:              cmp              ecx, 5;                              je    .Lx1093_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1093_6
.Lx1093_5:              movq             xmm1, rdi
.Lx1093_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1093_7:                                                                    jmp   n333_subscript_α
.Lx1093_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1093_240
                        add              rsp, 16;                             jmp   n331_lit_integer_β
.Lx1093_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n333_subscript_α
n332_binop_β:           add              rsp, 16;                             jmp   n331_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n333_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1094_240
                        add              rsp, 16;                             jmp   n332_binop_β
.Lx1094_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_var_α
n333_subscript_β:       add              rsp, 16;                             jmp   n332_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_call_α
n334_var_β:             add              rsp, 16;                             jmp   n333_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1097:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1097]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1096_240
                        add              rsp, 16;                             jmp   n334_var_β
.Lx1096_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_var_α
n335_call_β:            add              rsp, 16;                             jmp   n334_var_β
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_subscript_α
n336_var_β:             add              rsp, 32;                             jmp   n334_var_β
#-----------------------------------------------------------------------------------------------------------------------
n337_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1099_240
                        add              rsp, 16;                             jmp   n336_var_β
.Lx1099_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_deref_α
n337_subscript_β:       add              rsp, 16;                             jmp   n336_var_β
#-----------------------------------------------------------------------------------------------------------------------
n338_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1100_240
                        add              rsp, 16;                             jmp   n337_subscript_β
.Lx1100_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_assign_var_α
n338_deref_β:           add              rsp, 16;                             jmp   n337_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n339_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1101_240
                        add              rsp, 16;                             jmp   n338_deref_β
.Lx1101_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n340_statement_end_α:   add              rsp, 176;                            jmp   n313_statement_begin_α
#=======================================================================================================================
# ListInsert8     a(x)            =   a
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_begin_α:                                                       jmp   n342_var_α
n341_statement_begin_β:                                                       jmp   n347_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1107_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lx1107_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_var_α
n343_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n341_statement_begin_β
.Lx1107_0:              .quad            .Lx1107_0_s
.Lx1107_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_assign_var_α
n344_var_β:             add              rsp, 16;                             jmp   n343_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1109_240
                        add              rsp, 16;                             jmp   n344_var_β
.Lx1109_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n346_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_end_α:   add              rsp, 64;                             jmp   n347_statement_begin_α
#=======================================================================================================================
# ListInsert9     n(x)            =   n(x) + 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_begin_α:                                                       jmp   n348_var_α
n347_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1115_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1115_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n347_statement_begin_β
.Lx1115_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_var_α
n349_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n347_statement_begin_β
.Lx1115_0:              .quad            .Lx1115_0_s
.Lx1115_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n351_call_α
n350_var_β:             add              rsp, 16;                             jmp   n349_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1118:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1118]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1117_240
                        add              rsp, 16;                             jmp   n350_var_β
.Lx1117_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n352_lit_integer_α
n351_call_β:            add              rsp, 16;                             jmp   n350_var_β
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_binop_α
n352_lit_integer_β:     add              rsp, 32;                             jmp   n350_var_β
.Lx1119_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1120_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1120_7
.Lx1120_2:              and              edx, 1;                              jz    .Lx1120_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1120_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1120_4
.Lx1120_3:              movq             xmm0, rsi
.Lx1120_4:              cmp              ecx, 5;                              je    .Lx1120_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1120_6
.Lx1120_5:              movq             xmm1, rdi
.Lx1120_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1120_7:                                                                    jmp   n354_assign_var_α
.Lx1120_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1120_240
                        add              rsp, 16;                             jmp   n352_lit_integer_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n354_assign_var_α
n353_binop_β:           add              rsp, 16;                             jmp   n352_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1121_240
                        add              rsp, 16;                             jmp   n353_binop_β
.Lx1121_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListRemove      place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_begin_α:                                                       jmp   n357_var_α
n356_statement_begin_β:                                                       jmp   n369_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_coerce_numeric_α
n358_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n356_statement_begin_β
.Lx1127_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n359_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1129_1
                        cmp              eax, 3;                              jne   .Lx1129_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1129_0
.Lx1129_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_coerce_numeric_α
.Lx1129_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n360_coerce_numeric_α
n359_coerce_numeric_β:  add              rsp, 16;                             jmp   n358_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n360_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1131_1
                        cmp              eax, 3;                              jne   .Lx1131_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx1131_0
.Lx1131_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_cmp_test_α
.Lx1131_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n361_cmp_test_α
n360_coerce_numeric_β:  add              rsp, 16;                             jmp   n359_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n361_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1133_240
                        add              rsp, 16;                             jmp   n360_coerce_numeric_β
.Lx1133_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n362_var_α
n361_cmp_test_β:        add              rsp, 16;                             jmp   n360_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n363_call_α
n362_var_β:             add              rsp, 16;                             jmp   n361_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1136:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1135_240
                        add              rsp, 16;                             jmp   n362_var_β
.Lx1135_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n364_var_α
n363_call_β:            add              rsp, 16;                             jmp   n362_var_β
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n365_binop_α
n364_var_β:             add              rsp, 32;                             jmp   n362_var_β
#-----------------------------------------------------------------------------------------------------------------------
n365_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1138_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1138_7
.Lx1138_2:              and              edx, 1;                              jz    .Lx1138_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx1138_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1138_4
.Lx1138_3:              movq             xmm0, rsi
.Lx1138_4:              cmp              ecx, 5;                              je    .Lx1138_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1138_6
.Lx1138_5:              movq             xmm1, rdi
.Lx1138_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1138_7:                                                                    jmp   n366_binop_α
.Lx1138_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1138_240
                        add              rsp, 16;                             jmp   n364_var_β
.Lx1138_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_binop_α
n365_binop_β:           add              rsp, 16;                             jmp   n364_var_β
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # cmp_test
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n367_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n368_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n368_statement_end_α:   add              rsp, 160;                            jmp   n369_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n369_statement_begin_α:                                                       jmp   n370_var_α
n369_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_coerce_numeric_α
n371_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n369_statement_begin_β
.Lx1146_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n372_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx1148_1
                        cmp              eax, 3;                              jne   .Lx1148_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              eax, 3;                              jne   .Lx1148_0
.Lx1148_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n373_coerce_numeric_α
.Lx1148_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n373_coerce_numeric_α
n372_coerce_numeric_β:  add              rsp, 16;                             jmp   n371_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n373_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1150_1
                        cmp              eax, 3;                              jne   .Lx1150_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 3;                              jne   .Lx1150_0
.Lx1150_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n374_cmp_test_α
.Lx1150_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n374_cmp_test_α
n373_coerce_numeric_β:  add              rsp, 16;                             jmp   n372_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n374_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx1152_240
                        add              rsp, 16;                             jmp   n373_coerce_numeric_β
.Lx1152_240:                                                                  jmp   n375_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_end_α:   add              rsp, 80;                             jmp   n376_statement_begin_α
#=======================================================================================================================
#                 LT(place, n(x))                                         :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_begin_α:                                                       jmp   n377_var_α
n376_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_call_α
n378_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n376_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1160:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1160]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1159_240
                        add              rsp, 16;                             jmp   n378_var_β
.Lx1159_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_coerce_numeric_α
n379_call_β:            add              rsp, 16;                             jmp   n378_var_β
#-----------------------------------------------------------------------------------------------------------------------
n380_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              eax, 5;                              je    .Lx1162_1
                        cmp              eax, 3;                              jne   .Lx1162_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              eax, 3;                              jne   .Lx1162_0
.Lx1162_1:              mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n381_coerce_numeric_α
.Lx1162_0:              lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n381_coerce_numeric_α
n380_coerce_numeric_β:  add              rsp, 32;                             jmp   n378_var_β
#-----------------------------------------------------------------------------------------------------------------------
n381_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx1164_1
                        cmp              eax, 3;                              jne   .Lx1164_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              eax, 3;                              jne   .Lx1164_0
.Lx1164_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n382_cmp_test_α
.Lx1164_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n382_cmp_test_α
n381_coerce_numeric_β:  add              rsp, 16;                             jmp   n380_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n382_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1166_240
                        add              rsp, 16;                             jmp   n381_coerce_numeric_β
.Lx1166_240:                                                                  jmp   n383_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_end_α:   add              rsp, 96;                             jmp   n384_statement_begin_α
#=======================================================================================================================
#                 ListRemove      =   a(x)[place]
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_begin_α:                                                       jmp   n385_var_α
n384_statement_begin_β:                                                       jmp   n392_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n386_call_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1173:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1173]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1172_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n384_statement_begin_β
.Lx1172_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_var_α
n386_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n384_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_subscript_α
n387_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n384_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n388_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1175_240
                        add              rsp, 16;                             jmp   n387_var_β
.Lx1175_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_deref_α
n388_subscript_β:       add              rsp, 16;                             jmp   n387_var_β
#-----------------------------------------------------------------------------------------------------------------------
n389_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1176_240
                        add              rsp, 16;                             jmp   n388_subscript_β
.Lx1176_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              qword ptr [r9 + 184], rdx;           jmp   n391_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n391_statement_end_α:   add              rsp, 80;                             jmp   n392_statement_begin_α
#=======================================================================================================================
#                 i               =   place
#-----------------------------------------------------------------------------------------------------------------------
n392_statement_begin_α:                                                       jmp   n393_var_α
n392_statement_begin_β:                                                       jmp   n396_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n394_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n395_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n395_statement_end_α:   add              rsp, 16;                             jmp   n396_statement_begin_α
#=======================================================================================================================
# ListRemove1     i               =   LT(i, n(x) - 1) i + 1               :F(ListRemove2)
#-----------------------------------------------------------------------------------------------------------------------
n396_statement_begin_α:                                                       jmp   n397_var_α
n396_statement_begin_β:                                                       jmp   n425_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n399_call_α
n398_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n396_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1191:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1191]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1190_240
                        add              rsp, 16;                             jmp   n398_var_β
.Lx1190_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n400_lit_integer_α
n399_call_β:            add              rsp, 16;                             jmp   n398_var_β
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n401_binop_α
n400_lit_integer_β:     add              rsp, 32;                             jmp   n398_var_β
.Lx1192_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n401_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1193_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1193_7
.Lx1193_2:              and              edx, 1;                              jz    .Lx1193_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1193_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1193_4
.Lx1193_3:              movq             xmm0, rsi
.Lx1193_4:              cmp              ecx, 5;                              je    .Lx1193_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1193_6
.Lx1193_5:              movq             xmm1, rdi
.Lx1193_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1193_7:                                                                    jmp   n402_coerce_numeric_α
.Lx1193_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1193_240
                        add              rsp, 16;                             jmp   n400_lit_integer_β
.Lx1193_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n402_coerce_numeric_α
n401_binop_β:           add              rsp, 16;                             jmp   n400_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n402_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              eax, 5;                              je    .Lx1195_1
                        cmp              eax, 3;                              jne   .Lx1195_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              eax, 3;                              jne   .Lx1195_0
.Lx1195_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n403_coerce_numeric_α
.Lx1195_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n403_coerce_numeric_α
n402_coerce_numeric_β:  add              rsp, 16;                             jmp   n401_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n403_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              eax, 5;                              je    .Lx1197_1
                        cmp              eax, 3;                              jne   .Lx1197_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              eax, 3;                              jne   .Lx1197_0
.Lx1197_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n404_cmp_test_α
.Lx1197_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n404_cmp_test_α
n403_coerce_numeric_β:  add              rsp, 16;                             jmp   n402_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n404_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1199_240
                        add              rsp, 16;                             jmp   n403_coerce_numeric_β
.Lx1199_240:            mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n405_var_α
n404_cmp_test_β:        add              rsp, 16;                             jmp   n403_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_lit_integer_α
n405_var_β:             add              rsp, 16;                             jmp   n404_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n407_binop_α
n406_lit_integer_β:     add              rsp, 16;                             jmp   n405_var_β
.Lx1201_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1202_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1202_7
.Lx1202_2:              and              edx, 1;                              jz    .Lx1202_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1202_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1202_4
.Lx1202_3:              movq             xmm0, rsi
.Lx1202_4:              cmp              ecx, 5;                              je    .Lx1202_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1202_6
.Lx1202_5:              movq             xmm1, rdi
.Lx1202_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1202_7:                                                                    jmp   n408_binop_α
.Lx1202_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1202_240
                        add              rsp, 16;                             jmp   n406_lit_integer_β
.Lx1202_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n408_binop_α
n407_binop_β:           add              rsp, 16;                             jmp   n406_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n409_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n410_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n410_statement_end_α:   add              rsp, 192;                            jmp   n411_statement_begin_α
#=======================================================================================================================
#                 a(x)[i - 1]     =   a(x)[i]                             :(ListRemove1)
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_begin_α:                                                       jmp   n412_var_α
n411_statement_begin_β:                                                       jmp   n396_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_call_α
#-----------------------------------------------------------------------------------------------------------------------
n413_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1211:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1211]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1210_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
.Lx1210_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_var_α
n413_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n411_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_lit_integer_α
n414_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n411_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n416_binop_α
n415_lit_integer_β:     add              rsp, 16;                             jmp   n414_var_β
.Lx1213_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1214_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1214_7
.Lx1214_2:              and              edx, 1;                              jz    .Lx1214_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1214_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1214_4
.Lx1214_3:              movq             xmm0, rsi
.Lx1214_4:              cmp              ecx, 5;                              je    .Lx1214_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1214_6
.Lx1214_5:              movq             xmm1, rdi
.Lx1214_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1214_7:                                                                    jmp   n417_subscript_α
.Lx1214_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1214_240
                        add              rsp, 16;                             jmp   n415_lit_integer_β
.Lx1214_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n417_subscript_α
n416_binop_β:           add              rsp, 16;                             jmp   n415_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n417_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1215_240
                        add              rsp, 16;                             jmp   n416_binop_β
.Lx1215_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_var_α
n417_subscript_β:       add              rsp, 16;                             jmp   n416_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_call_α
n418_var_β:             add              rsp, 16;                             jmp   n417_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n419_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1218:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1218]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1217_240
                        add              rsp, 16;                             jmp   n418_var_β
.Lx1217_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_var_α
n419_call_β:            add              rsp, 16;                             jmp   n418_var_β
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n421_subscript_α
n420_var_β:             add              rsp, 32;                             jmp   n418_var_β
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1220_240
                        add              rsp, 16;                             jmp   n420_var_β
.Lx1220_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_deref_α
n421_subscript_β:       add              rsp, 16;                             jmp   n420_var_β
#-----------------------------------------------------------------------------------------------------------------------
n422_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1221_240
                        add              rsp, 16;                             jmp   n421_subscript_β
.Lx1221_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_assign_var_α
n422_deref_β:           add              rsp, 16;                             jmp   n421_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1222_240
                        add              rsp, 16;                             jmp   n422_deref_β
.Lx1222_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n424_statement_end_α:   add              rsp, 192;                            jmp   n396_statement_begin_α
#=======================================================================================================================
# ListRemove2     a(x)[i]         =
#-----------------------------------------------------------------------------------------------------------------------
n425_statement_begin_α:                                                       jmp   n426_var_α
n425_statement_begin_β:                                                       jmp   n433_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_call_α
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1229:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1229]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1228_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
.Lx1228_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_var_α
n427_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n425_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_subscript_α
n428_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n425_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n429_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1231_240
                        add              rsp, 16;                             jmp   n428_var_β
.Lx1231_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n430_lit_string_α
n429_subscript_β:       add              rsp, 16;                             jmp   n428_var_β
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n431_assign_var_α
n430_lit_string_β:      add              rsp, 16;                             jmp   n429_subscript_β
.Lx1232_0:              .quad            .Lx1232_0_s
.Lx1232_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n431_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1233_240
                        add              rsp, 16;                             jmp   n430_lit_string_β
.Lx1233_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n432_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_end_α:   add              rsp, 96;                             jmp   n433_statement_begin_α
#=======================================================================================================================
#                 n(x)            =   n(x) - 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n433_statement_begin_α:                                                       jmp   n434_var_α
n433_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n435_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n435_field_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1239_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1239_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n433_statement_begin_β
.Lx1239_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_var_α
n435_field_var_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n433_statement_begin_β
.Lx1239_0:              .quad            .Lx1239_0_s
.Lx1239_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n437_call_α
n436_var_β:             add              rsp, 16;                             jmp   n435_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n437_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1242:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1242]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1241_240
                        add              rsp, 16;                             jmp   n436_var_β
.Lx1241_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n438_lit_integer_α
n437_call_β:            add              rsp, 16;                             jmp   n436_var_β
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n439_binop_α
n438_lit_integer_β:     add              rsp, 32;                             jmp   n436_var_β
.Lx1243_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n439_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1244_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1244_7
.Lx1244_2:              and              edx, 1;                              jz    .Lx1244_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1244_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1244_4
.Lx1244_3:              movq             xmm0, rsi
.Lx1244_4:              cmp              ecx, 5;                              je    .Lx1244_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1244_6
.Lx1244_5:              movq             xmm1, rdi
.Lx1244_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1244_7:                                                                    jmp   n440_assign_var_α
.Lx1244_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx1244_240
                        add              rsp, 16;                             jmp   n438_lit_integer_β
.Lx1244_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n440_assign_var_α
n439_binop_β:           add              rsp, 16;                             jmp   n438_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n440_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1245_240
                        add              rsp, 16;                             jmp   n439_binop_β
.Lx1245_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n441_statement_end_α:   add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListPop         ListPop         =   ListRemove(x, -1)                   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n442_statement_begin_α:                                                       jmp   n443_var_α
n442_statement_begin_β:                                                       jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_unop_α
n444_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n442_statement_begin_β
.Lx1251_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n445_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n446_call_α
n445_unop_β:            add              rsp, 16;                             jmp   n444_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n446_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1254z]
                        lea              rax, [rip + ListRemove_α];           jmp   rax
.Lsig1254z:             .quad            2
                        .quad            .Lx1254_2
                        .quad            .Lx1254_2
                        .quad            48
                        .quad            16
.Lx1254_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1254_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1254_240
                        add              rsp, 16;                             jmp   n445_unop_β
.Lx1254_240:                                                                  jmp   n447_assign_α
n446_call_β:                                                                  jmp   n445_unop_β
.Lx1254_0:              .quad            .Lx1254_0_s
.Lx1254_0_s:            .string          "ListRemove"
#-----------------------------------------------------------------------------------------------------------------------
n447_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              qword ptr [r9 + 200], rdx;           jmp   n448_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n448_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListSize        ListSize        =   IDENT(a(x)) 0                       :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n449_statement_begin_α:                                                       jmp   n450_var_α
n449_statement_begin_β:                                                       jmp   n457_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_call_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1262:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1262]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1261_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
.Lx1261_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n452_call_α
n451_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n449_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n452_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1264:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1264]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1263_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n449_statement_begin_β
.Lx1263_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n453_lit_integer_α
n452_call_β:            add              rsp, 16
                        add              rsp, 32;                             jmp   n449_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n454_binop_α
n453_lit_integer_β:     add              rsp, 16
                        add              rsp, 48;                             jmp   n449_statement_begin_β
.Lx1265_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n454_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n455_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n455_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n456_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_end_α:   add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
#                 PROTOTYPE(a(x)) '0:' REM . ListSize
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_begin_α:                                                       jmp   n458_var_α
n457_statement_begin_β:                                                       jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n459_call_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1274:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1274]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1273_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_α
.Lx1273_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_call_α
n459_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n460_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1276:           .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1276]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1275_240
                                                                              jmp   n467_statement_end_α
.Lx1275_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n461_match_begin_α
n460_call_β:                                                                  jmp   n467_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n461_match_begin_α:     mov              rdi, qword ptr [rsp + 0]             # call
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx1278_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1278_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n462_match_lit_α
n461_match_begin_β:
.Lx1278_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1278_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1278_1
                                                                              jmp   .Lx1278_0
.Lx1278_1:
n461_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n467_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n462_match_lit_α:       mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n461_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n461_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 58;                             jne   n461_match_begin_β
                        add              r14d, 2;                             jmp   n463_match_assign_save_α
n462_match_lit_β:       sub              r14d, 2;                             jmp   n461_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n463_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n464_match_rem_α
n463_match_assign_save_β:
                        add              rsp, 16;                             jmp   n462_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n464_match_rem_α:       sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d;                          jmp   n465_match_assign_cond_α
n464_match_rem_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n462_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n465_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n466_match_end_α
n465_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n464_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n466_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1287_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n461_match_begin_af
.Lx1287_13:             add              rsp, 16
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
n467_statement_end_α:   add              rsp, 48;                             jmp   n468_statement_begin_α
#=======================================================================================================================
#                 ListSize        =   ListSize + 1                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_begin_α:                                                       jmp   n469_var_α
n468_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n470_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n471_binop_α
n470_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n468_statement_begin_β
.Lx1293_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n471_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1294_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1294_7
.Lx1294_2:              and              edx, 1;                              jz    .Lx1294_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1294_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1294_4
.Lx1294_3:              movq             xmm0, rsi
.Lx1294_4:              cmp              ecx, 5;                              je    .Lx1294_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1294_6
.Lx1294_5:              movq             xmm1, rdi
.Lx1294_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1294_7:                                                                    jmp   n472_assign_α
.Lx1294_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1294_240
                        add              rsp, 16;                             jmp   n470_lit_integer_β
.Lx1294_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n472_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n472_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n473_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_end_α:   add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ListEnd  <stmt 48, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_begin_α:                                                       jmp   n475_statement_end_α
n474_statement_begin_β:                                                       jmp   n476_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_end_α:                                                         jmp   n476_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_begin_α:                                                       jmp   n477_define_α
n476_statement_begin_β:                                                       jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n477_define_α:          mov              rdi, qword ptr [rip + .Lx1305_0]
                        mov              rsi, qword ptr [rip + .Lx1305_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n506_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1305_0]
                        lea              rsi, [rip + Init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n478_statement_end_α
n477_define_β:                                                                jmp   n476_statement_begin_β
.Lx1305_0:              .quad            .Lx1305_0_s
.Lx1305_0_s:            .string          "Init_list"
.Lx1305_1:              .quad            .Lx1305_1_s
.Lx1305_1_s:            .string          "vs"
                                                                              jmp   .Lx1306_245
#-----------------------------------------------------------------------------------------------------------------------
Init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 224]            # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1306_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1306_41
.Lx1306_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1306_41:             lea              r10, [rip + Init_list_γ]
                        lea              r11, [rip + Init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n506_statement_begin_α]; jmp   rax
Init_list_γ:            mov              rdi, qword ptr [r9 + 224]            # Init_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1306_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1306_110
.Lx1306_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1306_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Init_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1306_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1306_180
.Lx1306_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1306_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1306_245:
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:                                                         jmp   n479_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α:                                                       jmp   n480_define_α
n479_statement_begin_β:                                                       jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n480_define_α:          mov              rdi, qword ptr [rip + .Lx1312_0]
                        mov              rsi, qword ptr [rip + .Lx1312_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n550_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1312_0]
                        lea              rsi, [rip + init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n481_statement_end_α
n480_define_β:                                                                jmp   n479_statement_begin_β
.Lx1312_0:              .quad            .Lx1312_0_s
.Lx1312_0_s:            .string          "init_list"
.Lx1312_1:              .quad            .Lx1312_1_s
.Lx1312_1_s:            .string          "v"
                                                                              jmp   .Lx1313_245
#-----------------------------------------------------------------------------------------------------------------------
init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 256]            # init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1313_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1313_41
.Lx1313_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1313_41:             lea              r10, [rip + init_list_γ]
                        lea              r11, [rip + init_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n550_statement_begin_α]; jmp   rax
init_list_γ:            mov              rdi, qword ptr [r9 + 256]            # init_list
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1313_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1313_110
.Lx1313_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1313_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
init_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1313_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1313_180
.Lx1313_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1313_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1313_245:
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_end_α:                                                         jmp   n482_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α:                                                       jmp   n483_define_α
n482_statement_begin_β:                                                       jmp   n485_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_define_α:          mov              rdi, qword ptr [rip + .Lx1319_0]
                        mov              rsi, qword ptr [rip + .Lx1319_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n515_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1319_0]
                        lea              rsi, [rip + Push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n484_statement_end_α
n483_define_β:                                                                jmp   n482_statement_begin_β
.Lx1319_0:              .quad            .Lx1319_0_s
.Lx1319_0_s:            .string          "Push_list"
.Lx1319_1:              .quad            .Lx1319_1_s
.Lx1319_1_s:            .string          "vs"
                                                                              jmp   .Lx1320_245
#-----------------------------------------------------------------------------------------------------------------------
Push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 288]            # Push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1320_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1320_41
.Lx1320_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1320_41:             lea              r10, [rip + Push_list_γ]
                        lea              r11, [rip + Push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n515_statement_begin_α]; jmp   rax
Push_list_γ:            mov              rdi, qword ptr [r9 + 288]            # Push_list
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1320_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1320_110
.Lx1320_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1320_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1320_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1320_180
.Lx1320_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1320_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1320_245:
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_end_α:                                                         jmp   n485_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_begin_α:                                                       jmp   n486_define_α
n485_statement_begin_β:                                                       jmp   n488_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n486_define_α:          mov              rdi, qword ptr [rip + .Lx1326_0]
                        mov              rsi, qword ptr [rip + .Lx1326_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n569_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1326_0]
                        lea              rsi, [rip + push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n487_statement_end_α
n486_define_β:                                                                jmp   n485_statement_begin_β
.Lx1326_0:              .quad            .Lx1326_0_s
.Lx1326_0_s:            .string          "push_list"
.Lx1326_1:              .quad            .Lx1326_1_s
.Lx1326_1_s:            .string          "v"
                                                                              jmp   .Lx1327_245
#-----------------------------------------------------------------------------------------------------------------------
push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 304]            # push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1327_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1327_41
.Lx1327_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1327_41:             lea              r10, [rip + push_list_γ]
                        lea              r11, [rip + push_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n569_statement_begin_α]; jmp   rax
push_list_γ:            mov              rdi, qword ptr [r9 + 304]            # push_list
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1327_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1327_110
.Lx1327_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1327_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_list_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1327_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1327_180
.Lx1327_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1327_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1327_245:
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_end_α:                                                         jmp   n488_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_begin_α:                                                       jmp   n489_define_α
n488_statement_begin_β:                                                       jmp   n491_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n489_define_α:          mov              rdi, qword ptr [rip + .Lx1333_0]
                        mov              rsi, qword ptr [rip + .Lx1333_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n524_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1333_0]
                        lea              rsi, [rip + Push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n490_statement_end_α
n489_define_β:                                                                jmp   n488_statement_begin_β
.Lx1333_0:              .quad            .Lx1333_0_s
.Lx1333_0_s:            .string          "Push_item"
.Lx1333_1:              .quad            .Lx1333_1_s
.Lx1333_1_s:            .string          "vs"
                                                                              jmp   .Lx1334_245
#-----------------------------------------------------------------------------------------------------------------------
Push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 320]            # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1334_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1334_41
.Lx1334_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1334_41:             lea              r10, [rip + Push_item_γ]
                        lea              r11, [rip + Push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n524_statement_begin_α]; jmp   rax
Push_item_γ:            mov              rdi, qword ptr [r9 + 320]            # Push_item
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1334_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1334_110
.Lx1334_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1334_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Push_item_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1334_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1334_180
.Lx1334_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1334_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1334_245:
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:                                                         jmp   n491_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α:                                                       jmp   n492_define_α
n491_statement_begin_β:                                                       jmp   n494_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_define_α:          mov              rdi, qword ptr [rip + .Lx1340_0]
                        mov              rsi, qword ptr [rip + .Lx1340_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n599_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1340_0]
                        lea              rsi, [rip + push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n493_statement_end_α
n492_define_β:                                                                jmp   n491_statement_begin_β
.Lx1340_0:              .quad            .Lx1340_0_s
.Lx1340_0_s:            .string          "push_item"
.Lx1340_1:              .quad            .Lx1340_1_s
.Lx1340_1_s:            .string          "v"
                                                                              jmp   .Lx1341_245
#-----------------------------------------------------------------------------------------------------------------------
push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 336]            # push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1341_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1341_41
.Lx1341_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1341_41:             lea              r10, [rip + push_item_γ]
                        lea              r11, [rip + push_item_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n599_statement_begin_α]; jmp   rax
push_item_γ:            mov              rdi, qword ptr [r9 + 336]            # push_item
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1341_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1341_110
.Lx1341_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1341_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
push_item_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1341_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1341_180
.Lx1341_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1341_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1341_245:
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:                                                         jmp   n494_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α:                                                       jmp   n495_define_α
n494_statement_begin_β:                                                       jmp   n497_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n495_define_α:          mov              rdi, qword ptr [rip + .Lx1347_0]
                        mov              rsi, qword ptr [rip + .Lx1347_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n533_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1347_0]
                        lea              rsi, [rip + Pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n496_statement_end_α
n495_define_β:                                                                jmp   n494_statement_begin_β
.Lx1347_0:              .quad            .Lx1347_0_s
.Lx1347_0_s:            .string          "Pop_list"
.Lx1347_1:              .quad            .Lx1347_1_s
.Lx1347_1_s:            .string          ""
                                                                              jmp   .Lx1348_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 352]            # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + Pop_list_γ]
                        lea              r11, [rip + Pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n533_statement_begin_α]; jmp   rax
Pop_list_γ:             mov              rdi, qword ptr [r9 + 352]
                        mov              rsi, qword ptr [r9 + 360]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 360], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 360], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1348_245:
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_end_α:                                                         jmp   n497_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_begin_α:                                                       jmp   n498_define_α
n497_statement_begin_β:                                                       jmp   n500_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n498_define_α:          mov              rdi, qword ptr [rip + .Lx1354_0]
                        mov              rsi, qword ptr [rip + .Lx1354_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n612_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1354_0]
                        lea              rsi, [rip + pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n499_statement_end_α
n498_define_β:                                                                jmp   n497_statement_begin_β
.Lx1354_0:              .quad            .Lx1354_0_s
.Lx1354_0_s:            .string          "pop_list"
.Lx1354_1:              .quad            .Lx1354_1_s
.Lx1354_1_s:            .string          ""
                                                                              jmp   .Lx1355_245
#-----------------------------------------------------------------------------------------------------------------------
pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 368]            # pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              r10, [rip + pop_list_γ]
                        lea              r11, [rip + pop_list_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n612_statement_begin_α]; jmp   rax
pop_list_γ:             mov              rdi, qword ptr [r9 + 368]
                        mov              rsi, qword ptr [r9 + 376]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_list_ω:             mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1355_245:
#-----------------------------------------------------------------------------------------------------------------------
n499_statement_end_α:                                                         jmp   n500_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n500_statement_begin_α:                                                       jmp   n501_define_α
n500_statement_begin_β:                                                       jmp   n503_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n501_define_α:          mov              rdi, qword ptr [rip + .Lx1361_0]
                        mov              rsi, qword ptr [rip + .Lx1361_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n541_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1361_0]
                        lea              rsi, [rip + Pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n502_statement_end_α
n501_define_β:                                                                jmp   n500_statement_begin_β
.Lx1361_0:              .quad            .Lx1361_0_s
.Lx1361_0_s:            .string          "Pop_final"
.Lx1361_1:              .quad            .Lx1361_1_s
.Lx1361_1_s:            .string          "vs"
                                                                              jmp   .Lx1362_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 384]            # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1362_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1362_41
.Lx1362_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1362_41:             lea              r10, [rip + Pop_final_γ]
                        lea              r11, [rip + Pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n541_statement_begin_α]; jmp   rax
Pop_final_γ:            mov              rdi, qword ptr [r9 + 384]            # Pop_final
                        mov              rsi, qword ptr [r9 + 392]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1362_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1362_110
.Lx1362_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1362_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
Pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1362_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1362_180
.Lx1362_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1362_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1362_245:
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_end_α:                                                         jmp   n503_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_begin_α:                                                       jmp   n504_define_α
n503_statement_begin_β:                                                       jmp   n638_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n504_define_α:          mov              rdi, qword ptr [rip + .Lx1368_0]
                        mov              rsi, qword ptr [rip + .Lx1368_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n626_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1368_0]
                        lea              rsi, [rip + pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n505_statement_end_α
n504_define_β:                                                                jmp   n503_statement_begin_β
.Lx1368_0:              .quad            .Lx1368_0_s
.Lx1368_0_s:            .string          "pop_final"
.Lx1368_1:              .quad            .Lx1368_1_s
.Lx1368_1_s:            .string          "v"
                                                                              jmp   .Lx1369_245
#-----------------------------------------------------------------------------------------------------------------------
pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 400]            # pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1369_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1369_41
.Lx1369_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1369_41:             lea              r10, [rip + pop_final_γ]
                        lea              r11, [rip + pop_final_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n626_statement_begin_α]; jmp   rax
pop_final_γ:            mov              rdi, qword ptr [r9 + 400]            # pop_final
                        mov              rsi, qword ptr [r9 + 408]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1369_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1369_110
.Lx1369_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1369_110:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
pop_final_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1369_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1369_180
.Lx1369_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1369_180:            mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1369_245:
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_end_α:                                                         jmp   n638_statement_begin_α
#=======================================================================================================================
# Init_list       Init_list       =   EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_begin_α:                                                       jmp   n507_lit_string_α
n506_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n508_var_α
.Lx1374_0:              .quad            .Lx1374_0_s
.Lx1374_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n509_binop_α
n508_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n506_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n509_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n510_lit_string_α
n509_binop_β:           add              rsp, 16;                             jmp   n508_var_β
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n511_binop_α
n510_lit_string_β:      add              rsp, 16;                             jmp   n509_binop_β
.Lx1377_0:              .quad            .Lx1377_0_s
.Lx1377_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n511_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n512_call_α
n511_binop_β:           add              rsp, 16;                             jmp   n510_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1380:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1380]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1379_240
                        add              rsp, 16;                             jmp   n511_binop_β
.Lx1379_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n513_assign_α
n512_call_β:            add              rsp, 16;                             jmp   n511_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n513_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n514_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_list       Push_list       =   EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n515_statement_begin_α:                                                       jmp   n516_lit_string_α
n515_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n517_var_α
.Lx1386_0:              .quad            .Lx1386_0_s
.Lx1386_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n518_binop_α
n517_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n515_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n518_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n519_lit_string_α
n518_binop_β:           add              rsp, 16;                             jmp   n517_var_β
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1389_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n520_binop_α
n519_lit_string_β:      add              rsp, 16;                             jmp   n518_binop_β
.Lx1389_0:              .quad            .Lx1389_0_s
.Lx1389_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n520_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n521_call_α
n520_binop_β:           add              rsp, 16;                             jmp   n519_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n521_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1392:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1392]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1391_240
                        add              rsp, 16;                             jmp   n520_binop_β
.Lx1391_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n522_assign_α
n521_call_β:            add              rsp, 16;                             jmp   n520_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n523_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_item       Push_item       =   EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_begin_α:                                                       jmp   n525_lit_string_α
n524_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n526_var_α
.Lx1398_0:              .quad            .Lx1398_0_s
.Lx1398_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n526_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n527_binop_α
n526_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n524_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n527_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n528_lit_string_α
n527_binop_β:           add              rsp, 16;                             jmp   n526_var_β
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1401_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n529_binop_α
n528_lit_string_β:      add              rsp, 16;                             jmp   n527_binop_β
.Lx1401_0:              .quad            .Lx1401_0_s
.Lx1401_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n529_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n530_call_α
n529_binop_β:           add              rsp, 16;                             jmp   n528_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1404:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1404]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1403_240
                        add              rsp, 16;                             jmp   n529_binop_β
.Lx1403_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n531_assign_α
n530_call_β:            add              rsp, 16;                             jmp   n529_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n531_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              qword ptr [r9 + 328], rdx;           jmp   n532_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n532_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Pop_list        Pop_list        =         epsilon . *pop_list()           :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n533_statement_begin_α:                                                       jmp   n534_var_α
n533_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n534_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]            # epsilon
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n535_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n535_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1412_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n537_lit_string_α
n536_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n533_statement_begin_β
.Lx1412_0:              .quad            .Lx1412_0_s
.Lx1412_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n538_call_α
n537_lit_string_β:      add              rsp, 16;                             jmp   n536_lit_string_β
.Lx1413_0:              .quad            .Lx1413_0_s
.Lx1413_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n538_call_α:            sub              rsp, 16
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
.Lrkfnzd1415:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1415]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1414_240
                        add              rsp, 16;                             jmp   n537_lit_string_β
.Lx1414_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n539_assign_α
n538_call_β:            add              rsp, 16;                             jmp   n537_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n539_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # Pop_list
                        mov              qword ptr [r9 + 360], rdx;           jmp   n540_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_end_α:   add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# Pop_final       Pop_final       =   EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n541_statement_begin_α:                                                       jmp   n542_lit_string_α
n541_statement_begin_β:                                                       jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n543_var_α
.Lx1421_0:              .quad            .Lx1421_0_s
.Lx1421_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n543_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n544_binop_α
n543_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n541_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n544_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n545_lit_string_α
n544_binop_β:           add              rsp, 16;                             jmp   n543_var_β
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1424_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n546_binop_α
n545_lit_string_β:      add              rsp, 16;                             jmp   n544_binop_β
.Lx1424_0:              .quad            .Lx1424_0_s
.Lx1424_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n546_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n547_call_α
n546_binop_β:           add              rsp, 16;                             jmp   n545_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1427:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1427]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1426_240
                        add              rsp, 16;                             jmp   n546_binop_β
.Lx1426_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_assign_α
n547_call_β:            add              rsp, 16;                             jmp   n546_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              qword ptr [r9 + 392], rdx;           jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list       $v              =
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α:                                                       jmp   n551_var_α
n550_statement_begin_β:                                                       jmp   n556_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n552_call_α
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1435:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1435]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1434_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n550_statement_begin_β
.Lx1434_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n553_lit_string_α
n552_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n550_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n554_assign_var_α
n553_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n550_statement_begin_β
.Lx1436_0:              .quad            .Lx1436_0_s
.Lx1436_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1437_240
                        add              rsp, 16;                             jmp   n553_lit_string_β
.Lx1437_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n555_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:   add              rsp, 64;                             jmp   n556_statement_begin_α
#=======================================================================================================================
#                 tags            =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_begin_α:                                                       jmp   n557_call_α
n556_statement_begin_β:                                                       jmp   n560_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n557_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1443:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1443]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1442_240
                        add              rsp, 16;                             jmp   n556_statement_begin_β
.Lx1442_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n558_assign_α
n557_call_β:            add              rsp, 16;                             jmp   n556_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n558_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # tags
                        mov              qword ptr [r9 + 440], rdx;           jmp   n559_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n559_statement_end_α:   add              rsp, 16;                             jmp   n560_statement_begin_α
#=======================================================================================================================
#                 stack           =   list()
#-----------------------------------------------------------------------------------------------------------------------
n560_statement_begin_α:                                                       jmp   n561_call_α
n560_statement_begin_β:                                                       jmp   n564_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n561_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1450:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1450]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1449_240
                        add              rsp, 16;                             jmp   n560_statement_begin_β
.Lx1449_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_assign_α
n561_call_β:            add              rsp, 16;                             jmp   n560_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n562_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # stack
                        mov              qword ptr [r9 + 456], rdx;           jmp   n563_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n563_statement_end_α:   add              rsp, 16;                             jmp   n564_statement_begin_α
#=======================================================================================================================
#                 init_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n564_statement_begin_α:                                                       jmp   n565_lit_string_α
n564_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1456_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n566_call_α
.Lx1456_0:              .quad            .Lx1456_0_s
.Lx1456_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n566_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1458:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1458]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1457_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n564_statement_begin_β
.Lx1457_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_assign_α
n566_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n564_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n567_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              qword ptr [r9 + 264], rdx;           jmp   n568_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_list       tags[v]         =   tags[v] + 1
#-----------------------------------------------------------------------------------------------------------------------
n569_statement_begin_α:                                                       jmp   n570_var_α
n569_statement_begin_β:                                                       jmp   n581_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_var_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n572_subscript_α
n571_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n569_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n572_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1466_240
                        add              rsp, 16;                             jmp   n571_var_β
.Lx1466_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n573_var_α
n572_subscript_β:       add              rsp, 16;                             jmp   n571_var_β
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_var_α
n573_var_β:             add              rsp, 16;                             jmp   n572_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n575_subscript_α
n574_var_β:             add              rsp, 16;                             jmp   n573_var_β
#-----------------------------------------------------------------------------------------------------------------------
n575_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1469_240
                        add              rsp, 16;                             jmp   n574_var_β
.Lx1469_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n576_deref_α
n575_subscript_β:       add              rsp, 16;                             jmp   n574_var_β
#-----------------------------------------------------------------------------------------------------------------------
n576_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1470_240
                        add              rsp, 16;                             jmp   n575_subscript_β
.Lx1470_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n577_lit_integer_α
n576_deref_β:           add              rsp, 16;                             jmp   n575_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n578_binop_α
n577_lit_integer_β:     add              rsp, 16;                             jmp   n576_deref_β
.Lx1471_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n578_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # deref
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1472_2
                        mov              rax, qword ptr [rsp + 40]            # deref
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1472_7
.Lx1472_2:              and              edx, 1;                              jz    .Lx1472_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx1472_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1472_4
.Lx1472_3:              movq             xmm0, rsi
.Lx1472_4:              cmp              ecx, 5;                              je    .Lx1472_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1472_6
.Lx1472_5:              movq             xmm1, rdi
.Lx1472_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1472_7:                                                                    jmp   n579_assign_var_α
.Lx1472_0:              mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx1472_240
                        add              rsp, 16;                             jmp   n577_lit_integer_β
.Lx1472_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n579_assign_var_α
n578_binop_β:           add              rsp, 16;                             jmp   n577_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n579_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1473_240
                        add              rsp, 16;                             jmp   n578_binop_β
.Lx1473_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n580_statement_end_α:   add              rsp, 160;                            jmp   n581_statement_begin_α
#=======================================================================================================================
#                 ListAppend(stack, list())
#-----------------------------------------------------------------------------------------------------------------------
n581_statement_begin_α:                                                       jmp   n582_var_α
n581_statement_begin_β:                                                       jmp   n586_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n582_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n583_call_α
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1480:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1480]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1479_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n581_statement_begin_β
.Lx1479_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n584_call_α
n583_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n581_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n584_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1482z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1482z:             .quad            2
                        .quad            .Lx1482_2
                        .quad            .Lx1482_2
                        .quad            32
                        .quad            16
.Lx1482_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1482_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1482_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1482_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n581_statement_begin_β
.Lx1482_240:                                                                  jmp   n585_statement_end_α
n584_call_β:                                                                  jmp   n581_statement_begin_β
.Lx1482_0:              .quad            .Lx1482_0_s
.Lx1482_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_end_α:   add              rsp, 48;                             jmp   n586_statement_begin_α
#=======================================================================================================================
#                 ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n586_statement_begin_α:                                                       jmp   n587_var_α
n586_statement_begin_β:                                                       jmp   n594_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n588_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n589_unop_α
n588_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n586_statement_begin_β
.Lx1488_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n589_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n590_call_α
n589_unop_β:            add              rsp, 16;                             jmp   n588_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n590_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1491z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1491z:             .quad            2
                        .quad            .Lx1491_2
                        .quad            .Lx1491_2
                        .quad            48
                        .quad            16
.Lx1491_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1491_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1491_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1491_240
                        add              rsp, 16;                             jmp   n589_unop_β
.Lx1491_240:                                                                  jmp   n591_var_α
n590_call_β:                                                                  jmp   n589_unop_β
.Lx1491_0:              .quad            .Lx1491_0_s
.Lx1491_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n591_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n592_call_α
n591_var_β:             add              rsp, 32;                             jmp   n589_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n592_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1494z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1494z:             .quad            2
                        .quad            .Lx1494_2
                        .quad            .Lx1494_2
                        .quad            32
                        .quad            16
.Lx1494_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1494_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1494_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1494_240
                        add              rsp, 16;                             jmp   n591_var_β
.Lx1494_240:                                                                  jmp   n593_statement_end_α
n592_call_β:                                                                  jmp   n591_var_β
.Lx1494_0:              .quad            .Lx1494_0_s
.Lx1494_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_end_α:   add              rsp, 96;                             jmp   n594_statement_begin_α
#=======================================================================================================================
#                 push_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n594_statement_begin_α:                                                       jmp   n595_lit_string_α
n594_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1499_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n596_call_α
.Lx1499_0:              .quad            .Lx1499_0_s
.Lx1499_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n596_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1501:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1501]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1500_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n594_statement_begin_β
.Lx1500_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n597_assign_α
n596_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n594_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n597_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n598_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n598_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_item       ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n599_statement_begin_α:                                                       jmp   n600_var_α
n599_statement_begin_β:                                                       jmp   n607_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n601_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1508_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n602_unop_α
n601_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n599_statement_begin_β
.Lx1508_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n602_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n603_call_α
n602_unop_β:            add              rsp, 16;                             jmp   n601_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n603_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1511z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1511z:             .quad            2
                        .quad            .Lx1511_2
                        .quad            .Lx1511_2
                        .quad            48
                        .quad            16
.Lx1511_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1511_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1511_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1511_240
                        add              rsp, 16;                             jmp   n602_unop_β
.Lx1511_240:                                                                  jmp   n604_var_α
n603_call_β:                                                                  jmp   n602_unop_β
.Lx1511_0:              .quad            .Lx1511_0_s
.Lx1511_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n605_call_α
n604_var_β:             add              rsp, 32;                             jmp   n602_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n605_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1514z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1514z:             .quad            2
                        .quad            .Lx1514_2
                        .quad            .Lx1514_2
                        .quad            32
                        .quad            16
.Lx1514_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1514_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1514_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1514_240
                        add              rsp, 16;                             jmp   n604_var_β
.Lx1514_240:                                                                  jmp   n606_statement_end_α
n605_call_β:                                                                  jmp   n604_var_β
.Lx1514_0:              .quad            .Lx1514_0_s
.Lx1514_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_end_α:   add              rsp, 96;                             jmp   n607_statement_begin_α
#=======================================================================================================================
#                 push_item       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n607_statement_begin_α:                                                       jmp   n608_lit_string_α
n607_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1519_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n609_call_α
.Lx1519_0:              .quad            .Lx1519_0_s
.Lx1519_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1521:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1521]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1520_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n607_statement_begin_β
.Lx1520_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n610_assign_α
n609_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n607_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              qword ptr [r9 + 344], rdx;           jmp   n611_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n611_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_list        ListAppend(ListValue(stack, -2), ListPop(stack))
#-----------------------------------------------------------------------------------------------------------------------
n612_statement_begin_α:                                                       jmp   n613_var_α
n612_statement_begin_β:                                                       jmp   n621_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n615_unop_α
n614_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n612_statement_begin_β
.Lx1528_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n615_unop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n616_call_α
n615_unop_β:            add              rsp, 16;                             jmp   n614_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n616_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1531z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1531z:             .quad            2
                        .quad            .Lx1531_2
                        .quad            .Lx1531_2
                        .quad            48
                        .quad            16
.Lx1531_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1531_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1531_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1531_240
                        add              rsp, 16;                             jmp   n615_unop_β
.Lx1531_240:                                                                  jmp   n617_var_α
n616_call_β:                                                                  jmp   n615_unop_β
.Lx1531_0:              .quad            .Lx1531_0_s
.Lx1531_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n618_call_α
n617_var_β:             add              rsp, 32;                             jmp   n615_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1534z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1534z:             .quad            1
                        .quad            .Lx1534_2
                        .quad            .Lx1534_2
                        .quad            16
.Lx1534_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1534_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1534_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1534_240
                        add              rsp, 16;                             jmp   n617_var_β
.Lx1534_240:                                                                  jmp   n619_call_α
n618_call_β:                                                                  jmp   n617_var_β
.Lx1534_0:              .quad            .Lx1534_0_s
.Lx1534_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n619_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1536z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1536z:             .quad            2
                        .quad            .Lx1536_2
                        .quad            .Lx1536_2
                        .quad            48
                        .quad            16
.Lx1536_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1536_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1536_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1536_240
                        add              rsp, 32;                             jmp   n617_var_β
.Lx1536_240:                                                                  jmp   n620_statement_end_α
n619_call_β:                                                                  jmp   n617_var_β
.Lx1536_0:              .quad            .Lx1536_0_s
.Lx1536_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_end_α:   add              rsp, 112;                            jmp   n621_statement_begin_α
#=======================================================================================================================
#                 pop_list        =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n621_statement_begin_α:                                                       jmp   n622_lit_string_α
n621_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1541_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n623_call_α
.Lx1541_0:              .quad            .Lx1541_0_s
.Lx1541_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1543:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1543]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1542_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n621_statement_begin_β
.Lx1542_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n624_assign_α
n623_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n621_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n624_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # pop_list
                        mov              qword ptr [r9 + 376], rdx;           jmp   n625_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_final       $v              =   ListPop(stack)
#-----------------------------------------------------------------------------------------------------------------------
n626_statement_begin_α:                                                       jmp   n627_var_α
n626_statement_begin_β:                                                       jmp   n633_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n628_call_α
#-----------------------------------------------------------------------------------------------------------------------
n628_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1551:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1551]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1550_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n626_statement_begin_β
.Lx1550_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n629_var_α
n628_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n626_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n629_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n630_call_α
n629_var_β:             add              rsp, 16
                        add              rsp, 32;                             jmp   n626_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n630_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1554z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1554z:             .quad            1
                        .quad            .Lx1554_2
                        .quad            .Lx1554_2
                        .quad            16
.Lx1554_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1554_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1554_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1554_240
                        add              rsp, 16;                             jmp   n629_var_β
.Lx1554_240:                                                                  jmp   n631_assign_var_α
n630_call_β:                                                                  jmp   n629_var_β
.Lx1554_0:              .quad            .Lx1554_0_s
.Lx1554_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n631_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # call
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1555_240
                        add              rsp, 32;                             jmp   n629_var_β
.Lx1555_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n632_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_end_α:   add              rsp, 80;                             jmp   n633_statement_begin_α
#=======================================================================================================================
#                 pop_final       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_begin_α:                                                       jmp   n634_lit_string_α
n633_statement_begin_β:                                                       jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n635_call_α
.Lx1560_0:              .quad            .Lx1560_0_s
.Lx1560_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1562:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1562]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1561_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n633_statement_begin_β
.Lx1561_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_assign_α
n635_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n633_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n636_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              qword ptr [r9 + 408], rdx;           jmp   n637_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_end_α:   add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# StackEnd        delim           =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_begin_α:                                                       jmp   n639_lit_string_α
n638_statement_begin_β:                                                       jmp   n643_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n640_call_α
.Lx1568_0:              .quad            .Lx1568_0_s
.Lx1568_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1570:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1570]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1569_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n638_statement_begin_β
.Lx1569_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n641_assign_α
n640_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n638_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n641_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # delim
                        mov              qword ptr [r9 + 488], rdx;           jmp   n642_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n642_statement_end_α:   add              rsp, 32;                             jmp   n643_statement_begin_α
#=======================================================================================================================
#                 word            =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n643_statement_begin_α:                                                       jmp   n644_lit_string_α
n643_statement_begin_β:                                                       jmp   n648_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n645_call_α
.Lx1576_0:              .quad            .Lx1576_0_s
.Lx1576_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n645_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1578:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1578]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1577_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n643_statement_begin_β
.Lx1577_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n646_assign_α
n645_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n643_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n646_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # word
                        mov              qword ptr [r9 + 504], rdx;           jmp   n647_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n647_statement_end_α:   add              rsp, 32;                             jmp   n648_statement_begin_α
#=======================================================================================================================
#                 group           =   '('
#-----------------------------------------------------------------------------------------------------------------------
n648_statement_begin_α:                                                       jmp   n649_var_α
n648_statement_begin_β:                                                       jmp   n668_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n649_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n650_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n651_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1586_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n652_call_α
n651_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n648_statement_begin_β
.Lx1586_0:              .quad            .Lx1586_0_s
.Lx1586_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n652_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1588z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1588z:             .quad            1
                        .quad            .Lx1588_2
                        .quad            .Lx1588_2
                        .quad            16
.Lx1588_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1588_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1588_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1588_240
                        add              rsp, 16;                             jmp   n651_lit_string_β
.Lx1588_240:                                                                  jmp   n653_assign_α
n652_call_β:                                                                  jmp   n651_lit_string_β
.Lx1588_0:              .quad            .Lx1588_0_s
.Lx1588_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n653_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n654_var_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n655_assign_α
n654_var_β:             add              rsp, 32;                             jmp   n651_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n655_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n656_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1592_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n657_call_α
n656_lit_string_β:      add              rsp, 16;                             jmp   n654_var_β
.Lx1592_0:              .quad            .Lx1592_0_s
.Lx1592_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n657_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1594z]
                        lea              rax, [rip + Push_item_α];            jmp   rax
.Lsig1594z:             .quad            1
                        .quad            .Lx1594_2
                        .quad            .Lx1594_2
                        .quad            16
.Lx1594_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1594_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1594_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1594_240
                        add              rsp, 16;                             jmp   n656_lit_string_β
.Lx1594_240:                                                                  jmp   n658_assign_α
n657_call_β:                                                                  jmp   n656_lit_string_β
.Lx1594_0:              .quad            .Lx1594_0_s
.Lx1594_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n658_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 664], rdx;           jmp   n659_var_α
#-----------------------------------------------------------------------------------------------------------------------
n659_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n660_assign_α
n659_var_β:             add              rsp, 32;                             jmp   n656_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n660_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 680], rdx;           jmp   n661_call_α
#-----------------------------------------------------------------------------------------------------------------------
n661_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1599z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1599z:             .quad            0
                        .quad            .Lx1599_2
                        .quad            .Lx1599_2
.Lx1599_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1599_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1599_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1599_240
                        add              rsp, 16;                             jmp   n659_var_β
.Lx1599_240:                                                                  jmp   n662_assign_α
n661_call_β:                                                                  jmp   n659_var_β
.Lx1599_0:              .quad            .Lx1599_0_s
.Lx1599_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n662_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 696], rdx;           jmp   n663_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n664_lit_string_α
n663_lit_string_β:      add              rsp, 32;                             jmp   n659_var_β
.Lx1601_0:              .quad            .Lx1601_0_s
.Lx1601_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1602_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n665_call_α
n664_lit_string_β:      add              rsp, 16;                             jmp   n663_lit_string_β
.Lx1602_0:              .quad            .Lx1602_0_s
.Lx1602_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n665_call_α:            sub              rsp, 16
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
.Lrkfnzd1604:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1604]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1603_240
                        add              rsp, 16;                             jmp   n664_lit_string_β
.Lx1603_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n666_assign_α
n665_call_β:            add              rsp, 16;                             jmp   n664_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n666_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # group
                        mov              qword ptr [r9 + 520], rdx;           jmp   n667_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n667_statement_end_α:   add              rsp, 176;                            jmp   n668_statement_begin_α
#=======================================================================================================================
#                 treebank        =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n668_statement_begin_α:                                                       jmp   n669_lit_string_α
n668_statement_begin_β:                                                       jmp   n690_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1610_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n670_call_α
.Lx1610_0:              .quad            .Lx1610_0_s
.Lx1610_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1612z]
                        lea              rax, [rip + Init_list_α];            jmp   rax
.Lsig1612z:             .quad            1
                        .quad            .Lx1612_2
                        .quad            .Lx1612_2
                        .quad            16
.Lx1612_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1612_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1612_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1612_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n668_statement_begin_β
.Lx1612_240:                                                                  jmp   n671_assign_α
n670_call_β:                                                                  jmp   n668_statement_begin_β
.Lx1612_0:              .quad            .Lx1612_0_s
.Lx1612_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 712], rdx;           jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1614_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n673_call_α
n672_lit_string_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n668_statement_begin_β
.Lx1614_0:              .quad            .Lx1614_0_s
.Lx1614_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1616z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1616z:             .quad            1
                        .quad            .Lx1616_2
                        .quad            .Lx1616_2
                        .quad            16
.Lx1616_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1616_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1616_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1616_240
                        add              rsp, 16;                             jmp   n672_lit_string_β
.Lx1616_240:                                                                  jmp   n674_assign_α
n673_call_β:                                                                  jmp   n672_lit_string_β
.Lx1616_0:              .quad            .Lx1616_0_s
.Lx1616_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n674_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 728], rdx;           jmp   n675_call_α
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1619z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1619z:             .quad            0
                        .quad            .Lx1619_2
                        .quad            .Lx1619_2
.Lx1619_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1619_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1619_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1619_240
                        add              rsp, 32;                             jmp   n672_lit_string_β
.Lx1619_240:                                                                  jmp   n676_assign_α
n675_call_β:                                                                  jmp   n672_lit_string_β
.Lx1619_0:              .quad            .Lx1619_0_s
.Lx1619_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 744], rdx;           jmp   n677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1621_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n678_call_α
n677_lit_string_β:      add              rsp, 48;                             jmp   n672_lit_string_β
.Lx1621_0:              .quad            .Lx1621_0_s
.Lx1621_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n678_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1623z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1623z:             .quad            1
                        .quad            .Lx1623_2
                        .quad            .Lx1623_2
                        .quad            16
.Lx1623_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1623_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1623_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1623_240
                        add              rsp, 16;                             jmp   n677_lit_string_β
.Lx1623_240:                                                                  jmp   n679_assign_α
n678_call_β:                                                                  jmp   n677_lit_string_β
.Lx1623_0:              .quad            .Lx1623_0_s
.Lx1623_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n679_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 760], rdx;           jmp   n680_var_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n681_assign_α
n680_var_β:             add              rsp, 32;                             jmp   n677_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n681_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 776], rdx;           jmp   n682_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n682_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1627_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n683_call_α
n682_lit_string_β:      add              rsp, 16;                             jmp   n680_var_β
.Lx1627_0:              .quad            .Lx1627_0_s
.Lx1627_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n683_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig1629z]
                        lea              rax, [rip + Pop_final_α];            jmp   rax
.Lsig1629z:             .quad            1
                        .quad            .Lx1629_2
                        .quad            .Lx1629_2
                        .quad            16
.Lx1629_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1629_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx1629_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx1629_240
                        add              rsp, 16;                             jmp   n682_lit_string_β
.Lx1629_240:                                                                  jmp   n684_assign_α
n683_call_β:                                                                  jmp   n682_lit_string_β
.Lx1629_0:              .quad            .Lx1629_0_s
.Lx1629_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 792], rdx;           jmp   n685_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1631_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n686_lit_string_α
n685_lit_string_β:      add              rsp, 32;                             jmp   n682_lit_string_β
.Lx1631_0:              .quad            .Lx1631_0_s
.Lx1631_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1632_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n687_call_α
n686_lit_string_β:      add              rsp, 16;                             jmp   n685_lit_string_β
.Lx1632_0:              .quad            .Lx1632_0_s
.Lx1632_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n687_call_α:            sub              rsp, 16
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
.Lrkfnzd1634:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1634]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx1633_240
                        add              rsp, 16;                             jmp   n686_lit_string_β
.Lx1633_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n688_assign_α
n687_call_β:            add              rsp, 16;                             jmp   n686_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n688_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # treebank
                        mov              qword ptr [r9 + 568], rdx;           jmp   n689_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n689_statement_end_α:   add              rsp, 208;                            jmp   n690_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_begin_α:                                                       jmp   n691_lit_string_α
n690_statement_begin_β:                                                       jmp   n697_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1640_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n692_call_α
.Lx1640_0:              .quad            .Lx1640_0_s
.Lx1640_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1642:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1642]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1641_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n690_statement_begin_β
.Lx1641_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n693_lit_integer_α
n692_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n690_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n694_lit_string_α
n693_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n690_statement_begin_β
.Lx1643_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1644_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n695_call_α
n694_lit_string_β:      add              rsp, 16;                             jmp   n693_lit_integer_β
.Lx1644_0:              .quad            .Lx1644_0_s
.Lx1644_0_s:            .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n695_call_α:            sub              rsp, 16
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
.Lbynamefnzd643:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd643]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx1645_240
                        add              rsp, 16;                             jmp   n694_lit_string_β
.Lx1645_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n696_statement_end_α
n695_call_β:            add              rsp, 16;                             jmp   n694_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n696_statement_end_α:   add              rsp, 80;                             jmp   n697_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_begin_α:                                                       jmp   n698_var_α
n697_statement_begin_β:                                                       jmp   n716_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n698_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1650_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            jne   .Lx1650_240
                        add              rsp, 16;                             jmp   n697_statement_begin_β
.Lx1650_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n699_assign_α
.Lx1650_0:              .quad            .Lx1650_0_s
.Lx1650_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n699_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # src
                        mov              qword ptr [r9 + 584], rdx;           jmp   n700_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n700_statement_end_α:   add              rsp, 16;                             jmp   n701_statement_begin_α
#=======================================================================================================================
#                 src             ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_begin_α:                                                       jmp   n702_var_α
n701_statement_begin_β:                                                       jmp   n716_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n702_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n703_var_α
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]            # treebank
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n704_assign_α
n703_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n716_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1658_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n705_match_begin_α
n704_assign_β:                                                                jmp   n703_var_β
.Lx1658_0:              .quad            .Lx1658_0_s
.Lx1658_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n705_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx1660_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1660_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n706_match_defer_α
n705_match_begin_β:
.Lx1660_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1660_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1660_1
                                                                              jmp   .Lx1660_0
.Lx1660_1:
n705_match_begin_af:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n704_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n706_match_defer_α:     lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1661_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1661_14:             test             rax, rax;                            jz    .Lx1661_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1661_5]
                        push             rcx
                        lea              rcx, [rip + .Lx1661_4]
                        push             rcx;                                 jmp   rax
.Lx1661_4:                                                                    jmp   n707_match_end_α
.Lx1661_5:                                                                    jmp   n705_match_begin_β
.Lx1661_0:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n705_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1661_6]
                        push             rcx
                        push             rax;                                 jmp   n707_match_end_α
.Lx1661_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n705_match_begin_β
n706_match_defer_β:     cmp              qword ptr [rsp + 0], 0;              jne   .Lx1661_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1661_12
                                                                              jmp   rax
.Lx1661_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n707_match_end_α:       mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1663_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n705_match_begin_af
.Lx1663_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n708_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n708_statement_end_α:   add              rsp, 32;                             jmp   n709_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_begin_α:                                                       jmp   n710_lit_string_α
n709_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx1668_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n711_var_α
.Lx1668_0:              .quad            .Lx1668_0_s
.Lx1668_0_s:            .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n711_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n712_call_α
n711_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n709_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n712_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1671:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1671]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx1670_240
                        add              rsp, 16;                             jmp   n711_var_β
.Lx1670_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n713_binop_α
n712_call_β:            add              rsp, 16;                             jmp   n711_var_β
#-----------------------------------------------------------------------------------------------------------------------
n713_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n714_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1673_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n715_statement_end_α
.Lx1673_0:              .quad            .Lx1673_0_s
.Lx1673_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n715_statement_end_α:   add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n716_statement_begin_α:                                                       jmp   n717_lit_string_α
n716_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1678_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n718_assign_α
.Lx1678_0:              .quad            .Lx1678_0_s
.Lx1678_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n718_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1679_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n719_statement_end_α
.Lx1679_0:              .quad            .Lx1679_0_s
.Lx1679_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n719_statement_end_α:   add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
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
.Lclassspec0:           .string          "list(n,a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lseala18:              .string          "ListValue"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListValue_α
                        lea              rdi, [rip + .Lseala18]
                        mov              rsi, qword ptr [rip + ListValue_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala19:              .string          "ListName"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListName_α
                        lea              rdi, [rip + .Lseala19]
                        mov              rsi, qword ptr [rip + ListName_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala20:              .string          "ListAppend"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListAppend_α
                        lea              rdi, [rip + .Lseala20]
                        mov              rsi, qword ptr [rip + ListAppend_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala21:              .string          "ListPrepend"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListPrepend_α
                        lea              rdi, [rip + .Lseala21]
                        mov              rsi, qword ptr [rip + ListPrepend_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala22:              .string          "ListInsert"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListInsert_α
                        lea              rdi, [rip + .Lseala22]
                        mov              rsi, qword ptr [rip + ListInsert_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala23:              .string          "ListRemove"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListRemove_α
                        lea              rdi, [rip + .Lseala23]
                        mov              rsi, qword ptr [rip + ListRemove_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala24:              .string          "ListPop"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListPop_α
                        lea              rdi, [rip + .Lseala24]
                        mov              rsi, qword ptr [rip + ListPop_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala25:              .string          "ListSize"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ListSize_α
                        lea              rdi, [rip + .Lseala25]
                        mov              rsi, qword ptr [rip + ListSize_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala26:              .string          "Init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Init_list_α
                        lea              rdi, [rip + .Lseala26]
                        mov              rsi, qword ptr [rip + Init_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala27:              .string          "init_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            init_list_α
                        lea              rdi, [rip + .Lseala27]
                        mov              rsi, qword ptr [rip + init_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala28:              .string          "Push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Push_list_α
                        lea              rdi, [rip + .Lseala28]
                        mov              rsi, qword ptr [rip + Push_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala29:              .string          "push_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            push_list_α
                        lea              rdi, [rip + .Lseala29]
                        mov              rsi, qword ptr [rip + push_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala30:              .string          "Push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Push_item_α
                        lea              rdi, [rip + .Lseala30]
                        mov              rsi, qword ptr [rip + Push_item_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala31:              .string          "push_item"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            push_item_α
                        lea              rdi, [rip + .Lseala31]
                        mov              rsi, qword ptr [rip + push_item_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala32:              .string          "Pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Pop_list_α
                        lea              rdi, [rip + .Lseala32]
                        mov              rsi, qword ptr [rip + Pop_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala33:              .string          "pop_list"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            pop_list_α
                        lea              rdi, [rip + .Lseala33]
                        mov              rsi, qword ptr [rip + pop_list_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala34:              .string          "Pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            Pop_final_α
                        lea              rdi, [rip + .Lseala34]
                        mov              rsi, qword ptr [rip + Pop_final_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala35:              .string          "pop_final"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            pop_final_α
                        lea              rdi, [rip + .Lseala35]
                        mov              rsi, qword ptr [rip + pop_final_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname36:      .string          "PAT$0"
                        .align           8
.Lstartup_prec36:
                        .quad            .Lstartup_pname36
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec36]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname37:      .string          "PAT$1"
                        .align           8
.Lstartup_prec37:
                        .quad            .Lstartup_pname37
                        .quad            FN__PAT$1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            32
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec37]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname38:      .string          "PAT$2"
                        .align           8
.Lstartup_prec38:
                        .quad            .Lstartup_pname38
                        .quad            FN__PAT$2
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
                        lea              rdi, [rip + .Lstartup_prec38]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname39:      .string          "PAT$3"
                        .align           8
.Lstartup_prec39:
                        .quad            .Lstartup_pname39
                        .quad            FN__PAT$3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec39]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname40:      .string          "PAT$4"
                        .align           8
.Lstartup_prec40:
                        .quad            .Lstartup_pname40
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec40]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$0$V0"
.S1:                    .string          "*pop_list"
.S2:                    .string          "PAT$3$V0"
.S3:                    .string          "tag"
.S4:                    .string          "PAT$3$V1"
.S5:                    .string          "PAT$3$V5"
.S6:                    .string          "PAT$3$V4"
.S7:                    .string          "PAT$3$V2"
.S8:                    .string          "wrd"
.S9:                    .string          "PAT$3$V3"
.S10:                   .string          "group"
.S11:                   .string          "PAT$4$V0"
.S12:                   .string          "PAT$4$V1"
.S13:                   .string          "PAT$4$V5"
.S14:                   .string          "PAT$4$V3"
.S15:                   .string          "PAT$4$V4"
.S16:                   .string          "PAT$4$V2"
.S17:                   .string          "ListSize"
.S18:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
