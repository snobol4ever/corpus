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
                        mov              r11, 1
                        mov              dword ptr [rbp + -48], r14d;         jmp   n1_match_defer_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_defer_α:       sub              rsp, 16
                        mov              r11, 2
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
n1_match_defer_β:       mov              r11, 2
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx5_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx5_12
                                                                              jmp   rax
.Lx5_12:                                                                      jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rbp + -48]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_defer_β
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
                        mov              r11, 4
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
n8_match_span_β:        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -60]
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
n11_match_notany_α:     mov              r11, 5
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n12_match_break_α
n11_match_notany_β:     mov              r11, 5
                        sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_break_α:      sub              rsp, 16
                        mov              r11, 6
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jl    .Lx15_240
                        add              rsp, 16;                             jmp   n11_match_notany_β
.Lx15_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$2_γ
n12_match_break_β:      mov              r11, 6
                        mov              r14d, dword ptr [rbp + -64]
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
n16_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n17_match_assign_save_α
n16_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 8
                        mov              dword ptr [rbp + -48], r14d;         jmp   n18_match_defer_α
n17_match_assign_save_β:
                        mov              r11, 8
                        add              rsp, 16;                             jmp   n16_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_defer_α:      sub              rsp, 16
                        mov              r11, 9
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
n18_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx37_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx37_12
                                                                              jmp   rax
.Lx37_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              r11, 10
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
                        mov              r11, 10
                        sub              r12, 24;                             jmp   n18_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_defer_α:      sub              rsp, 16
                        mov              r11, 11
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
n20_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx40_12
                                                                              jmp   rax
.Lx40_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:      mov              r11, 12
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_β:      mov              r11, 12;                             jmp   n24_match_defer_α
n21_match_arbno_as:     mov              r11, 12
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n21_match_arbno_af
                        mov              dword ptr [rbp + -60], r14d;         jmp   n22_match_defer_α
n21_match_arbno_af:     mov              r11, 12
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n20_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      sub              rsp, 16
                        mov              r11, 13
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
n22_match_defer_β:      mov              r11, 13
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx43_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx43_12
                                                                              jmp   rax
.Lx43_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:        mov              r11, 14
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n22_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n22_match_defer_β
                        add              r14d, 1;                             jmp   PAT$3_γ
n23_match_lit_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   n22_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 15
                        mov              rdi, qword ptr [rbp + -24]
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
n24_match_defer_β:      mov              r11, 15
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx46_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx46_12
                                                                              jmp   rax
.Lx46_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n25_match_fence1_α:     mov              r11, 16
                        mov              qword ptr [rbp + -80], rsp;          jmp   n26_match_alternate_α
n25_match_fence1_as:    mov              r11, 16
                        mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_as
n25_match_fence1_af:    mov              r11, 16
n25_match_fence1_β:     mov              r11, 16
                        mov              rsp, qword ptr [rbp + -80];          jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_alternate_α:  mov              r11, 17
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx50_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n32_match_defer_α
.Lx50_21:               lea              rax, [rip + .Lx50_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n28_match_assign_save_α
n26_match_alternate_s0: mov              r11, 17
                        lea              rax, [rip + .Lx50_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
n26_match_alternate_s1: mov              r11, 17
                        lea              rax, [rip + .Lx50_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
.Lx50_40:                                                                     jmp   n32_match_defer_β
.Lx50_41:                                                                     jmp   n27_goto_β
n26_match_alternate_as: mov              r11, 17;                             jmp   n25_match_fence1_as
n26_match_alternate_β:  mov              r11, 17
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n26_match_alternate_af: mov              r11, 17
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx50_19:               add              rsp, 32;                             jmp   n25_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:             mov              r11, 18;                             jmp   n26_match_alternate_af
n27_goto_β:             mov              r11, 18;                             jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_save_α:
                        mov              r11, 19
                        mov              dword ptr [rbp + -112], r14d;        jmp   n29_match_defer_α
n28_match_assign_save_β:
                        mov              r11, 19;                             jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
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
n29_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx54_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx54_12
                                                                              jmp   rax
.Lx54_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_assign_cond_α:
                        mov              r11, 21
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
                        mov              r11, 21
                        sub              r12, 24;                             jmp   n29_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      mov              r11, 22
                        mov              rdi, qword ptr [rbp + -24]
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
n31_match_defer_β:      mov              r11, 22
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx57_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx57_12
                                                                              jmp   rax
.Lx57_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      mov              r11, 23
                        mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              al, 8;                               jne   .Lx58_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx58_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx58_10
.Lx58_9:                cmp              al, 88;                              jne   .Lx58_21
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
n32_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx58_12
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
n59_match_pos_α:        mov              r11, 24
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$4_ω
                                                                              jmp   n60_match_defer_α
n59_match_pos_β:        mov              r11, 24;                             jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      sub              rsp, 16
                        mov              r11, 25
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
n60_match_defer_β:      mov              r11, 25
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx73_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx73_12
                                                                              jmp   rax
.Lx73_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      sub              rsp, 16
                        mov              r11, 26
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
n61_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx74_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx74_12
                                                                              jmp   rax
.Lx74_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_arbno_α:      mov              r11, 27
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_β:      mov              r11, 27;                             jmp   n65_match_defer_α
n62_match_arbno_as:     mov              r11, 27
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n69_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n63_match_defer_α
n62_match_arbno_af:     mov              r11, 27
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n61_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      sub              rsp, 16
                        mov              r11, 28
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
n63_match_defer_β:      mov              r11, 28
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx77_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx77_12
                                                                              jmp   rax
.Lx77_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_rpos_α:       mov              r11, 29
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n63_match_defer_β
                                                                              jmp   PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              r11, 30
                        mov              rdi, qword ptr [rbp + -24]
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
n65_match_defer_β:      mov              r11, 30
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx79_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx79_12
                                                                              jmp   rax
.Lx79_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_arbno_α:      mov              r11, 31
                        mov              dword ptr [rbp + -80], r14d
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_β:      mov              r11, 31;                             jmp   n70_match_defer_α
n66_match_arbno_as:     mov              r11, 31
                        mov              eax, dword ptr [rbp + -76]
                        cmp              r14d, eax;                           je    n66_match_arbno_af
                        mov              dword ptr [rbp + -76], r14d;         jmp   n67_match_defer_α
n66_match_arbno_af:     mov              r11, 31
                        mov              eax, dword ptr [rbp + -80]
                        cmp              r14d, eax;                           jmp   n65_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:      mov              r11, 32
                        mov              rdi, qword ptr [rbp + -24]
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
n67_match_defer_β:      mov              r11, 32
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx82_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx82_12
                                                                              jmp   rax
.Lx82_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_fence0_α:     mov              r11, 33;                             jmp   n69_match_defer_α
n68_match_fence0_β:     mov              r11, 33;                             jmp   n62_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_defer_α:      mov              r11, 34
                        mov              rdi, qword ptr [rbp + -24]
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
n69_match_defer_β:      mov              r11, 34
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx85_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx85_12
                                                                              jmp   rax
.Lx85_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n70_match_defer_α:      mov              r11, 35
                        mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              al, 8;                               jne   .Lx86_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx86_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx86_10
.Lx86_9:                cmp              al, 88;                              jne   .Lx86_21
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
n70_match_defer_β:      mov              r11, 35
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx86_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx86_12
                                                                              jmp   rax
.Lx86_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n71_match_fence0_α:     mov              r11, 36;                             jmp   n66_match_arbno_as
n71_match_fence0_β:     mov              r11, 36;                             jmp   n66_match_arbno_af
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
n89_statement_begin_α:  mov              r11, 37
                        mov              r10, 1;                              jmp   n90_lit_string_α
n89_statement_begin_β:  mov              r11, 37;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_α
.Lx715_0:               .quad            .Lx715_0_s
.Lx715_0_s:             .string          "list(n,a)"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:             sub              rsp, 16
                        mov              r11, 39
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd717:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd717]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx716_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Lx716_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_statement_end_α
n91_call_β:             mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 40
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n93_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListValue(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 41
                        mov              r10, 2;                              jmp   n94_define_α
n93_statement_begin_β:  mov              r11, 41;                             jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_define_α:           mov              r11, 42
                        mov              rdi, qword ptr [rip + .Lx723_0]
                        mov              rsi, qword ptr [rip + .Lx723_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n117_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx723_0]
                        lea              rsi, [rip + ListValue_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_statement_end_α
n94_define_β:           mov              r11, 42;                             jmp   n93_statement_begin_β
.Lx723_0:               .quad            .Lx723_0_s
.Lx723_0_s:             .string          "ListValue"
.Lx723_1:               .quad            .Lx723_1_s
.Lx723_1_s:             .string          "x,place"
                                                                              jmp   .Lx724_245
#-----------------------------------------------------------------------------------------------------------------------
ListValue_α:            sub              rsp, 80
                        mov              rax, qword ptr [r9 + 0]              # ListValue
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx724_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx724_41
.Lx724_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx724_41:              cmp              rdx, 1;                              jbe   .Lx724_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx724_42
.Lx724_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx724_42:              lea              rcx, [rip + ListValue_γ]
                        lea              rax, [rip + ListValue_ω]
                        push             rax
                        push             rcx
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
                        cmp              rdx, 0;                              jbe   .Lx724_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx724_110
.Lx724_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx724_110:             cmp              rdx, 1;                              jbe   .Lx724_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx724_111
.Lx724_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx724_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx724_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx724_180
.Lx724_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx724_180:             cmp              rdx, 1;                              jbe   .Lx724_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx724_181
.Lx724_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx724_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx724_245:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 43
                        mov              r10, 2;                              jmp   n96_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListName(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 44
                        mov              r10, 3;                              jmp   n97_define_α
n96_statement_begin_β:  mov              r11, 44;                             jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_define_α:           mov              r11, 45
                        mov              rdi, qword ptr [rip + .Lx730_0]
                        mov              rsi, qword ptr [rip + .Lx730_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n137_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx730_0]
                        lea              rsi, [rip + ListName_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_statement_end_α
n97_define_β:           mov              r11, 45;                             jmp   n96_statement_begin_β
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          "ListName"
.Lx730_1:               .quad            .Lx730_1_s
.Lx730_1_s:             .string          "x,place"
                                                                              jmp   .Lx731_245
#-----------------------------------------------------------------------------------------------------------------------
ListName_α:             sub              rsp, 80
                        mov              rax, qword ptr [r9 + 48]             # ListName
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx731_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx731_41
.Lx731_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx731_41:              cmp              rdx, 1;                              jbe   .Lx731_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx731_42
.Lx731_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx731_42:              lea              rcx, [rip + ListName_γ]
                        lea              rax, [rip + ListName_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n137_statement_begin_α]; jmp   rax
ListName_γ:             mov              rdi, qword ptr [r9 + 48]             # ListName
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx731_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx731_110
.Lx731_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx731_110:             cmp              rdx, 1;                              jbe   .Lx731_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx731_111
.Lx731_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx731_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx731_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx731_180
.Lx731_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx731_180:             cmp              rdx, 1;                              jbe   .Lx731_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx731_181
.Lx731_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx731_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx731_245:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 46
                        mov              r10, 3;                              jmp   n99_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListAppend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 47
                        mov              r10, 4;                              jmp   n100_define_α
n99_statement_begin_β:  mov              r11, 47;                             jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_define_α:          mov              r11, 48
                        mov              rdi, qword ptr [rip + .Lx737_0]
                        mov              rsi, qword ptr [rip + .Lx737_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n156_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx737_0]
                        lea              rsi, [rip + ListAppend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_statement_end_α
n100_define_β:          mov              r11, 48;                             jmp   n99_statement_begin_β
.Lx737_0:               .quad            .Lx737_0_s
.Lx737_0_s:             .string          "ListAppend"
.Lx737_1:               .quad            .Lx737_1_s
.Lx737_1_s:             .string          "x,item"
                                                                              jmp   .Lx738_245
#-----------------------------------------------------------------------------------------------------------------------
ListAppend_α:           sub              rsp, 80
                        mov              rax, qword ptr [r9 + 64]             # ListAppend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx738_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx738_41
.Lx738_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx738_41:              cmp              rdx, 1;                              jbe   .Lx738_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx738_42
.Lx738_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx738_42:              lea              rcx, [rip + ListAppend_γ]
                        lea              rax, [rip + ListAppend_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n156_statement_begin_α]; jmp   rax
ListAppend_γ:           mov              rdi, qword ptr [r9 + 64]             # ListAppend
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx738_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx738_110
.Lx738_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx738_110:             cmp              rdx, 1;                              jbe   .Lx738_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx738_111
.Lx738_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx738_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx738_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx738_180
.Lx738_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx738_180:             cmp              rdx, 1;                              jbe   .Lx738_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx738_181
.Lx738_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx738_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx738_245:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   mov              r11, 49
                        mov              r10, 4;                              jmp   n102_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPrepend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α: mov              r11, 50
                        mov              r10, 5;                              jmp   n103_define_α
n102_statement_begin_β: mov              r11, 50;                             jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_define_α:          mov              r11, 51
                        mov              rdi, qword ptr [rip + .Lx744_0]
                        mov              rsi, qword ptr [rip + .Lx744_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n164_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx744_0]
                        lea              rsi, [rip + ListPrepend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_statement_end_α
n103_define_β:          mov              r11, 51;                             jmp   n102_statement_begin_β
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          "ListPrepend"
.Lx744_1:               .quad            .Lx744_1_s
.Lx744_1_s:             .string          "x,item"
                                                                              jmp   .Lx745_245
#-----------------------------------------------------------------------------------------------------------------------
ListPrepend_α:          sub              rsp, 80
                        mov              rax, qword ptr [r9 + 96]             # ListPrepend
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Lx745_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx745_41
.Lx745_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx745_41:              cmp              rdx, 1;                              jbe   .Lx745_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx745_42
.Lx745_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx745_42:              lea              rcx, [rip + ListPrepend_γ]
                        lea              rax, [rip + ListPrepend_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n164_statement_begin_α]; jmp   rax
ListPrepend_γ:          mov              rdi, qword ptr [r9 + 96]             # ListPrepend
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx745_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx745_110
.Lx745_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx745_110:             cmp              rdx, 1;                              jbe   .Lx745_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx745_111
.Lx745_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx745_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx745_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx745_180
.Lx745_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx745_180:             cmp              rdx, 1;                              jbe   .Lx745_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx745_181
.Lx745_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx745_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx745_245:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 52
                        mov              r10, 5;                              jmp   n105_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListInsert(x,item,place)a,i,size')
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 53
                        mov              r10, 6;                              jmp   n106_define_α
n105_statement_begin_β: mov              r11, 53;                             jmp   n108_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_define_α:          mov              r11, 54
                        mov              rdi, qword ptr [rip + .Lx751_0]
                        mov              rsi, qword ptr [rip + .Lx751_1]
                        mov              edx, 6
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + n171_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx751_0]
                        lea              rsi, [rip + ListInsert_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_statement_end_α
n106_define_β:          mov              r11, 54;                             jmp   n105_statement_begin_β
.Lx751_0:               .quad            .Lx751_0_s
.Lx751_0_s:             .string          "ListInsert"
.Lx751_1:               .quad            .Lx751_1_s
.Lx751_1_s:             .string          "x,item,place,a,i,size"
                                                                              jmp   .Lx752_245
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
                        mov              qword ptr [rsp + 80], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 144]
                        cmp              rdx, 0;                              jbe   .Lx752_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx752_41
.Lx752_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx752_41:              cmp              rdx, 1;                              jbe   .Lx752_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx752_42
.Lx752_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx752_42:              cmp              rdx, 2;                              jbe   .Lx752_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx752_43
.Lx752_12:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx752_43:              lea              rcx, [rip + ListInsert_γ]
                        lea              rax, [rip + ListInsert_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n171_statement_begin_α]; jmp   rax
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
                        cmp              rdx, 0;                              jbe   .Lx752_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx752_110
.Lx752_80:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx752_110:             cmp              rdx, 1;                              jbe   .Lx752_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx752_111
.Lx752_81:              mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx752_111:             cmp              rdx, 2;                              jbe   .Lx752_82
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx752_112
.Lx752_82:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx752_112:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx752_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx752_180
.Lx752_150:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx752_180:             cmp              rdx, 1;                              jbe   .Lx752_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx752_181
.Lx752_151:             mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx752_181:             cmp              rdx, 2;                              jbe   .Lx752_152
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx752_182
.Lx752_152:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx752_182:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 144
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx752_245:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 55
                        mov              r10, 6;                              jmp   n108_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListRemove(x,place)i,size')
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 56
                        mov              r10, 7;                              jmp   n109_define_α
n108_statement_begin_β: mov              r11, 56;                             jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_define_α:          mov              r11, 57
                        mov              rdi, qword ptr [rip + .Lx758_0]
                        mov              rsi, qword ptr [rip + .Lx758_1]
                        mov              edx, 4
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n348_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx758_0]
                        lea              rsi, [rip + ListRemove_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_statement_end_α
n109_define_β:          mov              r11, 57;                             jmp   n108_statement_begin_β
.Lx758_0:               .quad            .Lx758_0_s
.Lx758_0_s:             .string          "ListRemove"
.Lx758_1:               .quad            .Lx758_1_s
.Lx758_1_s:             .string          "x,place,i,size"
                                                                              jmp   .Lx759_245
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
                        mov              qword ptr [rsp + 64], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 112]
                        cmp              rdx, 0;                              jbe   .Lx759_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx759_41
.Lx759_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx759_41:              cmp              rdx, 1;                              jbe   .Lx759_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx759_42
.Lx759_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx759_42:              lea              rcx, [rip + ListRemove_γ]
                        lea              rax, [rip + ListRemove_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n348_statement_begin_α]; jmp   rax
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
                        cmp              rdx, 0;                              jbe   .Lx759_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx759_110
.Lx759_80:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx759_110:             cmp              rdx, 1;                              jbe   .Lx759_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx759_111
.Lx759_81:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx759_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx759_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx759_180
.Lx759_150:             mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx759_180:             cmp              rdx, 1;                              jbe   .Lx759_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx759_181
.Lx759_151:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx759_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 112
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx759_245:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   mov              r11, 58
                        mov              r10, 7;                              jmp   n111_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPop(x)')
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α: mov              r11, 59
                        mov              r10, 8;                              jmp   n112_define_α
n111_statement_begin_β: mov              r11, 59;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_define_α:          mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              rsi, qword ptr [rip + .Lx765_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n432_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        lea              rsi, [rip + ListPop_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_statement_end_α
n112_define_β:          mov              r11, 60;                             jmp   n111_statement_begin_β
.Lx765_0:               .quad            .Lx765_0_s
.Lx765_0_s:             .string          "ListPop"
.Lx765_1:               .quad            .Lx765_1_s
.Lx765_1_s:             .string          "x"
                                                                              jmp   .Lx766_245
#-----------------------------------------------------------------------------------------------------------------------
ListPop_α:              sub              rsp, 64
                        mov              rax, qword ptr [r9 + 192]            # ListPop
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 192], 0
                        mov              qword ptr [r9 + 200], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx766_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx766_41
.Lx766_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx766_41:              lea              rcx, [rip + ListPop_γ]
                        lea              rax, [rip + ListPop_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n432_statement_begin_α]; jmp   rax
ListPop_γ:              mov              rdi, qword ptr [r9 + 192]            # ListPop
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx766_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx766_110
.Lx766_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx766_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx766_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx766_180
.Lx766_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx766_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx766_245:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 61
                        mov              r10, 8;                              jmp   n114_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListSize(x)')                                   :(ListEnd)
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 62
                        mov              r10, 9;                              jmp   n115_define_α
n114_statement_begin_β: mov              r11, 62;                             jmp   n464_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_define_α:          mov              r11, 63
                        mov              rdi, qword ptr [rip + .Lx772_0]
                        mov              rsi, qword ptr [rip + .Lx772_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n439_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx772_0]
                        lea              rsi, [rip + ListSize_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_statement_end_α
n115_define_β:          mov              r11, 63;                             jmp   n114_statement_begin_β
.Lx772_0:               .quad            .Lx772_0_s
.Lx772_0_s:             .string          "ListSize"
.Lx772_1:               .quad            .Lx772_1_s
.Lx772_1_s:             .string          "x"
                                                                              jmp   .Lx773_245
#-----------------------------------------------------------------------------------------------------------------------
ListSize_α:             sub              rsp, 64
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 208], 0
                        mov              qword ptr [r9 + 216], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx773_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx773_41
.Lx773_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx773_41:              lea              rcx, [rip + ListSize_γ]
                        lea              rax, [rip + ListSize_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n439_statement_begin_α]; jmp   rax
ListSize_γ:             mov              rdi, qword ptr [r9 + 208]            # ListSize
                        mov              rsi, qword ptr [r9 + 216]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx773_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx773_110
.Lx773_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx773_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx773_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx773_180
.Lx773_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx773_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx773_245:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 64
                        mov              r10, 9;                              jmp   n464_statement_begin_α
#=======================================================================================================================
# ListValue       place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α: mov              r11, 65
                        mov              r10, 10;                             jmp   n118_var_α
n117_statement_begin_β: mov              r11, 65;                             jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_coerce_numeric_α
n119_lit_integer_β:     mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n117_statement_begin_β
.Lx779_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 68
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx781_1
                        cmp              al, 3;                               jne   .Lx781_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx781_0
.Lx781_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_coerce_numeric_α
.Lx781_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_coerce_numeric_α
n120_coerce_numeric_β:  mov              r11, 68
                        add              rsp, 16;                             jmp   n119_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 69
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx783_1
                        cmp              al, 3;                               jne   .Lx783_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx783_0
.Lx783_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_cmp_test_α
.Lx783_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_cmp_test_α
n121_coerce_numeric_β:  mov              r11, 69
                        add              rsp, 16;                             jmp   n120_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n122_cmp_test_α:        sub              rsp, 16
                        mov              r11, 70
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx785_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx785_239
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx785_239:                                                                   jmp   n123_var_α
.Lx785_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx785_240
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
.Lx785_240:                                                                   jmp   n123_var_α
n122_cmp_test_β:        mov              r11, 70
                        add              rsp, 16;                             jmp   n121_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_call_α
n123_var_β:             mov              r11, 71
                        add              rsp, 16;                             jmp   n122_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            sub              rsp, 16
                        mov              r11, 72
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd788:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd788]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx787_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lx787_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_call_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_binop_α
n125_var_β:             mov              r11, 73
                        add              rsp, 32;                             jmp   n123_var_β
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           sub              rsp, 16
                        mov              r11, 74
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx790_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx790_7
.Lx790_2:               and              edx, 1;                              jz    .Lx790_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx790_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx790_4
.Lx790_3:               movq             xmm0, rsi
.Lx790_4:               cmp              cl, 5;                               je    .Lx790_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx790_6
.Lx790_5:               movq             xmm1, rdi
.Lx790_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx790_7:                                                                     jmp   n127_assign_α
.Lx790_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx790_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lx790_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              r11, 75
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 76
                        mov              r10, 10
                        add              rsp, 144;                            jmp   n129_statement_begin_α
#=======================================================================================================================
#                 ListValue       =   a(x)[place]                         :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 77
                        mov              r10, 11;                             jmp   n130_var_α
n129_statement_begin_β: mov              r11, 77;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_call_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            sub              rsp, 16
                        mov              r11, 79
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd798:            .string          "a"
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
                        cmp              al, 104;                             jne   .Lx797_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lx797_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
n131_call_β:            mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_subscript_α
n132_var_β:             mov              r11, 80
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n129_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_subscript_α:       sub              rsp, 16
                        mov              r11, 81
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx800_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lx800_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_deref_α
n133_subscript_β:       mov              r11, 81
                        add              rsp, 16;                             jmp   n132_var_β
#-----------------------------------------------------------------------------------------------------------------------
n134_deref_α:           sub              rsp, 16
                        mov              r11, 82
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx801_240
                        add              rsp, 16;                             jmp   n133_subscript_β
.Lx801_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              qword ptr [r9 + 8], rdx;             jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 84
                        mov              r10, 11
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListName        place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 85
                        mov              r10, 12;                             jmp   n138_var_α
n137_statement_begin_β: mov              r11, 85;                             jmp   n149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_coerce_numeric_α
n139_lit_integer_β:     mov              r11, 87
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
.Lx808_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 88
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx810_1
                        cmp              al, 3;                               jne   .Lx810_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx810_0
.Lx810_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_coerce_numeric_α
.Lx810_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_coerce_numeric_α
n140_coerce_numeric_β:  mov              r11, 88
                        add              rsp, 16;                             jmp   n139_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n141_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 89
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx812_1
                        cmp              al, 3;                               jne   .Lx812_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx812_0
.Lx812_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_cmp_test_α
.Lx812_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_cmp_test_α
n141_coerce_numeric_β:  mov              r11, 89
                        add              rsp, 16;                             jmp   n140_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n142_cmp_test_α:        sub              rsp, 16
                        mov              r11, 90
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx814_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx814_239
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
.Lx814_239:                                                                   jmp   n143_var_α
.Lx814_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx814_240
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
.Lx814_240:                                                                   jmp   n143_var_α
n142_cmp_test_β:        mov              r11, 90
                        add              rsp, 16;                             jmp   n141_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_call_α
n143_var_β:             mov              r11, 91
                        add              rsp, 16;                             jmp   n142_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        mov              r11, 92
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd817:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd817]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx816_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lx816_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_var_α
n144_call_β:            mov              r11, 92
                        add              rsp, 16;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_binop_α
n145_var_β:             mov              r11, 93
                        add              rsp, 32;                             jmp   n143_var_β
#-----------------------------------------------------------------------------------------------------------------------
n146_binop_α:           sub              rsp, 16
                        mov              r11, 94
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx819_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx819_7
.Lx819_2:               and              edx, 1;                              jz    .Lx819_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx819_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx819_4
.Lx819_3:               movq             xmm0, rsi
.Lx819_4:               cmp              cl, 5;                               je    .Lx819_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx819_6
.Lx819_5:               movq             xmm1, rdi
.Lx819_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx819_7:                                                                     jmp   n147_assign_α
.Lx819_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx819_240
                        add              rsp, 16;                             jmp   n145_var_β
.Lx819_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              r11, 95
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 96
                        mov              r10, 12
                        add              rsp, 144;                            jmp   n149_statement_begin_α
#=======================================================================================================================
#                 ListName        =   .a(x)[place]                        :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 97
                        mov              r10, 13;                             jmp   n150_var_α
n149_statement_begin_β: mov              r11, 97;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_call_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            sub              rsp, 16
                        mov              r11, 99
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd827:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd827]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx826_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
.Lx826_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_var_α
n151_call_β:            mov              r11, 99
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_subscript_α
n152_var_β:             mov              r11, 100
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n153_subscript_α:       sub              rsp, 16
                        mov              r11, 101
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx829_240
                        add              rsp, 16;                             jmp   n152_var_β
.Lx829_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              qword ptr [r9 + 56], rdx;            jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 103
                        mov              r10, 13
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListAppend      ListAppend      =   ListInsert(x, item, n(x))     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 104
                        mov              r10, 14;                             jmp   n157_var_α
n156_statement_begin_β: mov              r11, 104;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_var_α
n158_var_β:             mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_call_α
n159_var_β:             mov              r11, 107
                        add              rsp, 16;                             jmp   n158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        mov              r11, 108
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd839:            .string          "n"
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
                        cmp              al, 104;                             jne   .Lx838_240
                        add              rsp, 16;                             jmp   n159_var_β
.Lx838_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_call_α
n160_call_β:            mov              r11, 108
                        add              rsp, 16;                             jmp   n159_var_β
#-----------------------------------------------------------------------------------------------------------------------
n161_call_α:            sub              rsp, 16
                        mov              r11, 109
                        lea              rcx, [rip + .Lsig841z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig841z:              .quad            3
                        .quad            .Lx841_2
                        .quad            .Lx841_2
                        .quad            64
                        .quad            48
                        .quad            16
.Lx841_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx841_29
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
.Lx841_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx841_240
                        add              rsp, 32;                             jmp   n159_var_β
.Lx841_240:                                                                   jmp   n162_assign_α
n161_call_β:            mov              r11, 109;                            jmp   n159_var_β
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              qword ptr [r9 + 72], rdx;            jmp   n163_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 111
                        mov              r10, 14
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListPrepend     ListPrepend     =   ListInsert(x, item, 0)              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_begin_α: mov              r11, 112
                        mov              r10, 15;                             jmp   n165_var_α
n164_statement_begin_β: mov              r11, 112;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_var_β:             mov              r11, 114
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_call_α
n167_lit_integer_β:     mov              r11, 115
                        add              rsp, 16;                             jmp   n166_var_β
.Lx849_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            sub              rsp, 16
                        mov              r11, 116
                        lea              rcx, [rip + .Lsig851z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig851z:              .quad            3
                        .quad            .Lx851_2
                        .quad            .Lx851_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx851_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx851_29
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
.Lx851_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx851_240
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Lx851_240:                                                                   jmp   n169_assign_α
n168_call_β:            mov              r11, 116;                            jmp   n167_lit_integer_β
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              qword ptr [r9 + 104], rdx;           jmp   n170_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 118
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListInsert      ListInsert      =   x
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α: mov              r11, 119
                        mov              r10, 16;                             jmp   n172_var_α
n171_statement_begin_β: mov              r11, 119;                            jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              qword ptr [r9 + 120], rdx;           jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 122
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_α
#=======================================================================================================================
#                 size            =   ListSize(x)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 123
                        mov              r10, 17;                             jmp   n176_var_α
n175_statement_begin_β: mov              r11, 123;                            jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_call_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            sub              rsp, 16
                        mov              r11, 125
                        lea              rcx, [rip + .Lsig865z]
                        lea              rax, [rip + ListSize_α];             jmp   rax
.Lsig865z:              .quad            1
                        .quad            .Lx865_2
                        .quad            .Lx865_2
                        .quad            16
.Lx865_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx865_29
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
.Lx865_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx865_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Lx865_240:                                                                   jmp   n178_assign_α
n177_call_β:            mov              r11, 125;                            jmp   n175_statement_begin_β
.Lx865_0:               .quad            .Lx865_0_s
.Lx865_0_s:             .string          "ListSize"
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              qword ptr [r9 + 168], rdx;           jmp   n179_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 127
                        mov              r10, 17
                        add              rsp, 32;                             jmp   n180_statement_begin_α
#=======================================================================================================================
#                 place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 128
                        mov              r10, 18;                             jmp   n181_var_α
n180_statement_begin_β: mov              r11, 128;                            jmp   n192_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 129
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_coerce_numeric_α
n182_lit_integer_β:     mov              r11, 130
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n180_statement_begin_β
.Lx872_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n183_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 131
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx874_1
                        cmp              al, 3;                               jne   .Lx874_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx874_0
.Lx874_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_coerce_numeric_α
.Lx874_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_coerce_numeric_α
n183_coerce_numeric_β:  mov              r11, 131
                        add              rsp, 16;                             jmp   n182_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n184_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 132
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx876_1
                        cmp              al, 3;                               jne   .Lx876_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx876_0
.Lx876_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_cmp_test_α
.Lx876_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_cmp_test_α
n184_coerce_numeric_β:  mov              r11, 132
                        add              rsp, 16;                             jmp   n183_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n185_cmp_test_α:        sub              rsp, 16
                        mov              r11, 133
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx878_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx878_239
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx878_239:                                                                   jmp   n186_var_α
.Lx878_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx878_240
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx878_240:                                                                   jmp   n186_var_α
n185_cmp_test_β:        mov              r11, 133
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_call_α
n186_var_β:             mov              r11, 134
                        add              rsp, 16;                             jmp   n185_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:            sub              rsp, 16
                        mov              r11, 135
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd881:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd881]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx880_240
                        add              rsp, 16;                             jmp   n186_var_β
.Lx880_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_var_α
n187_call_β:            mov              r11, 135
                        add              rsp, 16;                             jmp   n186_var_β
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_binop_α
n188_var_β:             mov              r11, 136
                        add              rsp, 32;                             jmp   n186_var_β
#-----------------------------------------------------------------------------------------------------------------------
n189_binop_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx883_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx883_7
.Lx883_2:               and              edx, 1;                              jz    .Lx883_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx883_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx883_4
.Lx883_3:               movq             xmm0, rsi
.Lx883_4:               cmp              cl, 5;                               je    .Lx883_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx883_6
.Lx883_5:               movq             xmm1, rdi
.Lx883_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx883_7:                                                                     jmp   n190_assign_α
.Lx883_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx883_240
                        add              rsp, 16;                             jmp   n188_var_β
.Lx883_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 138
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n191_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 139
                        mov              r10, 18
                        add              rsp, 144;                            jmp   n192_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 140
                        mov              r10, 19;                             jmp   n193_var_α
n192_statement_begin_β: mov              r11, 140;                            jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_coerce_numeric_α
n194_lit_integer_β:     mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n192_statement_begin_β
.Lx890_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n195_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx892_1
                        cmp              al, 3;                               jne   .Lx892_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx892_0
.Lx892_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_coerce_numeric_α
.Lx892_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n196_coerce_numeric_α
n195_coerce_numeric_β:  mov              r11, 143
                        add              rsp, 16;                             jmp   n194_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n196_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx894_1
                        cmp              al, 3;                               jne   .Lx894_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx894_0
.Lx894_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_cmp_test_α
.Lx894_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_cmp_test_α
n196_coerce_numeric_β:  mov              r11, 144
                        add              rsp, 16;                             jmp   n195_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n197_cmp_test_α:        sub              rsp, 16
                        mov              r11, 145
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx896_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx896_239
                        add              rsp, 16;                             jmp   n196_coerce_numeric_β
.Lx896_239:                                                                   jmp   n198_statement_end_α
.Lx896_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx896_240
                        add              rsp, 16;                             jmp   n196_coerce_numeric_β
.Lx896_240:                                                                   jmp   n198_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 146
                        mov              r10, 19
                        add              rsp, 80;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#                 LE(place, n(x))                                         :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 147
                        mov              r10, 20;                             jmp   n200_var_α
n199_statement_begin_β: mov              r11, 147;                            jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_call_α
n201_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        mov              r11, 150
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd904:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd904]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx903_240
                        add              rsp, 16;                             jmp   n201_var_β
.Lx903_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_coerce_numeric_α
n202_call_β:            mov              r11, 150
                        add              rsp, 16;                             jmp   n201_var_β
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 151
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx906_1
                        cmp              al, 3;                               jne   .Lx906_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx906_0
.Lx906_1:               mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
.Lx906_0:               lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:  mov              r11, 151
                        add              rsp, 32;                             jmp   n201_var_β
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 152
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx908_1
                        cmp              al, 3;                               jne   .Lx908_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx908_0
.Lx908_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_cmp_test_α
.Lx908_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_cmp_test_α
n204_coerce_numeric_β:  mov              r11, 152
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:        sub              rsp, 16
                        mov              r11, 153
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx910_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx910_239
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx910_239:                                                                   jmp   n206_statement_end_α
.Lx910_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jle   .Lx910_240
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lx910_240:                                                                   jmp   n206_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   mov              r11, 154
                        mov              r10, 20
                        add              rsp, 96;                             jmp   n207_statement_begin_α
#=======================================================================================================================
#                 LT(n(x), size)                                          :F(ListInsert4)
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_begin_α: mov              r11, 155
                        mov              r10, 21;                             jmp   n208_var_α
n207_statement_begin_β: mov              r11, 155;                            jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 156
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_call_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            sub              rsp, 16
                        mov              r11, 157
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
                        cmp              al, 104;                             jne   .Lx916_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
.Lx916_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_var_α
n209_call_β:            mov              r11, 157
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_coerce_numeric_α
n210_var_β:             mov              r11, 158
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n207_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 159
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx920_1
                        cmp              al, 3;                               jne   .Lx920_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx920_0
.Lx920_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_coerce_numeric_α
.Lx920_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_coerce_numeric_α
n211_coerce_numeric_β:  mov              r11, 159
                        add              rsp, 16;                             jmp   n210_var_β
#-----------------------------------------------------------------------------------------------------------------------
n212_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 160
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx922_1
                        cmp              al, 3;                               jne   .Lx922_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx922_0
.Lx922_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_cmp_test_α
.Lx922_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_cmp_test_α
n212_coerce_numeric_β:  mov              r11, 160
                        add              rsp, 16;                             jmp   n211_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n213_cmp_test_α:        sub              rsp, 16
                        mov              r11, 161
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx924_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx924_239
                        add              rsp, 16;                             jmp   n212_coerce_numeric_β
.Lx924_239:                                                                   jmp   n214_statement_end_α
.Lx924_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx924_240
                        add              rsp, 16;                             jmp   n212_coerce_numeric_β
.Lx924_240:                                                                   jmp   n214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   mov              r11, 162
                        mov              r10, 21
                        add              rsp, 96;                             jmp   n215_statement_begin_α
#=======================================================================================================================
#                 i               =   n(x) + 1
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_begin_α: mov              r11, 163
                        mov              r10, 22;                             jmp   n216_var_α
n215_statement_begin_β: mov              r11, 163;                            jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_call_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 165
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd931:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd931]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx930_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n215_statement_begin_β
.Lx930_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_lit_integer_α
n217_call_β:            mov              r11, 165
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n215_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_binop_α
n218_lit_integer_β:     mov              r11, 166
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n215_statement_begin_β
.Lx932_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:           sub              rsp, 16
                        mov              r11, 167
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx933_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx933_7
.Lx933_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx933_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx933_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx933_4
.Lx933_3:               movq             xmm0, rsi
.Lx933_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx933_7:                                                                     jmp   n220_assign_α
.Lx933_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx933_240
                        add              rsp, 16;                             jmp   n218_lit_integer_β
.Lx933_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n220_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 168
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n221_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 169
                        mov              r10, 22
                        add              rsp, 64;                             jmp   n222_statement_begin_α
#=======================================================================================================================
# ListInsert1     i               =   GT(i, place + 1) i - 1              :F(ListInsert2)
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 170
                        mov              r10, 23;                             jmp   n223_var_α
n222_statement_begin_β: mov              r11, 170;                            jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 171
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
n224_var_β:             mov              r11, 172
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_binop_α
n225_lit_integer_β:     mov              r11, 173
                        add              rsp, 16;                             jmp   n224_var_β
.Lx941_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n226_binop_α:           sub              rsp, 16
                        mov              r11, 174
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx942_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx942_7
.Lx942_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx942_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx942_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx942_4
.Lx942_3:               movq             xmm0, rsi
.Lx942_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx942_7:                                                                     jmp   n227_coerce_numeric_α
.Lx942_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx942_240
                        add              rsp, 16;                             jmp   n225_lit_integer_β
.Lx942_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_coerce_numeric_α
n226_binop_β:           mov              r11, 174
                        add              rsp, 16;                             jmp   n225_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 175
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx944_1
                        cmp              al, 3;                               jne   .Lx944_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx944_0
.Lx944_1:               mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_coerce_numeric_α
.Lx944_0:               lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_coerce_numeric_α
n227_coerce_numeric_β:  mov              r11, 175
                        add              rsp, 16;                             jmp   n226_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n228_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 176
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx946_1
                        cmp              al, 3;                               jne   .Lx946_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx946_0
.Lx946_1:               mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_cmp_test_α
.Lx946_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n229_cmp_test_α
n228_coerce_numeric_β:  mov              r11, 176
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n229_cmp_test_α:        sub              rsp, 16
                        mov              r11, 177
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx948_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx948_239
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lx948_239:                                                                   jmp   n230_var_α
.Lx948_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jg    .Lx948_240
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lx948_240:                                                                   jmp   n230_var_α
n229_cmp_test_β:        mov              r11, 177
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_lit_integer_α
n230_var_β:             mov              r11, 178
                        add              rsp, 16;                             jmp   n229_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_binop_α
n231_lit_integer_β:     mov              r11, 179
                        add              rsp, 16;                             jmp   n230_var_β
.Lx950_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 180
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx951_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx951_7
.Lx951_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx951_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx951_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx951_4
.Lx951_3:               movq             xmm0, rsi
.Lx951_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx951_7:                                                                     jmp   n233_assign_α
.Lx951_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx951_240
                        add              rsp, 16;                             jmp   n231_lit_integer_β
.Lx951_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 182
                        mov              r10, 23
                        add              rsp, 160;                            jmp   n235_statement_begin_α
#=======================================================================================================================
#                 a(x)[i]         =   a(x)[i - 1]                         :(ListInsert1)
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 183
                        mov              r10, 24;                             jmp   n236_var_α
n235_statement_begin_β: mov              r11, 183;                            jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_call_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        mov              r11, 185
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd959:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd959]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx958_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
.Lx958_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
n237_call_β:            mov              r11, 185
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_subscript_α
n238_var_β:             mov              r11, 186
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_subscript_α:       sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx961_240
                        add              rsp, 16;                             jmp   n238_var_β
.Lx961_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
n239_subscript_β:       mov              r11, 187
                        add              rsp, 16;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_call_α
n240_var_β:             mov              r11, 188
                        add              rsp, 16;                             jmp   n239_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 189
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd964:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd964]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx963_240
                        add              rsp, 16;                             jmp   n240_var_β
.Lx963_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
n241_call_β:            mov              r11, 189
                        add              rsp, 16;                             jmp   n240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_lit_integer_α
n242_var_β:             mov              r11, 190
                        add              rsp, 32;                             jmp   n240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_binop_α
n243_lit_integer_β:     mov              r11, 191
                        add              rsp, 16;                             jmp   n242_var_β
.Lx966_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           sub              rsp, 16
                        mov              r11, 192
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx967_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx967_7
.Lx967_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx967_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx967_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx967_4
.Lx967_3:               movq             xmm0, rsi
.Lx967_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx967_7:                                                                     jmp   n245_subscript_α
.Lx967_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx967_240
                        add              rsp, 16;                             jmp   n243_lit_integer_β
.Lx967_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_subscript_α
n244_binop_β:           mov              r11, 192
                        add              rsp, 16;                             jmp   n243_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n245_subscript_α:       sub              rsp, 16
                        mov              r11, 193
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx968_240
                        add              rsp, 16;                             jmp   n244_binop_β
.Lx968_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_deref_α
n245_subscript_β:       mov              r11, 193
                        add              rsp, 16;                             jmp   n244_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n246_deref_α:           sub              rsp, 16
                        mov              r11, 194
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx969_240
                        add              rsp, 16;                             jmp   n245_subscript_β
.Lx969_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_assign_var_α
n246_deref_β:           mov              r11, 194
                        add              rsp, 16;                             jmp   n245_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_var_α:      sub              rsp, 16
                        mov              r11, 195
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx970_240
                        add              rsp, 16;                             jmp   n246_deref_β
.Lx970_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_end_α:   mov              r11, 196
                        mov              r10, 24
                        add              rsp, 192;                            jmp   n222_statement_begin_α
#=======================================================================================================================
# ListInsert2     a(x)[i - 1]     =   item                                :(ListInsert9)
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α: mov              r11, 197
                        mov              r10, 25;                             jmp   n250_var_α
n249_statement_begin_β: mov              r11, 197;                            jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_call_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            sub              rsp, 16
                        mov              r11, 199
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd977:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd977]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx976_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
.Lx976_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_var_α
n251_call_β:            mov              r11, 199
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
n252_var_β:             mov              r11, 200
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n249_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              r11, 201
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_binop_α
n253_lit_integer_β:     mov              r11, 201
                        add              rsp, 16;                             jmp   n252_var_β
.Lx979_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n254_binop_α:           sub              rsp, 16
                        mov              r11, 202
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx980_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx980_7
.Lx980_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx980_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx980_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx980_4
.Lx980_3:               movq             xmm0, rsi
.Lx980_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx980_7:                                                                     jmp   n255_subscript_α
.Lx980_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx980_240
                        add              rsp, 16;                             jmp   n253_lit_integer_β
.Lx980_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_subscript_α
n254_binop_β:           mov              r11, 202
                        add              rsp, 16;                             jmp   n253_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n255_subscript_α:       sub              rsp, 16
                        mov              r11, 203
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx981_240
                        add              rsp, 16;                             jmp   n254_binop_β
.Lx981_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_var_α
n255_subscript_β:       mov              r11, 203
                        add              rsp, 16;                             jmp   n254_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 204
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_assign_var_α
n256_var_β:             mov              r11, 204
                        add              rsp, 16;                             jmp   n255_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_var_α:      sub              rsp, 16
                        mov              r11, 205
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx983_240
                        add              rsp, 16;                             jmp   n256_var_β
.Lx983_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 206
                        mov              r10, 25
                        add              rsp, 128;                            jmp   n339_statement_begin_α
#=======================================================================================================================
# ListInsert4     a               =   ARRAY('0:' (IDENT(a(x)) 0, size * 2 - 1))
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 207
                        mov              r10, 26;                             jmp   n260_var_α
n259_statement_begin_β: mov              r11, 207;                            jmp   n268_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_call_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 209
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd990:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd990]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx989_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
.Lx989_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_string_α
n261_call_β:            mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx991_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_ident_α
n262_lit_string_β:      mov              r11, 210
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n259_statement_begin_β
.Lx991_0:               .quad            .Lx991_0_s
.Lx991_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n263_ident_α:           sub              rsp, 16
                        mov              r11, 211
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx993_240
                        add              rsp, 16;                             jmp   n262_lit_string_β
.Lx993_240:                                                                   jmp   n264_lit_string_α
n263_ident_β:           mov              r11, 211
                        add              rsp, 16;                             jmp   n262_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_call_α
n264_lit_string_β:      mov              r11, 212
                        add              rsp, 16;                             jmp   n263_ident_β
.Lx994_0:               .quad            .Lx994_0_s
.Lx994_0_s:             .string          "0:0"
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            sub              rsp, 16
                        mov              r11, 213
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd996:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd996]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx995_240
                        add              rsp, 16;                             jmp   n264_lit_string_β
.Lx995_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_assign_α
n265_call_β:            mov              r11, 213
                        add              rsp, 16;                             jmp   n264_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              qword ptr [r9 + 136], rdx;           jmp   n267_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_end_α:   mov              r11, 215
                        mov              r10, 26
                        add              rsp, 96;                             jmp   n268_statement_begin_α
#=======================================================================================================================
#                 i               =   -1
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_begin_α: mov              r11, 216
                        mov              r10, 27;                             jmp   n269_lit_integer_α
n268_statement_begin_β: mov              r11, 216;                            jmp   n273_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1002_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_unop_α
.Lx1002_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n270_unop_α:            sub              rsp, 16
                        mov              r11, 218
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n272_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   mov              r11, 220
                        mov              r10, 27
                        add              rsp, 32;                             jmp   n273_statement_begin_α
#=======================================================================================================================
# ListInsert5     i               =   LT(i, place - 1) i + 1              :F(ListInsert6)
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α: mov              r11, 221
                        mov              r10, 28;                             jmp   n274_var_α
n273_statement_begin_β: mov              r11, 221;                            jmp   n297_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_lit_integer_α
n275_var_β:             mov              r11, 223
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     sub              rsp, 16
                        mov              r11, 224
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_binop_α
n276_lit_integer_β:     mov              r11, 224
                        add              rsp, 16;                             jmp   n275_var_β
.Lx1011_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1012_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1012_7
.Lx1012_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1012_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1012_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1012_4
.Lx1012_3:              movq             xmm0, rsi
.Lx1012_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1012_7:                                                                    jmp   n278_coerce_numeric_α
.Lx1012_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1012_240
                        add              rsp, 16;                             jmp   n276_lit_integer_β
.Lx1012_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n278_coerce_numeric_α
n277_binop_β:           mov              r11, 225
                        add              rsp, 16;                             jmp   n276_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n278_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx1014_1
                        cmp              al, 3;                               jne   .Lx1014_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1014_0
.Lx1014_1:              mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_coerce_numeric_α
.Lx1014_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_coerce_numeric_α
n278_coerce_numeric_β:  mov              r11, 226
                        add              rsp, 16;                             jmp   n277_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n279_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1016_1
                        cmp              al, 3;                               jne   .Lx1016_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx1016_0
.Lx1016_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_cmp_test_α
.Lx1016_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n280_cmp_test_α
n279_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n278_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n280_cmp_test_α:        sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1018_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1018_239
                        add              rsp, 16;                             jmp   n279_coerce_numeric_β
.Lx1018_239:                                                                  jmp   n281_var_α
.Lx1018_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1018_240
                        add              rsp, 16;                             jmp   n279_coerce_numeric_β
.Lx1018_240:                                                                  jmp   n281_var_α
n280_cmp_test_β:        mov              r11, 228
                        add              rsp, 16;                             jmp   n279_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_lit_integer_α
n281_var_β:             mov              r11, 229
                        add              rsp, 16;                             jmp   n280_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:     sub              rsp, 16
                        mov              r11, 230
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_binop_α
n282_lit_integer_β:     mov              r11, 230
                        add              rsp, 16;                             jmp   n281_var_β
.Lx1020_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n283_binop_α:           sub              rsp, 16
                        mov              r11, 231
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1021_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1021_7
.Lx1021_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1021_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1021_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1021_4
.Lx1021_3:              movq             xmm0, rsi
.Lx1021_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1021_7:                                                                    jmp   n284_assign_α
.Lx1021_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1021_240
                        add              rsp, 16;                             jmp   n282_lit_integer_β
.Lx1021_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n285_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:   mov              r11, 233
                        mov              r10, 28
                        add              rsp, 160;                            jmp   n286_statement_begin_α
#=======================================================================================================================
#                 a[i]            =   a(x)[i]                             :(ListInsert5)
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_begin_α: mov              r11, 234
                        mov              r10, 29;                             jmp   n287_var_α
n286_statement_begin_β: mov              r11, 234;                            jmp   n273_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 236
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_subscript_α
n288_var_β:             mov              r11, 236
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n286_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n289_subscript_α:       sub              rsp, 16
                        mov              r11, 237
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1029_240
                        add              rsp, 16;                             jmp   n288_var_β
.Lx1029_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_var_α
n289_subscript_β:       mov              r11, 237
                        add              rsp, 16;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              r11, 238
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_call_α
n290_var_β:             mov              r11, 238
                        add              rsp, 16;                             jmp   n289_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:            sub              rsp, 16
                        mov              r11, 239
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1032:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1032]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1031_240
                        add              rsp, 16;                             jmp   n290_var_β
.Lx1031_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_var_α
n291_call_β:            mov              r11, 239
                        add              rsp, 16;                             jmp   n290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_subscript_α
n292_var_β:             mov              r11, 240
                        add              rsp, 32;                             jmp   n290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n293_subscript_α:       sub              rsp, 16
                        mov              r11, 241
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1034_240
                        add              rsp, 16;                             jmp   n292_var_β
.Lx1034_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_subscript_β:       mov              r11, 241
                        add              rsp, 16;                             jmp   n292_var_β
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              r11, 242
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1035_240
                        add              rsp, 16;                             jmp   n293_subscript_β
.Lx1035_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_assign_var_α
n294_deref_β:           mov              r11, 242
                        add              rsp, 16;                             jmp   n293_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n295_assign_var_α:      sub              rsp, 16
                        mov              r11, 243
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1036_240
                        add              rsp, 16;                             jmp   n294_deref_β
.Lx1036_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_end_α:   mov              r11, 244
                        mov              r10, 29
                        add              rsp, 144;                            jmp   n273_statement_begin_α
#=======================================================================================================================
# ListInsert6     a[i + 1]        =   item
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_begin_α: mov              r11, 245
                        mov              r10, 30;                             jmp   n298_var_α
n297_statement_begin_β: mov              r11, 245;                            jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              r11, 247
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_lit_integer_α
n299_var_β:             mov              r11, 247
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n297_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:     sub              rsp, 16
                        mov              r11, 248
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n301_binop_α
n300_lit_integer_β:     mov              r11, 248
                        add              rsp, 16;                             jmp   n299_var_β
.Lx1043_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n301_binop_α:           sub              rsp, 16
                        mov              r11, 249
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1044_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1044_7
.Lx1044_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1044_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1044_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1044_4
.Lx1044_3:              movq             xmm0, rsi
.Lx1044_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1044_7:                                                                    jmp   n302_subscript_α
.Lx1044_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1044_240
                        add              rsp, 16;                             jmp   n300_lit_integer_β
.Lx1044_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n302_subscript_α
n301_binop_β:           mov              r11, 249
                        add              rsp, 16;                             jmp   n300_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n302_subscript_α:       sub              rsp, 16
                        mov              r11, 250
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1045_240
                        add              rsp, 16;                             jmp   n301_binop_β
.Lx1045_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_var_α
n302_subscript_β:       mov              r11, 250
                        add              rsp, 16;                             jmp   n301_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_assign_var_α
n303_var_β:             mov              r11, 251
                        add              rsp, 16;                             jmp   n302_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_var_α:      sub              rsp, 16
                        mov              r11, 252
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1047_240
                        add              rsp, 16;                             jmp   n303_var_β
.Lx1047_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n305_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 253
                        mov              r10, 30
                        add              rsp, 112;                            jmp   n306_statement_begin_α
#=======================================================================================================================
# ListInsert7     i               =   LT(i, n(x) - 1) i + 1               :F(ListInsert8)
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α: mov              r11, 254
                        mov              r10, 31;                             jmp   n307_var_α
n306_statement_begin_β: mov              r11, 254;                            jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 256
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_call_α
n308_var_β:             mov              r11, 256
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            sub              rsp, 16
                        mov              r11, 257
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1055:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1055]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1054_240
                        add              rsp, 16;                             jmp   n308_var_β
.Lx1054_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_lit_integer_α
n309_call_β:            mov              r11, 257
                        add              rsp, 16;                             jmp   n308_var_β
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:     sub              rsp, 16
                        mov              r11, 258
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_binop_α
n310_lit_integer_β:     mov              r11, 258
                        add              rsp, 32;                             jmp   n308_var_β
.Lx1056_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:           sub              rsp, 16
                        mov              r11, 259
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1057_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1057_7
.Lx1057_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1057_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1057_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1057_4
.Lx1057_3:              movq             xmm0, rsi
.Lx1057_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1057_7:                                                                    jmp   n312_coerce_numeric_α
.Lx1057_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1057_240
                        add              rsp, 16;                             jmp   n310_lit_integer_β
.Lx1057_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n312_coerce_numeric_α
n311_binop_β:           mov              r11, 259
                        add              rsp, 16;                             jmp   n310_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n312_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 260
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1059_1
                        cmp              al, 3;                               jne   .Lx1059_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1059_0
.Lx1059_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n313_coerce_numeric_α
.Lx1059_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n313_coerce_numeric_α
n312_coerce_numeric_β:  mov              r11, 260
                        add              rsp, 16;                             jmp   n311_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n313_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 261
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1061_1
                        cmp              al, 3;                               jne   .Lx1061_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1061_0
.Lx1061_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_cmp_test_α
.Lx1061_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n314_cmp_test_α
n313_coerce_numeric_β:  mov              r11, 261
                        add              rsp, 16;                             jmp   n312_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n314_cmp_test_α:        sub              rsp, 16
                        mov              r11, 262
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1063_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1063_239
                        add              rsp, 16;                             jmp   n313_coerce_numeric_β
.Lx1063_239:                                                                  jmp   n315_var_α
.Lx1063_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1063_240
                        add              rsp, 16;                             jmp   n313_coerce_numeric_β
.Lx1063_240:                                                                  jmp   n315_var_α
n314_cmp_test_β:        mov              r11, 262
                        add              rsp, 16;                             jmp   n313_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             sub              rsp, 16
                        mov              r11, 263
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_lit_integer_α
n315_var_β:             mov              r11, 263
                        add              rsp, 16;                             jmp   n314_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     sub              rsp, 16
                        mov              r11, 264
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_binop_α
n316_lit_integer_β:     mov              r11, 264
                        add              rsp, 16;                             jmp   n315_var_β
.Lx1065_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              r11, 265
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1066_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1066_7
.Lx1066_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1066_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1066_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1066_4
.Lx1066_3:              movq             xmm0, rsi
.Lx1066_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1066_7:                                                                    jmp   n318_assign_α
.Lx1066_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1066_240
                        add              rsp, 16;                             jmp   n316_lit_integer_β
.Lx1066_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n318_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n319_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   mov              r11, 267
                        mov              r10, 31
                        add              rsp, 176;                            jmp   n320_statement_begin_α
#=======================================================================================================================
#                 a[i + 1]        =   a(x)[i]                             :(ListInsert7)
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_begin_α: mov              r11, 268
                        mov              r10, 32;                             jmp   n321_var_α
n320_statement_begin_β: mov              r11, 268;                            jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              r11, 270
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_lit_integer_α
n322_var_β:             mov              r11, 270
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     sub              rsp, 16
                        mov              r11, 271
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_binop_α
n323_lit_integer_β:     mov              r11, 271
                        add              rsp, 16;                             jmp   n322_var_β
.Lx1074_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 272
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1075_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1075_7
.Lx1075_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1075_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1075_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1075_4
.Lx1075_3:              movq             xmm0, rsi
.Lx1075_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1075_7:                                                                    jmp   n325_subscript_α
.Lx1075_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1075_240
                        add              rsp, 16;                             jmp   n323_lit_integer_β
.Lx1075_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n325_subscript_α
n324_binop_β:           mov              r11, 272
                        add              rsp, 16;                             jmp   n323_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:       sub              rsp, 16
                        mov              r11, 273
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1076_240
                        add              rsp, 16;                             jmp   n324_binop_β
.Lx1076_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_var_α
n325_subscript_β:       mov              r11, 273
                        add              rsp, 16;                             jmp   n324_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              r11, 274
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_call_α
n326_var_β:             mov              r11, 274
                        add              rsp, 16;                             jmp   n325_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            sub              rsp, 16
                        mov              r11, 275
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1079:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1079]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1078_240
                        add              rsp, 16;                             jmp   n326_var_β
.Lx1078_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_var_α
n327_call_β:            mov              r11, 275
                        add              rsp, 16;                             jmp   n326_var_β
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             sub              rsp, 16
                        mov              r11, 276
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_subscript_α
n328_var_β:             mov              r11, 276
                        add              rsp, 32;                             jmp   n326_var_β
#-----------------------------------------------------------------------------------------------------------------------
n329_subscript_α:       sub              rsp, 16
                        mov              r11, 277
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1081_240
                        add              rsp, 16;                             jmp   n328_var_β
.Lx1081_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_deref_α
n329_subscript_β:       mov              r11, 277
                        add              rsp, 16;                             jmp   n328_var_β
#-----------------------------------------------------------------------------------------------------------------------
n330_deref_α:           sub              rsp, 16
                        mov              r11, 278
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1082_240
                        add              rsp, 16;                             jmp   n329_subscript_β
.Lx1082_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_assign_var_α
n330_deref_β:           mov              r11, 278
                        add              rsp, 16;                             jmp   n329_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n331_assign_var_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1083_240
                        add              rsp, 16;                             jmp   n330_deref_β
.Lx1083_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 280
                        mov              r10, 32
                        add              rsp, 176;                            jmp   n306_statement_begin_α
#=======================================================================================================================
# ListInsert8     a(x)            =   a
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α: mov              r11, 281
                        mov              r10, 33;                             jmp   n334_var_α
n333_statement_begin_β: mov              r11, 281;                            jmp   n339_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 282
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_field_var_α:       sub              rsp, 16
                        mov              r11, 283
                        mov              rdi, qword ptr [rip + .Lx1089_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1089_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lx1089_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_var_α
n335_field_var_β:       mov              r11, 283
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              r11, 284
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_assign_var_α
n336_var_β:             mov              r11, 284
                        add              rsp, 16;                             jmp   n335_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_var_α:      sub              rsp, 16
                        mov              r11, 285
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1091_240
                        add              rsp, 16;                             jmp   n336_var_β
.Lx1091_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n338_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_end_α:   mov              r11, 286
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n339_statement_begin_α
#=======================================================================================================================
# ListInsert9     n(x)            =   n(x) + 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n339_statement_begin_α: mov              r11, 287
                        mov              r10, 34;                             jmp   n340_var_α
n339_statement_begin_β: mov              r11, 287;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              r11, 288
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n341_field_var_α:       sub              rsp, 16
                        mov              r11, 289
                        mov              rdi, qword ptr [rip + .Lx1097_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1097_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Lx1097_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_var_α
n341_field_var_β:       mov              r11, 289
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n339_statement_begin_β
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             sub              rsp, 16
                        mov              r11, 290
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n343_call_α
n342_var_β:             mov              r11, 290
                        add              rsp, 16;                             jmp   n341_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            sub              rsp, 16
                        mov              r11, 291
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1100:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1100]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1099_240
                        add              rsp, 16;                             jmp   n342_var_β
.Lx1099_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_lit_integer_α
n343_call_β:            mov              r11, 291
                        add              rsp, 16;                             jmp   n342_var_β
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     sub              rsp, 16
                        mov              r11, 292
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n345_binop_α
n344_lit_integer_β:     mov              r11, 292
                        add              rsp, 32;                             jmp   n342_var_β
.Lx1101_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n345_binop_α:           sub              rsp, 16
                        mov              r11, 293
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1102_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1102_7
.Lx1102_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1102_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1102_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1102_4
.Lx1102_3:              movq             xmm0, rsi
.Lx1102_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1102_7:                                                                    jmp   n346_assign_var_α
.Lx1102_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1102_240
                        add              rsp, 16;                             jmp   n344_lit_integer_β
.Lx1102_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n346_assign_var_α
n345_binop_β:           mov              r11, 293
                        add              rsp, 16;                             jmp   n344_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_var_α:      sub              rsp, 16
                        mov              r11, 294
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1103_240
                        add              rsp, 16;                             jmp   n345_binop_β
.Lx1103_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n347_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n347_statement_end_α:   mov              r11, 295
                        mov              r10, 34
                        add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListRemove      place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n348_statement_begin_α: mov              r11, 296
                        mov              r10, 35;                             jmp   n349_var_α
n348_statement_begin_β: mov              r11, 296;                            jmp   n360_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_α:             sub              rsp, 16
                        mov              r11, 297
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n350_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     sub              rsp, 16
                        mov              r11, 298
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n351_coerce_numeric_α
n350_lit_integer_β:     mov              r11, 298
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n348_statement_begin_β
.Lx1109_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n351_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 299
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1111_1
                        cmp              al, 3;                               jne   .Lx1111_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1111_0
.Lx1111_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_coerce_numeric_α
.Lx1111_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n352_coerce_numeric_α
n351_coerce_numeric_β:  mov              r11, 299
                        add              rsp, 16;                             jmp   n350_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n352_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 300
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1113_1
                        cmp              al, 3;                               jne   .Lx1113_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1113_0
.Lx1113_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n353_cmp_test_α
.Lx1113_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n353_cmp_test_α
n352_coerce_numeric_β:  mov              r11, 300
                        add              rsp, 16;                             jmp   n351_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n353_cmp_test_α:        sub              rsp, 16
                        mov              r11, 301
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1115_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1115_239
                        add              rsp, 16;                             jmp   n352_coerce_numeric_β
.Lx1115_239:                                                                  jmp   n354_var_α
.Lx1115_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1115_240
                        add              rsp, 16;                             jmp   n352_coerce_numeric_β
.Lx1115_240:                                                                  jmp   n354_var_α
n353_cmp_test_β:        mov              r11, 301
                        add              rsp, 16;                             jmp   n352_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              r11, 302
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_call_α
n354_var_β:             mov              r11, 302
                        add              rsp, 16;                             jmp   n353_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            sub              rsp, 16
                        mov              r11, 303
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
                        cmp              al, 104;                             jne   .Lx1117_240
                        add              rsp, 16;                             jmp   n354_var_β
.Lx1117_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n356_var_α
n355_call_β:            mov              r11, 303
                        add              rsp, 16;                             jmp   n354_var_β
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             sub              rsp, 16
                        mov              r11, 304
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n357_binop_α
n356_var_β:             mov              r11, 304
                        add              rsp, 32;                             jmp   n354_var_β
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_α:           sub              rsp, 16
                        mov              r11, 305
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1120_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1120_7
.Lx1120_2:              and              edx, 1;                              jz    .Lx1120_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx1120_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1120_4
.Lx1120_3:              movq             xmm0, rsi
.Lx1120_4:              cmp              cl, 5;                               je    .Lx1120_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1120_6
.Lx1120_5:              movq             xmm1, rdi
.Lx1120_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1120_7:                                                                    jmp   n358_assign_α
.Lx1120_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1120_240
                        add              rsp, 16;                             jmp   n356_var_β
.Lx1120_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n358_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:          mov              r11, 306
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n359_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n359_statement_end_α:   mov              r11, 307
                        mov              r10, 35
                        add              rsp, 144;                            jmp   n360_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_begin_α: mov              r11, 308
                        mov              r10, 36;                             jmp   n361_var_α
n360_statement_begin_β: mov              r11, 308;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             sub              rsp, 16
                        mov              r11, 309
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:     sub              rsp, 16
                        mov              r11, 310
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n363_coerce_numeric_α
n362_lit_integer_β:     mov              r11, 310
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n360_statement_begin_β
.Lx1127_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n363_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 311
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1129_1
                        cmp              al, 3;                               jne   .Lx1129_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1129_0
.Lx1129_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n364_coerce_numeric_α
.Lx1129_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n364_coerce_numeric_α
n363_coerce_numeric_β:  mov              r11, 311
                        add              rsp, 16;                             jmp   n362_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n364_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 312
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1131_1
                        cmp              al, 3;                               jne   .Lx1131_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1131_0
.Lx1131_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n365_cmp_test_α
.Lx1131_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n365_cmp_test_α
n364_coerce_numeric_β:  mov              r11, 312
                        add              rsp, 16;                             jmp   n363_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n365_cmp_test_α:        sub              rsp, 16
                        mov              r11, 313
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1133_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx1133_239
                        add              rsp, 16;                             jmp   n364_coerce_numeric_β
.Lx1133_239:                                                                  jmp   n366_statement_end_α
.Lx1133_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jns   .Lx1133_240
                        add              rsp, 16;                             jmp   n364_coerce_numeric_β
.Lx1133_240:                                                                  jmp   n366_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_end_α:   mov              r11, 314
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n367_statement_begin_α
#=======================================================================================================================
#                 LT(place, n(x))                                         :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n367_statement_begin_α: mov              r11, 315
                        mov              r10, 37;                             jmp   n368_var_α
n367_statement_begin_β: mov              r11, 315;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_α:             sub              rsp, 16
                        mov              r11, 317
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_call_α
n369_var_β:             mov              r11, 317
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n367_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            sub              rsp, 16
                        mov              r11, 318
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1141:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1141]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1140_240
                        add              rsp, 16;                             jmp   n369_var_β
.Lx1140_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n371_coerce_numeric_α
n370_call_β:            mov              r11, 318
                        add              rsp, 16;                             jmp   n369_var_β
#-----------------------------------------------------------------------------------------------------------------------
n371_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 319
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx1143_1
                        cmp              al, 3;                               jne   .Lx1143_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx1143_0
.Lx1143_1:              mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n372_coerce_numeric_α
.Lx1143_0:              lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n372_coerce_numeric_α
n371_coerce_numeric_β:  mov              r11, 319
                        add              rsp, 32;                             jmp   n369_var_β
#-----------------------------------------------------------------------------------------------------------------------
n372_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 320
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx1145_1
                        cmp              al, 3;                               jne   .Lx1145_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx1145_0
.Lx1145_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n373_cmp_test_α
.Lx1145_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n373_cmp_test_α
n372_coerce_numeric_β:  mov              r11, 320
                        add              rsp, 16;                             jmp   n371_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n373_cmp_test_α:        sub              rsp, 16
                        mov              r11, 321
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1147_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1147_239
                        add              rsp, 16;                             jmp   n372_coerce_numeric_β
.Lx1147_239:                                                                  jmp   n374_statement_end_α
.Lx1147_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1147_240
                        add              rsp, 16;                             jmp   n372_coerce_numeric_β
.Lx1147_240:                                                                  jmp   n374_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n374_statement_end_α:   mov              r11, 322
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n375_statement_begin_α
#=======================================================================================================================
#                 ListRemove      =   a(x)[place]
#-----------------------------------------------------------------------------------------------------------------------
n375_statement_begin_α: mov              r11, 323
                        mov              r10, 38;                             jmp   n376_var_α
n375_statement_begin_β: mov              r11, 323;                            jmp   n383_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              r11, 324
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_call_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            sub              rsp, 16
                        mov              r11, 325
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1154:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1154]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1153_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
.Lx1153_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_var_α
n377_call_β:            mov              r11, 325
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n375_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             sub              rsp, 16
                        mov              r11, 326
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_subscript_α
n378_var_β:             mov              r11, 326
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n375_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n379_subscript_α:       sub              rsp, 16
                        mov              r11, 327
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1156_240
                        add              rsp, 16;                             jmp   n378_var_β
.Lx1156_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n380_deref_α
n379_subscript_β:       mov              r11, 327
                        add              rsp, 16;                             jmp   n378_var_β
#-----------------------------------------------------------------------------------------------------------------------
n380_deref_α:           sub              rsp, 16
                        mov              r11, 328
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1157_240
                        add              rsp, 16;                             jmp   n379_subscript_β
.Lx1157_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n381_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:          mov              r11, 329
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              qword ptr [r9 + 184], rdx;           jmp   n382_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n382_statement_end_α:   mov              r11, 330
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n383_statement_begin_α
#=======================================================================================================================
#                 i               =   place
#-----------------------------------------------------------------------------------------------------------------------
n383_statement_begin_α: mov              r11, 331
                        mov              r10, 39;                             jmp   n384_var_α
n383_statement_begin_β: mov              r11, 331;                            jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             sub              rsp, 16
                        mov              r11, 332
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n385_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n385_assign_α:          mov              r11, 333
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n386_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n386_statement_end_α:   mov              r11, 334
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n387_statement_begin_α
#=======================================================================================================================
# ListRemove1     i               =   LT(i, n(x) - 1) i + 1               :F(ListRemove2)
#-----------------------------------------------------------------------------------------------------------------------
n387_statement_begin_α: mov              r11, 335
                        mov              r10, 40;                             jmp   n388_var_α
n387_statement_begin_β: mov              r11, 335;                            jmp   n415_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             sub              rsp, 16
                        mov              r11, 336
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_α:             sub              rsp, 16
                        mov              r11, 337
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n390_call_α
n389_var_β:             mov              r11, 337
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n387_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            sub              rsp, 16
                        mov              r11, 338
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1172:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1172]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1171_240
                        add              rsp, 16;                             jmp   n389_var_β
.Lx1171_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n391_lit_integer_α
n390_call_β:            mov              r11, 338
                        add              rsp, 16;                             jmp   n389_var_β
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:     sub              rsp, 16
                        mov              r11, 339
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1173_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n392_binop_α
n391_lit_integer_β:     mov              r11, 339
                        add              rsp, 32;                             jmp   n389_var_β
.Lx1173_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n392_binop_α:           sub              rsp, 16
                        mov              r11, 340
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1174_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1174_7
.Lx1174_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1174_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1174_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1174_4
.Lx1174_3:              movq             xmm0, rsi
.Lx1174_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1174_7:                                                                    jmp   n393_coerce_numeric_α
.Lx1174_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1174_240
                        add              rsp, 16;                             jmp   n391_lit_integer_β
.Lx1174_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n393_coerce_numeric_α
n392_binop_β:           mov              r11, 340
                        add              rsp, 16;                             jmp   n391_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n393_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 341
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1176_1
                        cmp              al, 3;                               jne   .Lx1176_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1176_0
.Lx1176_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n394_coerce_numeric_α
.Lx1176_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n394_coerce_numeric_α
n393_coerce_numeric_β:  mov              r11, 341
                        add              rsp, 16;                             jmp   n392_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n394_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 342
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1178_1
                        cmp              al, 3;                               jne   .Lx1178_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1178_0
.Lx1178_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n395_cmp_test_α
.Lx1178_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n395_cmp_test_α
n394_coerce_numeric_β:  mov              r11, 342
                        add              rsp, 16;                             jmp   n393_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n395_cmp_test_α:        sub              rsp, 16
                        mov              r11, 343
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1180_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1180_239
                        add              rsp, 16;                             jmp   n394_coerce_numeric_β
.Lx1180_239:                                                                  jmp   n396_var_α
.Lx1180_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx1180_240
                        add              rsp, 16;                             jmp   n394_coerce_numeric_β
.Lx1180_240:                                                                  jmp   n396_var_α
n395_cmp_test_β:        mov              r11, 343
                        add              rsp, 16;                             jmp   n394_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n396_var_α:             sub              rsp, 16
                        mov              r11, 344
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n397_lit_integer_α
n396_var_β:             mov              r11, 344
                        add              rsp, 16;                             jmp   n395_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_integer_α:     sub              rsp, 16
                        mov              r11, 345
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n398_binop_α
n397_lit_integer_β:     mov              r11, 345
                        add              rsp, 16;                             jmp   n396_var_β
.Lx1182_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n398_binop_α:           sub              rsp, 16
                        mov              r11, 346
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1183_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1183_7
.Lx1183_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1183_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1183_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1183_4
.Lx1183_3:              movq             xmm0, rsi
.Lx1183_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1183_7:                                                                    jmp   n399_assign_α
.Lx1183_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1183_240
                        add              rsp, 16;                             jmp   n397_lit_integer_β
.Lx1183_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n399_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:          mov              r11, 347
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n400_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n400_statement_end_α:   mov              r11, 348
                        mov              r10, 40
                        add              rsp, 176;                            jmp   n401_statement_begin_α
#=======================================================================================================================
#                 a(x)[i - 1]     =   a(x)[i]                             :(ListRemove1)
#-----------------------------------------------------------------------------------------------------------------------
n401_statement_begin_α: mov              r11, 349
                        mov              r10, 41;                             jmp   n402_var_α
n401_statement_begin_β: mov              r11, 349;                            jmp   n387_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              r11, 350
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_call_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            sub              rsp, 16
                        mov              r11, 351
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1191:           .string          "a"
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
                        cmp              al, 104;                             jne   .Lx1190_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
.Lx1190_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n404_var_α
n403_call_β:            mov              r11, 351
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:             sub              rsp, 16
                        mov              r11, 352
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n405_lit_integer_α
n404_var_β:             mov              r11, 352
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n401_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     sub              rsp, 16
                        mov              r11, 353
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n406_binop_α
n405_lit_integer_β:     mov              r11, 353
                        add              rsp, 16;                             jmp   n404_var_β
.Lx1193_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n406_binop_α:           sub              rsp, 16
                        mov              r11, 354
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1194_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1194_7
.Lx1194_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1194_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1194_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1194_4
.Lx1194_3:              movq             xmm0, rsi
.Lx1194_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1194_7:                                                                    jmp   n407_subscript_α
.Lx1194_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1194_240
                        add              rsp, 16;                             jmp   n405_lit_integer_β
.Lx1194_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n407_subscript_α
n406_binop_β:           mov              r11, 354
                        add              rsp, 16;                             jmp   n405_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n407_subscript_α:       sub              rsp, 16
                        mov              r11, 355
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1195_240
                        add              rsp, 16;                             jmp   n406_binop_β
.Lx1195_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_var_α
n407_subscript_β:       mov              r11, 355
                        add              rsp, 16;                             jmp   n406_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             sub              rsp, 16
                        mov              r11, 356
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_call_α
n408_var_β:             mov              r11, 356
                        add              rsp, 16;                             jmp   n407_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            sub              rsp, 16
                        mov              r11, 357
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1198:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1198]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1197_240
                        add              rsp, 16;                             jmp   n408_var_β
.Lx1197_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_var_α
n409_call_β:            mov              r11, 357
                        add              rsp, 16;                             jmp   n408_var_β
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:             sub              rsp, 16
                        mov              r11, 358
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_subscript_α
n410_var_β:             mov              r11, 358
                        add              rsp, 32;                             jmp   n408_var_β
#-----------------------------------------------------------------------------------------------------------------------
n411_subscript_α:       sub              rsp, 16
                        mov              r11, 359
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1200_240
                        add              rsp, 16;                             jmp   n410_var_β
.Lx1200_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_deref_α
n411_subscript_β:       mov              r11, 359
                        add              rsp, 16;                             jmp   n410_var_β
#-----------------------------------------------------------------------------------------------------------------------
n412_deref_α:           sub              rsp, 16
                        mov              r11, 360
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1201_240
                        add              rsp, 16;                             jmp   n411_subscript_β
.Lx1201_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n413_assign_var_α
n412_deref_β:           mov              r11, 360
                        add              rsp, 16;                             jmp   n411_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n413_assign_var_α:      sub              rsp, 16
                        mov              r11, 361
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1202_240
                        add              rsp, 16;                             jmp   n412_deref_β
.Lx1202_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n414_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n414_statement_end_α:   mov              r11, 362
                        mov              r10, 41
                        add              rsp, 192;                            jmp   n387_statement_begin_α
#=======================================================================================================================
# ListRemove2     a(x)[i]         =
#-----------------------------------------------------------------------------------------------------------------------
n415_statement_begin_α: mov              r11, 363
                        mov              r10, 42;                             jmp   n416_var_α
n415_statement_begin_β: mov              r11, 363;                            jmp   n423_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 364
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_call_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            sub              rsp, 16
                        mov              r11, 365
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1209:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1209]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1208_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
.Lx1208_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_var_α
n417_call_β:            mov              r11, 365
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n415_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n418_var_α:             sub              rsp, 16
                        mov              r11, 366
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n419_subscript_α
n418_var_β:             mov              r11, 366
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n415_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n419_subscript_α:       sub              rsp, 16
                        mov              r11, 367
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1211_240
                        add              rsp, 16;                             jmp   n418_var_β
.Lx1211_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_lit_string_α
n419_subscript_β:       mov              r11, 367
                        add              rsp, 16;                             jmp   n418_var_β
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      sub              rsp, 16
                        mov              r11, 368
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n421_assign_var_α
n420_lit_string_β:      mov              r11, 368
                        add              rsp, 16;                             jmp   n419_subscript_β
.Lx1212_0:              .quad            .Lx1212_0_s
.Lx1212_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n421_assign_var_α:      sub              rsp, 16
                        mov              r11, 369
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1213_240
                        add              rsp, 16;                             jmp   n420_lit_string_β
.Lx1213_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n422_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n422_statement_end_α:   mov              r11, 370
                        mov              r10, 42
                        add              rsp, 96;                             jmp   n423_statement_begin_α
#=======================================================================================================================
#                 n(x)            =   n(x) - 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n423_statement_begin_α: mov              r11, 371
                        mov              r10, 43;                             jmp   n424_var_α
n423_statement_begin_β: mov              r11, 371;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             sub              rsp, 16
                        mov              r11, 372
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_field_var_α:       sub              rsp, 16
                        mov              r11, 373
                        mov              rdi, qword ptr [rip + .Lx1219_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1219_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n423_statement_begin_β
.Lx1219_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_var_α
n425_field_var_β:       mov              r11, 373
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n423_statement_begin_β
.Lx1219_0:              .quad            .Lx1219_0_s
.Lx1219_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:             sub              rsp, 16
                        mov              r11, 374
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n427_call_α
n426_var_β:             mov              r11, 374
                        add              rsp, 16;                             jmp   n425_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            sub              rsp, 16
                        mov              r11, 375
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1222:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1222]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1221_240
                        add              rsp, 16;                             jmp   n426_var_β
.Lx1221_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n428_lit_integer_α
n427_call_β:            mov              r11, 375
                        add              rsp, 16;                             jmp   n426_var_β
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     sub              rsp, 16
                        mov              r11, 376
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n429_binop_α
n428_lit_integer_β:     mov              r11, 376
                        add              rsp, 32;                             jmp   n426_var_β
.Lx1223_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n429_binop_α:           sub              rsp, 16
                        mov              r11, 377
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1224_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1224_7
.Lx1224_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1224_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1224_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1224_4
.Lx1224_3:              movq             xmm0, rsi
.Lx1224_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1224_7:                                                                    jmp   n430_assign_var_α
.Lx1224_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1224_240
                        add              rsp, 16;                             jmp   n428_lit_integer_β
.Lx1224_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n430_assign_var_α
n429_binop_β:           mov              r11, 377
                        add              rsp, 16;                             jmp   n428_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n430_assign_var_α:      sub              rsp, 16
                        mov              r11, 378
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1225_240
                        add              rsp, 16;                             jmp   n429_binop_β
.Lx1225_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n431_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_end_α:   mov              r11, 379
                        mov              r10, 43
                        add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListPop         ListPop         =   ListRemove(x, -1)                   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n432_statement_begin_α: mov              r11, 380
                        mov              r10, 44;                             jmp   n433_var_α
n432_statement_begin_β: mov              r11, 380;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             sub              rsp, 16
                        mov              r11, 381
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     sub              rsp, 16
                        mov              r11, 382
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n435_unop_α
n434_lit_integer_β:     mov              r11, 382
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n432_statement_begin_β
.Lx1231_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_unop_α:            sub              rsp, 16
                        mov              r11, 383
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n436_call_α
n435_unop_β:            mov              r11, 383
                        add              rsp, 16;                             jmp   n434_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n436_call_α:            sub              rsp, 16
                        mov              r11, 384
                        lea              rcx, [rip + .Lsig1234z]
                        lea              rax, [rip + ListRemove_α];           jmp   rax
.Lsig1234z:             .quad            2
                        .quad            .Lx1234_2
                        .quad            .Lx1234_2
                        .quad            48
                        .quad            16
.Lx1234_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1234_29
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
.Lx1234_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1234_240
                        add              rsp, 16;                             jmp   n435_unop_β
.Lx1234_240:                                                                  jmp   n437_assign_α
n436_call_β:            mov              r11, 384;                            jmp   n435_unop_β
.Lx1234_0:              .quad            .Lx1234_0_s
.Lx1234_0_s:            .string          "ListRemove"
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:          mov              r11, 385
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              qword ptr [r9 + 200], rdx;           jmp   n438_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n438_statement_end_α:   mov              r11, 386
                        mov              r10, 44
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListSize        ListSize        =   IDENT(a(x)) 0                       :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n439_statement_begin_α: mov              r11, 387
                        mov              r10, 45;                             jmp   n440_var_α
n439_statement_begin_β: mov              r11, 387;                            jmp   n447_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:             sub              rsp, 16
                        mov              r11, 388
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n441_call_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_α:            sub              rsp, 16
                        mov              r11, 389
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1242:           .string          "a"
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
                        cmp              al, 104;                             jne   .Lx1241_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n439_statement_begin_β
.Lx1241_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n442_lit_string_α
n441_call_β:            mov              r11, 389
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n439_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      sub              rsp, 16
                        mov              r11, 390
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1243_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n443_ident_α
n442_lit_string_β:      mov              r11, 390
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n439_statement_begin_β
.Lx1243_0:              .quad            .Lx1243_0_s
.Lx1243_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n443_ident_α:           sub              rsp, 16
                        mov              r11, 391
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jne   .Lx1245_240
                        add              rsp, 16;                             jmp   n442_lit_string_β
.Lx1245_240:                                                                  jmp   n444_lit_integer_α
n443_ident_β:           mov              r11, 391
                        add              rsp, 16;                             jmp   n442_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     sub              rsp, 16
                        mov              r11, 392
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n445_assign_α
.Lx1246_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n445_assign_α:          mov              r11, 393
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n446_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n446_statement_end_α:   mov              r11, 394
                        mov              r10, 45
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
#                 PROTOTYPE(a(x)) '0:' REM . ListSize
#-----------------------------------------------------------------------------------------------------------------------
n447_statement_begin_α: mov              r11, 395
                        mov              r10, 46;                             jmp   n448_var_α
n447_statement_begin_β: mov              r11, 395;                            jmp   n458_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             sub              rsp, 16
                        mov              r11, 396
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_call_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_α:            sub              rsp, 16
                        mov              r11, 397
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1254:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1254]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1253_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n458_statement_begin_α
.Lx1253_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n450_call_α
n449_call_β:            mov              r11, 397
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n458_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:            sub              rsp, 16
                        mov              r11, 398
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1256:           .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1256]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1255_240
                                                                              jmp   n457_statement_end_α
.Lx1255_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n451_match_begin_α
n450_call_β:            mov              r11, 398;                            jmp   n457_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n451_match_begin_α:     mov              r11, 399
                        mov              rdi, qword ptr [rsp + 0]             # call
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
.Lx1258_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1258_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n452_match_lit_α
n451_match_begin_β:     mov              r11, 399
.Lx1258_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1258_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1258_1
                                                                              jmp   .Lx1258_0
.Lx1258_1:
n451_match_begin_af:    mov              r11, 399
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n457_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n452_match_lit_α:       mov              r11, 400
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n451_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n451_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 58;                             jne   n451_match_begin_β
                        add              r14d, 2;                             jmp   n453_match_assign_save_α
n452_match_lit_β:       mov              r11, 400
                        sub              r14d, 2;                             jmp   n451_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n453_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 401
                        mov              dword ptr [rsp + 0], r14d;           jmp   n454_match_rem_α
n453_match_assign_save_β:
                        mov              r11, 401
                        add              rsp, 16;                             jmp   n452_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n454_match_rem_α:       sub              rsp, 16
                        mov              r11, 402
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d;                          jmp   n455_match_assign_cond_α
n454_match_rem_β:       mov              r11, 402
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n452_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n455_match_assign_cond_α:
                        mov              r11, 403
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n456_match_end_α
n455_match_assign_cond_β:
                        mov              r11, 403
                        sub              r12, 24;                             jmp   n454_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n456_match_end_α:       mov              r11, 404
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1267_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n451_match_begin_af
.Lx1267_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n457_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n457_statement_end_α:   mov              r11, 405
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n458_statement_begin_α
#=======================================================================================================================
#                 ListSize        =   ListSize + 1                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n458_statement_begin_α: mov              r11, 406
                        mov              r10, 47;                             jmp   n459_var_α
n458_statement_begin_β: mov              r11, 406;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:             sub              rsp, 16
                        mov              r11, 407
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n460_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     sub              rsp, 16
                        mov              r11, 408
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n461_binop_α
n460_lit_integer_β:     mov              r11, 408
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n458_statement_begin_β
.Lx1273_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n461_binop_α:           sub              rsp, 16
                        mov              r11, 409
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1274_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1274_7
.Lx1274_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1274_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1274_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1274_4
.Lx1274_3:              movq             xmm0, rsi
.Lx1274_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1274_7:                                                                    jmp   n462_assign_α
.Lx1274_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1274_240
                        add              rsp, 16;                             jmp   n460_lit_integer_β
.Lx1274_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n462_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n462_assign_α:          mov              r11, 410
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n463_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_end_α:   mov              r11, 411
                        mov              r10, 47
                        add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ListEnd  <stmt 48, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_begin_α: mov              r11, 412
                        mov              r10, 48;                             jmp   n465_statement_end_α
n464_statement_begin_β: mov              r11, 412;                            jmp   n466_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n465_statement_end_α:   mov              r11, 413
                        mov              r10, 48;                             jmp   n466_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_begin_α: mov              r11, 414
                        mov              r10, 49;                             jmp   n467_define_α
n466_statement_begin_β: mov              r11, 414;                            jmp   n469_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n467_define_α:          mov              r11, 415
                        mov              rdi, qword ptr [rip + .Lx1285_0]
                        mov              rsi, qword ptr [rip + .Lx1285_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n496_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1285_0]
                        lea              rsi, [rip + Init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n468_statement_end_α
n467_define_β:          mov              r11, 415;                            jmp   n466_statement_begin_β
.Lx1285_0:              .quad            .Lx1285_0_s
.Lx1285_0_s:            .string          "Init_list"
.Lx1285_1:              .quad            .Lx1285_1_s
.Lx1285_1_s:            .string          "vs"
                                                                              jmp   .Lx1286_245
#-----------------------------------------------------------------------------------------------------------------------
Init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 224]            # Init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 224], 0
                        mov              qword ptr [r9 + 232], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1286_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1286_41
.Lx1286_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1286_41:             lea              rcx, [rip + Init_list_γ]
                        lea              rax, [rip + Init_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n496_statement_begin_α]; jmp   rax
Init_list_γ:            mov              rdi, qword ptr [r9 + 224]            # Init_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1286_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1286_110
.Lx1286_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1286_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1286_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1286_180
.Lx1286_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1286_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1286_245:
#-----------------------------------------------------------------------------------------------------------------------
n468_statement_end_α:   mov              r11, 416
                        mov              r10, 49;                             jmp   n469_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_begin_α: mov              r11, 417
                        mov              r10, 50;                             jmp   n470_define_α
n469_statement_begin_β: mov              r11, 417;                            jmp   n472_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n470_define_α:          mov              r11, 418
                        mov              rdi, qword ptr [rip + .Lx1292_0]
                        mov              rsi, qword ptr [rip + .Lx1292_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n540_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1292_0]
                        lea              rsi, [rip + init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_statement_end_α
n470_define_β:          mov              r11, 418;                            jmp   n469_statement_begin_β
.Lx1292_0:              .quad            .Lx1292_0_s
.Lx1292_0_s:            .string          "init_list"
.Lx1292_1:              .quad            .Lx1292_1_s
.Lx1292_1_s:            .string          "v"
                                                                              jmp   .Lx1293_245
#-----------------------------------------------------------------------------------------------------------------------
init_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 256]            # init_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 256], 0
                        mov              qword ptr [r9 + 264], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1293_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1293_41
.Lx1293_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1293_41:             lea              rcx, [rip + init_list_γ]
                        lea              rax, [rip + init_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n540_statement_begin_α]; jmp   rax
init_list_γ:            mov              rdi, qword ptr [r9 + 256]            # init_list
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1293_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1293_110
.Lx1293_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1293_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1293_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1293_180
.Lx1293_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1293_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1293_245:
#-----------------------------------------------------------------------------------------------------------------------
n471_statement_end_α:   mov              r11, 419
                        mov              r10, 50;                             jmp   n472_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_begin_α: mov              r11, 420
                        mov              r10, 51;                             jmp   n473_define_α
n472_statement_begin_β: mov              r11, 420;                            jmp   n475_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n473_define_α:          mov              r11, 421
                        mov              rdi, qword ptr [rip + .Lx1299_0]
                        mov              rsi, qword ptr [rip + .Lx1299_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n505_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1299_0]
                        lea              rsi, [rip + Push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n474_statement_end_α
n473_define_β:          mov              r11, 421;                            jmp   n472_statement_begin_β
.Lx1299_0:              .quad            .Lx1299_0_s
.Lx1299_0_s:            .string          "Push_list"
.Lx1299_1:              .quad            .Lx1299_1_s
.Lx1299_1_s:            .string          "vs"
                                                                              jmp   .Lx1300_245
#-----------------------------------------------------------------------------------------------------------------------
Push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 288]            # Push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 288], 0
                        mov              qword ptr [r9 + 296], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1300_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1300_41
.Lx1300_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1300_41:             lea              rcx, [rip + Push_list_γ]
                        lea              rax, [rip + Push_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n505_statement_begin_α]; jmp   rax
Push_list_γ:            mov              rdi, qword ptr [r9 + 288]            # Push_list
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1300_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1300_110
.Lx1300_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1300_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1300_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1300_180
.Lx1300_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1300_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1300_245:
#-----------------------------------------------------------------------------------------------------------------------
n474_statement_end_α:   mov              r11, 422
                        mov              r10, 51;                             jmp   n475_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_begin_α: mov              r11, 423
                        mov              r10, 52;                             jmp   n476_define_α
n475_statement_begin_β: mov              r11, 423;                            jmp   n478_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n476_define_α:          mov              r11, 424
                        mov              rdi, qword ptr [rip + .Lx1306_0]
                        mov              rsi, qword ptr [rip + .Lx1306_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n559_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1306_0]
                        lea              rsi, [rip + push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n477_statement_end_α
n476_define_β:          mov              r11, 424;                            jmp   n475_statement_begin_β
.Lx1306_0:              .quad            .Lx1306_0_s
.Lx1306_0_s:            .string          "push_list"
.Lx1306_1:              .quad            .Lx1306_1_s
.Lx1306_1_s:            .string          "v"
                                                                              jmp   .Lx1307_245
#-----------------------------------------------------------------------------------------------------------------------
push_list_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 304]            # push_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 304], 0
                        mov              qword ptr [r9 + 312], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1307_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1307_41
.Lx1307_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1307_41:             lea              rcx, [rip + push_list_γ]
                        lea              rax, [rip + push_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n559_statement_begin_α]; jmp   rax
push_list_γ:            mov              rdi, qword ptr [r9 + 304]            # push_list
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1307_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1307_110
.Lx1307_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1307_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1307_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1307_180
.Lx1307_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1307_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1307_245:
#-----------------------------------------------------------------------------------------------------------------------
n477_statement_end_α:   mov              r11, 425
                        mov              r10, 52;                             jmp   n478_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_begin_α: mov              r11, 426
                        mov              r10, 53;                             jmp   n479_define_α
n478_statement_begin_β: mov              r11, 426;                            jmp   n481_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n479_define_α:          mov              r11, 427
                        mov              rdi, qword ptr [rip + .Lx1313_0]
                        mov              rsi, qword ptr [rip + .Lx1313_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n514_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1313_0]
                        lea              rsi, [rip + Push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n480_statement_end_α
n479_define_β:          mov              r11, 427;                            jmp   n478_statement_begin_β
.Lx1313_0:              .quad            .Lx1313_0_s
.Lx1313_0_s:            .string          "Push_item"
.Lx1313_1:              .quad            .Lx1313_1_s
.Lx1313_1_s:            .string          "vs"
                                                                              jmp   .Lx1314_245
#-----------------------------------------------------------------------------------------------------------------------
Push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 320]            # Push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 320], 0
                        mov              qword ptr [r9 + 328], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1314_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1314_41
.Lx1314_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1314_41:             lea              rcx, [rip + Push_item_γ]
                        lea              rax, [rip + Push_item_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n514_statement_begin_α]; jmp   rax
Push_item_γ:            mov              rdi, qword ptr [r9 + 320]            # Push_item
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1314_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1314_110
.Lx1314_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1314_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1314_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1314_180
.Lx1314_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1314_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1314_245:
#-----------------------------------------------------------------------------------------------------------------------
n480_statement_end_α:   mov              r11, 428
                        mov              r10, 53;                             jmp   n481_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_begin_α: mov              r11, 429
                        mov              r10, 54;                             jmp   n482_define_α
n481_statement_begin_β: mov              r11, 429;                            jmp   n484_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n482_define_α:          mov              r11, 430
                        mov              rdi, qword ptr [rip + .Lx1320_0]
                        mov              rsi, qword ptr [rip + .Lx1320_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n589_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1320_0]
                        lea              rsi, [rip + push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n483_statement_end_α
n482_define_β:          mov              r11, 430;                            jmp   n481_statement_begin_β
.Lx1320_0:              .quad            .Lx1320_0_s
.Lx1320_0_s:            .string          "push_item"
.Lx1320_1:              .quad            .Lx1320_1_s
.Lx1320_1_s:            .string          "v"
                                                                              jmp   .Lx1321_245
#-----------------------------------------------------------------------------------------------------------------------
push_item_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 336]            # push_item
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 336], 0
                        mov              qword ptr [r9 + 344], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1321_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1321_41
.Lx1321_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1321_41:             lea              rcx, [rip + push_item_γ]
                        lea              rax, [rip + push_item_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n589_statement_begin_α]; jmp   rax
push_item_γ:            mov              rdi, qword ptr [r9 + 336]            # push_item
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1321_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1321_110
.Lx1321_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1321_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1321_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1321_180
.Lx1321_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1321_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1321_245:
#-----------------------------------------------------------------------------------------------------------------------
n483_statement_end_α:   mov              r11, 431
                        mov              r10, 54;                             jmp   n484_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_begin_α: mov              r11, 432
                        mov              r10, 55;                             jmp   n485_define_α
n484_statement_begin_β: mov              r11, 432;                            jmp   n487_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n485_define_α:          mov              r11, 433
                        mov              rdi, qword ptr [rip + .Lx1327_0]
                        mov              rsi, qword ptr [rip + .Lx1327_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n523_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1327_0]
                        lea              rsi, [rip + Pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n486_statement_end_α
n485_define_β:          mov              r11, 433;                            jmp   n484_statement_begin_β
.Lx1327_0:              .quad            .Lx1327_0_s
.Lx1327_0_s:            .string          "Pop_list"
.Lx1327_1:              .quad            .Lx1327_1_s
.Lx1327_1_s:            .string          ""
                                                                              jmp   .Lx1328_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 352]            # Pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 352], 0
                        mov              qword ptr [r9 + 360], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + Pop_list_γ]
                        lea              rax, [rip + Pop_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n523_statement_begin_α]; jmp   rax
Pop_list_γ:             mov              rdi, qword ptr [r9 + 352]
                        mov              rsi, qword ptr [r9 + 360]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 360], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1328_245:
#-----------------------------------------------------------------------------------------------------------------------
n486_statement_end_α:   mov              r11, 434
                        mov              r10, 55;                             jmp   n487_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_begin_α: mov              r11, 435
                        mov              r10, 56;                             jmp   n488_define_α
n487_statement_begin_β: mov              r11, 435;                            jmp   n490_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n488_define_α:          mov              r11, 436
                        mov              rdi, qword ptr [rip + .Lx1334_0]
                        mov              rsi, qword ptr [rip + .Lx1334_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n602_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1334_0]
                        lea              rsi, [rip + pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n489_statement_end_α
n488_define_β:          mov              r11, 436;                            jmp   n487_statement_begin_β
.Lx1334_0:              .quad            .Lx1334_0_s
.Lx1334_0_s:            .string          "pop_list"
.Lx1334_1:              .quad            .Lx1334_1_s
.Lx1334_1_s:            .string          ""
                                                                              jmp   .Lx1335_245
#-----------------------------------------------------------------------------------------------------------------------
pop_list_α:             sub              rsp, 48
                        mov              rax, qword ptr [r9 + 368]            # pop_list
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 368], 0
                        mov              qword ptr [r9 + 376], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + pop_list_γ]
                        lea              rax, [rip + pop_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n602_statement_begin_α]; jmp   rax
pop_list_γ:             mov              rdi, qword ptr [r9 + 368]
                        mov              rsi, qword ptr [r9 + 376]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 368], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 376], rax
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1335_245:
#-----------------------------------------------------------------------------------------------------------------------
n489_statement_end_α:   mov              r11, 437
                        mov              r10, 56;                             jmp   n490_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_begin_α: mov              r11, 438
                        mov              r10, 57;                             jmp   n491_define_α
n490_statement_begin_β: mov              r11, 438;                            jmp   n493_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n491_define_α:          mov              r11, 439
                        mov              rdi, qword ptr [rip + .Lx1341_0]
                        mov              rsi, qword ptr [rip + .Lx1341_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n531_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1341_0]
                        lea              rsi, [rip + Pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n492_statement_end_α
n491_define_β:          mov              r11, 439;                            jmp   n490_statement_begin_β
.Lx1341_0:              .quad            .Lx1341_0_s
.Lx1341_0_s:            .string          "Pop_final"
.Lx1341_1:              .quad            .Lx1341_1_s
.Lx1341_1_s:            .string          "vs"
                                                                              jmp   .Lx1342_245
#-----------------------------------------------------------------------------------------------------------------------
Pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 384]            # Pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 384], 0
                        mov              qword ptr [r9 + 392], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1342_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1342_41
.Lx1342_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1342_41:             lea              rcx, [rip + Pop_final_γ]
                        lea              rax, [rip + Pop_final_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n531_statement_begin_α]; jmp   rax
Pop_final_γ:            mov              rdi, qword ptr [r9 + 384]            # Pop_final
                        mov              rsi, qword ptr [r9 + 392]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1342_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1342_110
.Lx1342_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1342_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1342_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1342_180
.Lx1342_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1342_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1342_245:
#-----------------------------------------------------------------------------------------------------------------------
n492_statement_end_α:   mov              r11, 440
                        mov              r10, 57;                             jmp   n493_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_begin_α: mov              r11, 441
                        mov              r10, 58;                             jmp   n494_define_α
n493_statement_begin_β: mov              r11, 441;                            jmp   n628_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n494_define_α:          mov              r11, 442
                        mov              rdi, qword ptr [rip + .Lx1348_0]
                        mov              rsi, qword ptr [rip + .Lx1348_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n616_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx1348_0]
                        lea              rsi, [rip + pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n495_statement_end_α
n494_define_β:          mov              r11, 442;                            jmp   n493_statement_begin_β
.Lx1348_0:              .quad            .Lx1348_0_s
.Lx1348_0_s:            .string          "pop_final"
.Lx1348_1:              .quad            .Lx1348_1_s
.Lx1348_1_s:            .string          "v"
                                                                              jmp   .Lx1349_245
#-----------------------------------------------------------------------------------------------------------------------
pop_final_α:            sub              rsp, 64
                        mov              rax, qword ptr [r9 + 400]            # pop_final
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 400], 0
                        mov              qword ptr [r9 + 408], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx1349_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1349_41
.Lx1349_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1349_41:             lea              rcx, [rip + pop_final_γ]
                        lea              rax, [rip + pop_final_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n616_statement_begin_α]; jmp   rax
pop_final_γ:            mov              rdi, qword ptr [r9 + 400]            # pop_final
                        mov              rsi, qword ptr [r9 + 408]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1349_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1349_110
.Lx1349_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1349_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1349_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1349_180
.Lx1349_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1349_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1349_245:
#-----------------------------------------------------------------------------------------------------------------------
n495_statement_end_α:   mov              r11, 443
                        mov              r10, 58;                             jmp   n628_statement_begin_α
#=======================================================================================================================
# Init_list       Init_list       =   EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n496_statement_begin_α: mov              r11, 444
                        mov              r10, 59;                             jmp   n497_lit_string_α
n496_statement_begin_β: mov              r11, 444;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      sub              rsp, 16
                        mov              r11, 445
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n498_var_α
.Lx1354_0:              .quad            .Lx1354_0_s
.Lx1354_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n498_var_α:             sub              rsp, 16
                        mov              r11, 446
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n499_binop_α
n498_var_β:             mov              r11, 446
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n496_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n499_binop_α:           sub              rsp, 16
                        mov              r11, 447
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n500_lit_string_α
n499_binop_β:           mov              r11, 447
                        add              rsp, 16;                             jmp   n498_var_β
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:      sub              rsp, 16
                        mov              r11, 448
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n501_binop_α
n500_lit_string_β:      mov              r11, 448
                        add              rsp, 16;                             jmp   n499_binop_β
.Lx1357_0:              .quad            .Lx1357_0_s
.Lx1357_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n501_binop_α:           sub              rsp, 16
                        mov              r11, 449
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n502_call_α
n501_binop_β:           mov              r11, 449
                        add              rsp, 16;                             jmp   n500_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n502_call_α:            sub              rsp, 16
                        mov              r11, 450
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1360:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1360]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1359_240
                        add              rsp, 16;                             jmp   n501_binop_β
.Lx1359_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n503_assign_α
n502_call_β:            mov              r11, 450
                        add              rsp, 16;                             jmp   n501_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_α:          mov              r11, 451
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n504_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_end_α:   mov              r11, 452
                        mov              r10, 59
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_list       Push_list       =   EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n505_statement_begin_α: mov              r11, 453
                        mov              r10, 60;                             jmp   n506_lit_string_α
n505_statement_begin_β: mov              r11, 453;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      sub              rsp, 16
                        mov              r11, 454
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n507_var_α
.Lx1366_0:              .quad            .Lx1366_0_s
.Lx1366_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:             sub              rsp, 16
                        mov              r11, 455
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n508_binop_α
n507_var_β:             mov              r11, 455
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n505_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
                        mov              r11, 456
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n509_lit_string_α
n508_binop_β:           mov              r11, 456
                        add              rsp, 16;                             jmp   n507_var_β
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:      sub              rsp, 16
                        mov              r11, 457
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n510_binop_α
n509_lit_string_β:      mov              r11, 457
                        add              rsp, 16;                             jmp   n508_binop_β
.Lx1369_0:              .quad            .Lx1369_0_s
.Lx1369_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n510_binop_α:           sub              rsp, 16
                        mov              r11, 458
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n511_call_α
n510_binop_β:           mov              r11, 458
                        add              rsp, 16;                             jmp   n509_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n511_call_α:            sub              rsp, 16
                        mov              r11, 459
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1372:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1372]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1371_240
                        add              rsp, 16;                             jmp   n510_binop_β
.Lx1371_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n512_assign_α
n511_call_β:            mov              r11, 459
                        add              rsp, 16;                             jmp   n510_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:          mov              r11, 460
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n513_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n513_statement_end_α:   mov              r11, 461
                        mov              r10, 60
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_item       Push_item       =   EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n514_statement_begin_α: mov              r11, 462
                        mov              r10, 61;                             jmp   n515_lit_string_α
n514_statement_begin_β: mov              r11, 462;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      sub              rsp, 16
                        mov              r11, 463
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n516_var_α
.Lx1378_0:              .quad            .Lx1378_0_s
.Lx1378_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n516_var_α:             sub              rsp, 16
                        mov              r11, 464
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n517_binop_α
n516_var_β:             mov              r11, 464
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n514_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n517_binop_α:           sub              rsp, 16
                        mov              r11, 465
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n518_lit_string_α
n517_binop_β:           mov              r11, 465
                        add              rsp, 16;                             jmp   n516_var_β
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:      sub              rsp, 16
                        mov              r11, 466
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n519_binop_α
n518_lit_string_β:      mov              r11, 466
                        add              rsp, 16;                             jmp   n517_binop_β
.Lx1381_0:              .quad            .Lx1381_0_s
.Lx1381_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n519_binop_α:           sub              rsp, 16
                        mov              r11, 467
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n520_call_α
n519_binop_β:           mov              r11, 467
                        add              rsp, 16;                             jmp   n518_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n520_call_α:            sub              rsp, 16
                        mov              r11, 468
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1384:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1384]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1383_240
                        add              rsp, 16;                             jmp   n519_binop_β
.Lx1383_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n521_assign_α
n520_call_β:            mov              r11, 468
                        add              rsp, 16;                             jmp   n519_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:          mov              r11, 469
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              qword ptr [r9 + 328], rdx;           jmp   n522_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n522_statement_end_α:   mov              r11, 470
                        mov              r10, 61
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Pop_list        Pop_list        =         epsilon . *pop_list()           :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_begin_α: mov              r11, 471
                        mov              r10, 62;                             jmp   n524_var_α
n523_statement_begin_β: mov              r11, 471;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n524_var_α:             sub              rsp, 16
                        mov              r11, 472
                        mov              rax, qword ptr [r9 + 416]            # epsilon
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n525_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n525_assign_α:          mov              r11, 473
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n526_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:      sub              rsp, 16
                        mov              r11, 474
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n527_lit_string_α
n526_lit_string_β:      mov              r11, 474
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n523_statement_begin_β
.Lx1392_0:              .quad            .Lx1392_0_s
.Lx1392_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:      sub              rsp, 16
                        mov              r11, 475
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n528_call_α
n527_lit_string_β:      mov              r11, 475
                        add              rsp, 16;                             jmp   n526_lit_string_β
.Lx1393_0:              .quad            .Lx1393_0_s
.Lx1393_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_α:            sub              rsp, 16
                        mov              r11, 476
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
.Lrkfnzd1395:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1395]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1394_240
                        add              rsp, 16;                             jmp   n527_lit_string_β
.Lx1394_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n529_assign_α
n528_call_β:            mov              r11, 476
                        add              rsp, 16;                             jmp   n527_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n529_assign_α:          mov              r11, 477
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # Pop_list
                        mov              qword ptr [r9 + 360], rdx;           jmp   n530_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n530_statement_end_α:   mov              r11, 478
                        mov              r10, 62
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# Pop_final       Pop_final       =   EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n531_statement_begin_α: mov              r11, 479
                        mov              r10, 63;                             jmp   n532_lit_string_α
n531_statement_begin_β: mov              r11, 479;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_string_α:      sub              rsp, 16
                        mov              r11, 480
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1401_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n533_var_α
.Lx1401_0:              .quad            .Lx1401_0_s
.Lx1401_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:             sub              rsp, 16
                        mov              r11, 481
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n534_binop_α
n533_var_β:             mov              r11, 481
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n531_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n534_binop_α:           sub              rsp, 16
                        mov              r11, 482
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n535_lit_string_α
n534_binop_β:           mov              r11, 482
                        add              rsp, 16;                             jmp   n533_var_β
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      sub              rsp, 16
                        mov              r11, 483
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n536_binop_α
n535_lit_string_β:      mov              r11, 483
                        add              rsp, 16;                             jmp   n534_binop_β
.Lx1404_0:              .quad            .Lx1404_0_s
.Lx1404_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n536_binop_α:           sub              rsp, 16
                        mov              r11, 484
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n537_call_α
n536_binop_β:           mov              r11, 484
                        add              rsp, 16;                             jmp   n535_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n537_call_α:            sub              rsp, 16
                        mov              r11, 485
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1407:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1407]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1406_240
                        add              rsp, 16;                             jmp   n536_binop_β
.Lx1406_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n538_assign_α
n537_call_β:            mov              r11, 485
                        add              rsp, 16;                             jmp   n536_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n538_assign_α:          mov              r11, 486
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              qword ptr [r9 + 392], rdx;           jmp   n539_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n539_statement_end_α:   mov              r11, 487
                        mov              r10, 63
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list       $v              =
#-----------------------------------------------------------------------------------------------------------------------
n540_statement_begin_α: mov              r11, 488
                        mov              r10, 64;                             jmp   n541_var_α
n540_statement_begin_β: mov              r11, 488;                            jmp   n546_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:             sub              rsp, 16
                        mov              r11, 489
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n542_call_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            sub              rsp, 16
                        mov              r11, 490
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1415:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1415]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1414_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
.Lx1414_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n543_lit_string_α
n542_call_β:            mov              r11, 490
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n540_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:      sub              rsp, 16
                        mov              r11, 491
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n544_assign_var_α
n543_lit_string_β:      mov              r11, 491
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n540_statement_begin_β
.Lx1416_0:              .quad            .Lx1416_0_s
.Lx1416_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n544_assign_var_α:      sub              rsp, 16
                        mov              r11, 492
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1417_240
                        add              rsp, 16;                             jmp   n543_lit_string_β
.Lx1417_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n545_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n545_statement_end_α:   mov              r11, 493
                        mov              r10, 64
                        add              rsp, 64;                             jmp   n546_statement_begin_α
#=======================================================================================================================
#                 tags            =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n546_statement_begin_α: mov              r11, 494
                        mov              r10, 65;                             jmp   n547_call_α
n546_statement_begin_β: mov              r11, 494;                            jmp   n550_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            sub              rsp, 16
                        mov              r11, 495
                        .section         .rodata
.Lrkfnzd1423:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1423]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1422_240
                        add              rsp, 16;                             jmp   n546_statement_begin_β
.Lx1422_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n548_assign_α
n547_call_β:            mov              r11, 495
                        add              rsp, 16;                             jmp   n546_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n548_assign_α:          mov              r11, 496
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # tags
                        mov              qword ptr [r9 + 440], rdx;           jmp   n549_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n549_statement_end_α:   mov              r11, 497
                        mov              r10, 65
                        add              rsp, 16;                             jmp   n550_statement_begin_α
#=======================================================================================================================
#                 stack           =   list()
#-----------------------------------------------------------------------------------------------------------------------
n550_statement_begin_α: mov              r11, 498
                        mov              r10, 66;                             jmp   n551_call_α
n550_statement_begin_β: mov              r11, 498;                            jmp   n554_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_α:            sub              rsp, 16
                        mov              r11, 499
                        .section         .rodata
.Lrkfnzd1430:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1430]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1429_240
                        add              rsp, 16;                             jmp   n550_statement_begin_β
.Lx1429_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n552_assign_α
n551_call_β:            mov              r11, 499
                        add              rsp, 16;                             jmp   n550_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n552_assign_α:          mov              r11, 500
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # stack
                        mov              qword ptr [r9 + 456], rdx;           jmp   n553_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n553_statement_end_α:   mov              r11, 501
                        mov              r10, 66
                        add              rsp, 16;                             jmp   n554_statement_begin_α
#=======================================================================================================================
#                 init_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n554_statement_begin_α: mov              r11, 502
                        mov              r10, 67;                             jmp   n555_lit_string_α
n554_statement_begin_β: mov              r11, 502;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:      sub              rsp, 16
                        mov              r11, 503
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n556_call_α
.Lx1436_0:              .quad            .Lx1436_0_s
.Lx1436_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n556_call_α:            sub              rsp, 16
                        mov              r11, 504
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1438:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1438]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1437_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n554_statement_begin_β
.Lx1437_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n557_assign_α
n556_call_β:            mov              r11, 504
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n554_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n557_assign_α:          mov              r11, 505
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              qword ptr [r9 + 264], rdx;           jmp   n558_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n558_statement_end_α:   mov              r11, 506
                        mov              r10, 67
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_list       tags[v]         =   tags[v] + 1
#-----------------------------------------------------------------------------------------------------------------------
n559_statement_begin_α: mov              r11, 507
                        mov              r10, 68;                             jmp   n560_var_α
n559_statement_begin_β: mov              r11, 507;                            jmp   n571_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n560_var_α:             sub              rsp, 16
                        mov              r11, 508
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n561_var_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:             sub              rsp, 16
                        mov              r11, 509
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_subscript_α
n561_var_β:             mov              r11, 509
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n559_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n562_subscript_α:       sub              rsp, 16
                        mov              r11, 510
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1446_240
                        add              rsp, 16;                             jmp   n561_var_β
.Lx1446_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n563_var_α
n562_subscript_β:       mov              r11, 510
                        add              rsp, 16;                             jmp   n561_var_β
#-----------------------------------------------------------------------------------------------------------------------
n563_var_α:             sub              rsp, 16
                        mov              r11, 511
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n564_var_α
n563_var_β:             mov              r11, 511
                        add              rsp, 16;                             jmp   n562_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:             sub              rsp, 16
                        mov              r11, 512
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n565_subscript_α
n564_var_β:             mov              r11, 512
                        add              rsp, 16;                             jmp   n563_var_β
#-----------------------------------------------------------------------------------------------------------------------
n565_subscript_α:       sub              rsp, 16
                        mov              r11, 513
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1449_240
                        add              rsp, 16;                             jmp   n564_var_β
.Lx1449_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n566_deref_α
n565_subscript_β:       mov              r11, 513
                        add              rsp, 16;                             jmp   n564_var_β
#-----------------------------------------------------------------------------------------------------------------------
n566_deref_α:           sub              rsp, 16
                        mov              r11, 514
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1450_240
                        add              rsp, 16;                             jmp   n565_subscript_β
.Lx1450_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_lit_integer_α
n566_deref_β:           mov              r11, 514
                        add              rsp, 16;                             jmp   n565_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_integer_α:     sub              rsp, 16
                        mov              r11, 515
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n568_binop_α
n567_lit_integer_β:     mov              r11, 515
                        add              rsp, 16;                             jmp   n566_deref_β
.Lx1451_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n568_binop_α:           sub              rsp, 16
                        mov              r11, 516
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1452_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1452_7
.Lx1452_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1452_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1452_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1452_4
.Lx1452_3:              movq             xmm0, rsi
.Lx1452_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1452_7:                                                                    jmp   n569_assign_var_α
.Lx1452_0:              mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1452_240
                        add              rsp, 16;                             jmp   n567_lit_integer_β
.Lx1452_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n569_assign_var_α
n568_binop_β:           mov              r11, 516
                        add              rsp, 16;                             jmp   n567_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n569_assign_var_α:      sub              rsp, 16
                        mov              r11, 517
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1453_240
                        add              rsp, 16;                             jmp   n568_binop_β
.Lx1453_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n570_statement_end_α:   mov              r11, 518
                        mov              r10, 68
                        add              rsp, 160;                            jmp   n571_statement_begin_α
#=======================================================================================================================
#                 ListAppend(stack, list())
#-----------------------------------------------------------------------------------------------------------------------
n571_statement_begin_α: mov              r11, 519
                        mov              r10, 69;                             jmp   n572_var_α
n571_statement_begin_β: mov              r11, 519;                            jmp   n576_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_α:             sub              rsp, 16
                        mov              r11, 520
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n573_call_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_α:            sub              rsp, 16
                        mov              r11, 521
                        .section         .rodata
.Lrkfnzd1460:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1460]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1459_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n571_statement_begin_β
.Lx1459_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n574_call_α
n573_call_β:            mov              r11, 521
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n571_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            sub              rsp, 16
                        mov              r11, 522
                        lea              rcx, [rip + .Lsig1462z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1462z:             .quad            2
                        .quad            .Lx1462_2
                        .quad            .Lx1462_2
                        .quad            32
                        .quad            16
.Lx1462_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1462_29
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
.Lx1462_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1462_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n571_statement_begin_β
.Lx1462_240:                                                                  jmp   n575_statement_end_α
n574_call_β:            mov              r11, 522;                            jmp   n571_statement_begin_β
.Lx1462_0:              .quad            .Lx1462_0_s
.Lx1462_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n575_statement_end_α:   mov              r11, 523
                        mov              r10, 69
                        add              rsp, 48;                             jmp   n576_statement_begin_α
#=======================================================================================================================
#                 ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n576_statement_begin_α: mov              r11, 524
                        mov              r10, 70;                             jmp   n577_var_α
n576_statement_begin_β: mov              r11, 524;                            jmp   n584_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_α:             sub              rsp, 16
                        mov              r11, 525
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n578_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_integer_α:     sub              rsp, 16
                        mov              r11, 526
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n579_unop_α
n578_lit_integer_β:     mov              r11, 526
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n576_statement_begin_β
.Lx1468_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n579_unop_α:            sub              rsp, 16
                        mov              r11, 527
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n580_call_α
n579_unop_β:            mov              r11, 527
                        add              rsp, 16;                             jmp   n578_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            sub              rsp, 16
                        mov              r11, 528
                        lea              rcx, [rip + .Lsig1471z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1471z:             .quad            2
                        .quad            .Lx1471_2
                        .quad            .Lx1471_2
                        .quad            48
                        .quad            16
.Lx1471_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1471_29
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
.Lx1471_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1471_240
                        add              rsp, 16;                             jmp   n579_unop_β
.Lx1471_240:                                                                  jmp   n581_var_α
n580_call_β:            mov              r11, 528;                            jmp   n579_unop_β
.Lx1471_0:              .quad            .Lx1471_0_s
.Lx1471_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n581_var_α:             sub              rsp, 16
                        mov              r11, 529
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n582_call_α
n581_var_β:             mov              r11, 529
                        add              rsp, 32;                             jmp   n579_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n582_call_α:            sub              rsp, 16
                        mov              r11, 530
                        lea              rcx, [rip + .Lsig1474z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1474z:             .quad            2
                        .quad            .Lx1474_2
                        .quad            .Lx1474_2
                        .quad            32
                        .quad            16
.Lx1474_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1474_29
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
.Lx1474_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1474_240
                        add              rsp, 16;                             jmp   n581_var_β
.Lx1474_240:                                                                  jmp   n583_statement_end_α
n582_call_β:            mov              r11, 530;                            jmp   n581_var_β
.Lx1474_0:              .quad            .Lx1474_0_s
.Lx1474_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n583_statement_end_α:   mov              r11, 531
                        mov              r10, 70
                        add              rsp, 96;                             jmp   n584_statement_begin_α
#=======================================================================================================================
#                 push_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_begin_α: mov              r11, 532
                        mov              r10, 71;                             jmp   n585_lit_string_α
n584_statement_begin_β: mov              r11, 532;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:      sub              rsp, 16
                        mov              r11, 533
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n586_call_α
.Lx1479_0:              .quad            .Lx1479_0_s
.Lx1479_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            sub              rsp, 16
                        mov              r11, 534
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1481:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1481]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1480_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n584_statement_begin_β
.Lx1480_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n587_assign_α
n586_call_β:            mov              r11, 534
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n584_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n587_assign_α:          mov              r11, 535
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n588_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n588_statement_end_α:   mov              r11, 536
                        mov              r10, 71
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# push_item       ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n589_statement_begin_α: mov              r11, 537
                        mov              r10, 72;                             jmp   n590_var_α
n589_statement_begin_β: mov              r11, 537;                            jmp   n597_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n590_var_α:             sub              rsp, 16
                        mov              r11, 538
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_integer_α:     sub              rsp, 16
                        mov              r11, 539
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n592_unop_α
n591_lit_integer_β:     mov              r11, 539
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n589_statement_begin_β
.Lx1488_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n592_unop_α:            sub              rsp, 16
                        mov              r11, 540
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n593_call_α
n592_unop_β:            mov              r11, 540
                        add              rsp, 16;                             jmp   n591_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n593_call_α:            sub              rsp, 16
                        mov              r11, 541
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
                        cmp              al, 104;                             jne   .Lx1491_240
                        add              rsp, 16;                             jmp   n592_unop_β
.Lx1491_240:                                                                  jmp   n594_var_α
n593_call_β:            mov              r11, 541;                            jmp   n592_unop_β
.Lx1491_0:              .quad            .Lx1491_0_s
.Lx1491_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             sub              rsp, 16
                        mov              r11, 542
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n595_call_α
n594_var_β:             mov              r11, 542
                        add              rsp, 32;                             jmp   n592_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            sub              rsp, 16
                        mov              r11, 543
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
                        cmp              al, 104;                             jne   .Lx1494_240
                        add              rsp, 16;                             jmp   n594_var_β
.Lx1494_240:                                                                  jmp   n596_statement_end_α
n595_call_β:            mov              r11, 543;                            jmp   n594_var_β
.Lx1494_0:              .quad            .Lx1494_0_s
.Lx1494_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_end_α:   mov              r11, 544
                        mov              r10, 72
                        add              rsp, 96;                             jmp   n597_statement_begin_α
#=======================================================================================================================
#                 push_item       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_begin_α: mov              r11, 545
                        mov              r10, 73;                             jmp   n598_lit_string_α
n597_statement_begin_β: mov              r11, 545;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      sub              rsp, 16
                        mov              r11, 546
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1499_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n599_call_α
.Lx1499_0:              .quad            .Lx1499_0_s
.Lx1499_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            sub              rsp, 16
                        mov              r11, 547
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
                        cmp              al, 104;                             jne   .Lx1500_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n597_statement_begin_β
.Lx1500_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n600_assign_α
n599_call_β:            mov              r11, 547
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n597_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n600_assign_α:          mov              r11, 548
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              qword ptr [r9 + 344], rdx;           jmp   n601_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n601_statement_end_α:   mov              r11, 549
                        mov              r10, 73
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_list        ListAppend(ListValue(stack, -2), ListPop(stack))
#-----------------------------------------------------------------------------------------------------------------------
n602_statement_begin_α: mov              r11, 550
                        mov              r10, 74;                             jmp   n603_var_α
n602_statement_begin_β: mov              r11, 550;                            jmp   n611_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_α:             sub              rsp, 16
                        mov              r11, 551
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n604_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_integer_α:     sub              rsp, 16
                        mov              r11, 552
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1508_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n605_unop_α
n604_lit_integer_β:     mov              r11, 552
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n602_statement_begin_β
.Lx1508_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n605_unop_α:            sub              rsp, 16
                        mov              r11, 553
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n606_call_α
n605_unop_β:            mov              r11, 553
                        add              rsp, 16;                             jmp   n604_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n606_call_α:            sub              rsp, 16
                        mov              r11, 554
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
                        cmp              al, 104;                             jne   .Lx1511_240
                        add              rsp, 16;                             jmp   n605_unop_β
.Lx1511_240:                                                                  jmp   n607_var_α
n606_call_β:            mov              r11, 554;                            jmp   n605_unop_β
.Lx1511_0:              .quad            .Lx1511_0_s
.Lx1511_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n607_var_α:             sub              rsp, 16
                        mov              r11, 555
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n608_call_α
n607_var_β:             mov              r11, 555
                        add              rsp, 32;                             jmp   n605_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n608_call_α:            sub              rsp, 16
                        mov              r11, 556
                        lea              rcx, [rip + .Lsig1514z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1514z:             .quad            1
                        .quad            .Lx1514_2
                        .quad            .Lx1514_2
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
                        cmp              al, 104;                             jne   .Lx1514_240
                        add              rsp, 16;                             jmp   n607_var_β
.Lx1514_240:                                                                  jmp   n609_call_α
n608_call_β:            mov              r11, 556;                            jmp   n607_var_β
.Lx1514_0:              .quad            .Lx1514_0_s
.Lx1514_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            sub              rsp, 16
                        mov              r11, 557
                        lea              rcx, [rip + .Lsig1516z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1516z:             .quad            2
                        .quad            .Lx1516_2
                        .quad            .Lx1516_2
                        .quad            48
                        .quad            16
.Lx1516_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1516_29
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
.Lx1516_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1516_240
                        add              rsp, 32;                             jmp   n607_var_β
.Lx1516_240:                                                                  jmp   n610_statement_end_α
n609_call_β:            mov              r11, 557;                            jmp   n607_var_β
.Lx1516_0:              .quad            .Lx1516_0_s
.Lx1516_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n610_statement_end_α:   mov              r11, 558
                        mov              r10, 74
                        add              rsp, 112;                            jmp   n611_statement_begin_α
#=======================================================================================================================
#                 pop_list        =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n611_statement_begin_α: mov              r11, 559
                        mov              r10, 75;                             jmp   n612_lit_string_α
n611_statement_begin_β: mov              r11, 559;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:      sub              rsp, 16
                        mov              r11, 560
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1521_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n613_call_α
.Lx1521_0:              .quad            .Lx1521_0_s
.Lx1521_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n613_call_α:            sub              rsp, 16
                        mov              r11, 561
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1523:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1523]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1522_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n611_statement_begin_β
.Lx1522_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_assign_α
n613_call_β:            mov              r11, 561
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n611_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n614_assign_α:          mov              r11, 562
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # pop_list
                        mov              qword ptr [r9 + 376], rdx;           jmp   n615_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n615_statement_end_α:   mov              r11, 563
                        mov              r10, 75
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# pop_final       $v              =   ListPop(stack)
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_begin_α: mov              r11, 564
                        mov              r10, 76;                             jmp   n617_var_α
n616_statement_begin_β: mov              r11, 564;                            jmp   n623_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             sub              rsp, 16
                        mov              r11, 565
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n618_call_α
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            sub              rsp, 16
                        mov              r11, 566
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1531:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1531]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1530_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n616_statement_begin_β
.Lx1530_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n619_var_α
n618_call_β:            mov              r11, 566
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n616_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:             sub              rsp, 16
                        mov              r11, 567
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n620_call_α
n619_var_β:             mov              r11, 567
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n616_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n620_call_α:            sub              rsp, 16
                        mov              r11, 568
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
                        cmp              al, 104;                             jne   .Lx1534_240
                        add              rsp, 16;                             jmp   n619_var_β
.Lx1534_240:                                                                  jmp   n621_assign_var_α
n620_call_β:            mov              r11, 568;                            jmp   n619_var_β
.Lx1534_0:              .quad            .Lx1534_0_s
.Lx1534_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n621_assign_var_α:      sub              rsp, 16
                        mov              r11, 569
                        mov              rdi, qword ptr [rsp + 48]            # call
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1535_240
                        add              rsp, 32;                             jmp   n619_var_β
.Lx1535_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n622_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n622_statement_end_α:   mov              r11, 570
                        mov              r10, 76
                        add              rsp, 80;                             jmp   n623_statement_begin_α
#=======================================================================================================================
#                 pop_final       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n623_statement_begin_α: mov              r11, 571
                        mov              r10, 77;                             jmp   n624_lit_string_α
n623_statement_begin_β: mov              r11, 571;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:      sub              rsp, 16
                        mov              r11, 572
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n625_call_α
.Lx1540_0:              .quad            .Lx1540_0_s
.Lx1540_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n625_call_α:            sub              rsp, 16
                        mov              r11, 573
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1542:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1542]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1541_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
.Lx1541_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n626_assign_α
n625_call_β:            mov              r11, 573
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n623_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n626_assign_α:          mov              r11, 574
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              qword ptr [r9 + 408], rdx;           jmp   n627_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n627_statement_end_α:   mov              r11, 575
                        mov              r10, 77
                        add              rsp, 32;                             jmp   NRETURN
#=======================================================================================================================
# StackEnd        delim           =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n628_statement_begin_α: mov              r11, 576
                        mov              r10, 78;                             jmp   n629_lit_string_α
n628_statement_begin_β: mov              r11, 576;                            jmp   n633_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_string_α:      sub              rsp, 16
                        mov              r11, 577
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n630_call_α
.Lx1548_0:              .quad            .Lx1548_0_s
.Lx1548_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n630_call_α:            sub              rsp, 16
                        mov              r11, 578
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1550:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1550]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1549_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n628_statement_begin_β
.Lx1549_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n631_assign_α
n630_call_β:            mov              r11, 578
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n628_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n631_assign_α:          mov              r11, 579
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # delim
                        mov              qword ptr [r9 + 488], rdx;           jmp   n632_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n632_statement_end_α:   mov              r11, 580
                        mov              r10, 78
                        add              rsp, 32;                             jmp   n633_statement_begin_α
#=======================================================================================================================
#                 word            =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n633_statement_begin_α: mov              r11, 581
                        mov              r10, 79;                             jmp   n634_lit_string_α
n633_statement_begin_β: mov              r11, 581;                            jmp   n638_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      sub              rsp, 16
                        mov              r11, 582
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1556_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n635_call_α
.Lx1556_0:              .quad            .Lx1556_0_s
.Lx1556_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_α:            sub              rsp, 16
                        mov              r11, 583
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1558:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1558]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1557_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n633_statement_begin_β
.Lx1557_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n636_assign_α
n635_call_β:            mov              r11, 583
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n633_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n636_assign_α:          mov              r11, 584
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # word
                        mov              qword ptr [r9 + 504], rdx;           jmp   n637_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n637_statement_end_α:   mov              r11, 585
                        mov              r10, 79
                        add              rsp, 32;                             jmp   n638_statement_begin_α
#=======================================================================================================================
#                 group           =   '('
#-----------------------------------------------------------------------------------------------------------------------
n638_statement_begin_α: mov              r11, 586
                        mov              r10, 80;                             jmp   n639_var_α
n638_statement_begin_β: mov              r11, 586;                            jmp   n658_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:             sub              rsp, 16
                        mov              r11, 587
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n640_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n640_assign_α:          mov              r11, 588
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      sub              rsp, 16
                        mov              r11, 589
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1566_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n642_call_α
n641_lit_string_β:      mov              r11, 589
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n638_statement_begin_β
.Lx1566_0:              .quad            .Lx1566_0_s
.Lx1566_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:            sub              rsp, 16
                        mov              r11, 590
                        lea              rcx, [rip + .Lsig1568z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1568z:             .quad            1
                        .quad            .Lx1568_2
                        .quad            .Lx1568_2
                        .quad            16
.Lx1568_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1568_29
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
.Lx1568_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1568_240
                        add              rsp, 16;                             jmp   n641_lit_string_β
.Lx1568_240:                                                                  jmp   n643_assign_α
n642_call_β:            mov              r11, 590;                            jmp   n641_lit_string_β
.Lx1568_0:              .quad            .Lx1568_0_s
.Lx1568_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:          mov              r11, 591
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n644_var_α
#-----------------------------------------------------------------------------------------------------------------------
n644_var_α:             sub              rsp, 16
                        mov              r11, 592
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n645_assign_α
n644_var_β:             mov              r11, 592
                        add              rsp, 32;                             jmp   n641_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n645_assign_α:          mov              r11, 593
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n646_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:      sub              rsp, 16
                        mov              r11, 594
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n647_call_α
n646_lit_string_β:      mov              r11, 594
                        add              rsp, 16;                             jmp   n644_var_β
.Lx1572_0:              .quad            .Lx1572_0_s
.Lx1572_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n647_call_α:            sub              rsp, 16
                        mov              r11, 595
                        lea              rcx, [rip + .Lsig1574z]
                        lea              rax, [rip + Push_item_α];            jmp   rax
.Lsig1574z:             .quad            1
                        .quad            .Lx1574_2
                        .quad            .Lx1574_2
                        .quad            16
.Lx1574_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1574_29
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
.Lx1574_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1574_240
                        add              rsp, 16;                             jmp   n646_lit_string_β
.Lx1574_240:                                                                  jmp   n648_assign_α
n647_call_β:            mov              r11, 595;                            jmp   n646_lit_string_β
.Lx1574_0:              .quad            .Lx1574_0_s
.Lx1574_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n648_assign_α:          mov              r11, 596
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 664], rdx;           jmp   n649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n649_var_α:             sub              rsp, 16
                        mov              r11, 597
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n650_assign_α
n649_var_β:             mov              r11, 597
                        add              rsp, 32;                             jmp   n646_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              r11, 598
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 680], rdx;           jmp   n651_call_α
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:            sub              rsp, 16
                        mov              r11, 599
                        lea              rcx, [rip + .Lsig1579z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1579z:             .quad            0
                        .quad            .Lx1579_2
                        .quad            .Lx1579_2
.Lx1579_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1579_29
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
.Lx1579_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1579_240
                        add              rsp, 16;                             jmp   n649_var_β
.Lx1579_240:                                                                  jmp   n652_assign_α
n651_call_β:            mov              r11, 599;                            jmp   n649_var_β
.Lx1579_0:              .quad            .Lx1579_0_s
.Lx1579_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n652_assign_α:          mov              r11, 600
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 696], rdx;           jmp   n653_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:      sub              rsp, 16
                        mov              r11, 601
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n654_lit_string_α
n653_lit_string_β:      mov              r11, 601
                        add              rsp, 32;                             jmp   n649_var_β
.Lx1581_0:              .quad            .Lx1581_0_s
.Lx1581_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      sub              rsp, 16
                        mov              r11, 602
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1582_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n655_call_α
n654_lit_string_β:      mov              r11, 602
                        add              rsp, 16;                             jmp   n653_lit_string_β
.Lx1582_0:              .quad            .Lx1582_0_s
.Lx1582_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n655_call_α:            sub              rsp, 16
                        mov              r11, 603
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
.Lrkfnzd1584:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1584]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1583_240
                        add              rsp, 16;                             jmp   n654_lit_string_β
.Lx1583_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n656_assign_α
n655_call_β:            mov              r11, 603
                        add              rsp, 16;                             jmp   n654_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n656_assign_α:          mov              r11, 604
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # group
                        mov              qword ptr [r9 + 520], rdx;           jmp   n657_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n657_statement_end_α:   mov              r11, 605
                        mov              r10, 80
                        add              rsp, 176;                            jmp   n658_statement_begin_α
#=======================================================================================================================
#                 treebank        =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n658_statement_begin_α: mov              r11, 606
                        mov              r10, 81;                             jmp   n659_lit_string_α
n658_statement_begin_β: mov              r11, 606;                            jmp   n680_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:      sub              rsp, 16
                        mov              r11, 607
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1590_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n660_call_α
.Lx1590_0:              .quad            .Lx1590_0_s
.Lx1590_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n660_call_α:            sub              rsp, 16
                        mov              r11, 608
                        lea              rcx, [rip + .Lsig1592z]
                        lea              rax, [rip + Init_list_α];            jmp   rax
.Lsig1592z:             .quad            1
                        .quad            .Lx1592_2
                        .quad            .Lx1592_2
                        .quad            16
.Lx1592_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1592_29
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
.Lx1592_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1592_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n658_statement_begin_β
.Lx1592_240:                                                                  jmp   n661_assign_α
n660_call_β:            mov              r11, 608;                            jmp   n658_statement_begin_β
.Lx1592_0:              .quad            .Lx1592_0_s
.Lx1592_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n661_assign_α:          mov              r11, 609
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 712], rdx;           jmp   n662_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      sub              rsp, 16
                        mov              r11, 610
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n663_call_α
n662_lit_string_β:      mov              r11, 610
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n658_statement_begin_β
.Lx1594_0:              .quad            .Lx1594_0_s
.Lx1594_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n663_call_α:            sub              rsp, 16
                        mov              r11, 611
                        lea              rcx, [rip + .Lsig1596z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1596z:             .quad            1
                        .quad            .Lx1596_2
                        .quad            .Lx1596_2
                        .quad            16
.Lx1596_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1596_29
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
.Lx1596_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1596_240
                        add              rsp, 16;                             jmp   n662_lit_string_β
.Lx1596_240:                                                                  jmp   n664_assign_α
n663_call_β:            mov              r11, 611;                            jmp   n662_lit_string_β
.Lx1596_0:              .quad            .Lx1596_0_s
.Lx1596_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n664_assign_α:          mov              r11, 612
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 728], rdx;           jmp   n665_call_α
#-----------------------------------------------------------------------------------------------------------------------
n665_call_α:            sub              rsp, 16
                        mov              r11, 613
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
                        cmp              al, 104;                             jne   .Lx1599_240
                        add              rsp, 32;                             jmp   n662_lit_string_β
.Lx1599_240:                                                                  jmp   n666_assign_α
n665_call_β:            mov              r11, 613;                            jmp   n662_lit_string_β
.Lx1599_0:              .quad            .Lx1599_0_s
.Lx1599_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n666_assign_α:          mov              r11, 614
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 744], rdx;           jmp   n667_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      sub              rsp, 16
                        mov              r11, 615
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n668_call_α
n667_lit_string_β:      mov              r11, 615
                        add              rsp, 48;                             jmp   n662_lit_string_β
.Lx1601_0:              .quad            .Lx1601_0_s
.Lx1601_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n668_call_α:            sub              rsp, 16
                        mov              r11, 616
                        lea              rcx, [rip + .Lsig1603z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1603z:             .quad            1
                        .quad            .Lx1603_2
                        .quad            .Lx1603_2
                        .quad            16
.Lx1603_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1603_29
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
.Lx1603_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1603_240
                        add              rsp, 16;                             jmp   n667_lit_string_β
.Lx1603_240:                                                                  jmp   n669_assign_α
n668_call_β:            mov              r11, 616;                            jmp   n667_lit_string_β
.Lx1603_0:              .quad            .Lx1603_0_s
.Lx1603_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n669_assign_α:          mov              r11, 617
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 760], rdx;           jmp   n670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n670_var_α:             sub              rsp, 16
                        mov              r11, 618
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n671_assign_α
n670_var_β:             mov              r11, 618
                        add              rsp, 32;                             jmp   n667_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:          mov              r11, 619
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 776], rdx;           jmp   n672_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      sub              rsp, 16
                        mov              r11, 620
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n673_call_α
n672_lit_string_β:      mov              r11, 620
                        add              rsp, 16;                             jmp   n670_var_β
.Lx1607_0:              .quad            .Lx1607_0_s
.Lx1607_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:            sub              rsp, 16
                        mov              r11, 621
                        lea              rcx, [rip + .Lsig1609z]
                        lea              rax, [rip + Pop_final_α];            jmp   rax
.Lsig1609z:             .quad            1
                        .quad            .Lx1609_2
                        .quad            .Lx1609_2
                        .quad            16
.Lx1609_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1609_29
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
.Lx1609_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1609_240
                        add              rsp, 16;                             jmp   n672_lit_string_β
.Lx1609_240:                                                                  jmp   n674_assign_α
n673_call_β:            mov              r11, 621;                            jmp   n672_lit_string_β
.Lx1609_0:              .quad            .Lx1609_0_s
.Lx1609_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n674_assign_α:          mov              r11, 622
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 792], rdx;           jmp   n675_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      sub              rsp, 16
                        mov              r11, 623
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n676_lit_string_α
n675_lit_string_β:      mov              r11, 623
                        add              rsp, 32;                             jmp   n672_lit_string_β
.Lx1611_0:              .quad            .Lx1611_0_s
.Lx1611_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      sub              rsp, 16
                        mov              r11, 624
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1612_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n677_call_α
n676_lit_string_β:      mov              r11, 624
                        add              rsp, 16;                             jmp   n675_lit_string_β
.Lx1612_0:              .quad            .Lx1612_0_s
.Lx1612_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n677_call_α:            sub              rsp, 16
                        mov              r11, 625
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
.Lrkfnzd1614:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1614]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx1613_240
                        add              rsp, 16;                             jmp   n676_lit_string_β
.Lx1613_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n678_assign_α
n677_call_β:            mov              r11, 625
                        add              rsp, 16;                             jmp   n676_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n678_assign_α:          mov              r11, 626
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # treebank
                        mov              qword ptr [r9 + 568], rdx;           jmp   n679_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n679_statement_end_α:   mov              r11, 627
                        mov              r10, 81
                        add              rsp, 208;                            jmp   n680_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n680_statement_begin_α: mov              r11, 628
                        mov              r10, 82;                             jmp   n681_lit_string_α
n680_statement_begin_β: mov              r11, 628;                            jmp   n687_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:      sub              rsp, 16
                        mov              r11, 629
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1620_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n682_call_α
.Lx1620_0:              .quad            .Lx1620_0_s
.Lx1620_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:            sub              rsp, 16
                        mov              r11, 630
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1622:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1622]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1621_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n680_statement_begin_β
.Lx1621_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n683_lit_integer_α
n682_call_β:            mov              r11, 630
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n680_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_integer_α:     sub              rsp, 16
                        mov              r11, 631
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n684_lit_string_α
n683_lit_integer_β:     mov              r11, 631
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n680_statement_begin_β
.Lx1623_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_string_α:      sub              rsp, 16
                        mov              r11, 632
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1624_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n685_call_α
n684_lit_string_β:      mov              r11, 632
                        add              rsp, 16;                             jmp   n683_lit_integer_β
.Lx1624_0:              .quad            .Lx1624_0_s
.Lx1624_0_s:            .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n685_call_α:            sub              rsp, 16
                        mov              r11, 633
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
.Lbynamefnzd633:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd633]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx1625_240
                        add              rsp, 16;                             jmp   n684_lit_string_β
.Lx1625_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n686_statement_end_α
n685_call_β:            mov              r11, 633
                        add              rsp, 16;                             jmp   n684_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n686_statement_end_α:   mov              r11, 634
                        mov              r10, 82
                        add              rsp, 80;                             jmp   n687_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n687_statement_begin_α: mov              r11, 635
                        mov              r10, 83;                             jmp   n688_var_α
n687_statement_begin_β: mov              r11, 635;                            jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n688_var_α:             sub              rsp, 16
                        mov              r11, 636
                        mov              rdi, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx1630_240
                        add              rsp, 16;                             jmp   n687_statement_begin_β
.Lx1630_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n689_assign_α
.Lx1630_0:              .quad            .Lx1630_0_s
.Lx1630_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_α:          mov              r11, 637
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # src
                        mov              qword ptr [r9 + 584], rdx;           jmp   n690_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_end_α:   mov              r11, 638
                        mov              r10, 83
                        add              rsp, 16;                             jmp   n691_statement_begin_α
#=======================================================================================================================
#                 src             ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_begin_α: mov              r11, 639
                        mov              r10, 84;                             jmp   n692_var_α
n691_statement_begin_β: mov              r11, 639;                            jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n692_var_α:             sub              rsp, 16
                        mov              r11, 640
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             sub              rsp, 16
                        mov              r11, 641
                        mov              rax, qword ptr [r9 + 560]            # treebank
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n694_assign_α
n693_var_β:             mov              r11, 641
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n706_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n694_assign_α:          mov              r11, 642
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1638_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n695_match_begin_α
n694_assign_β:          mov              r11, 642;                            jmp   n693_var_β
.Lx1638_0:              .quad            .Lx1638_0_s
.Lx1638_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n695_match_begin_α:     mov              r11, 643
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx1640_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1640_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n696_match_defer_α
n695_match_begin_β:     mov              r11, 643
.Lx1640_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1640_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1640_1
                                                                              jmp   .Lx1640_0
.Lx1640_1:
n695_match_begin_af:    mov              r11, 643
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n694_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n696_match_defer_α:     mov              r11, 644
                        lea              rdi, [rip + .S18]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx1641_14
                        mov              rax, qword ptr [rdx + 0]
.Lx1641_14:             test             rax, rax;                            jz    .Lx1641_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1641_5]
                        push             rcx
                        lea              rcx, [rip + .Lx1641_4]
                        push             rcx;                                 jmp   rax
.Lx1641_4:                                                                    jmp   n697_match_end_α
.Lx1641_5:                                                                    jmp   n695_match_begin_β
.Lx1641_0:              push             r14
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
                        test             eax, eax;                            js    n695_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1641_6]
                        push             rcx
                        push             rax;                                 jmp   n697_match_end_α
.Lx1641_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n695_match_begin_β
n696_match_defer_β:     mov              r11, 644
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx1641_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1641_12
                                                                              jmp   rax
.Lx1641_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n697_match_end_α:       mov              r11, 645
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx1643_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n695_match_begin_af
.Lx1643_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n698_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n698_statement_end_α:   mov              r11, 646
                        mov              r10, 84
                        add              rsp, 32;                             jmp   n699_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n699_statement_begin_α: mov              r11, 647
                        mov              r10, 85;                             jmp   n700_lit_string_α
n699_statement_begin_β: mov              r11, 647;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:      sub              rsp, 16
                        mov              r11, 648
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx1648_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n701_var_α
.Lx1648_0:              .quad            .Lx1648_0_s
.Lx1648_0_s:            .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:             sub              rsp, 16
                        mov              r11, 649
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n702_call_α
n701_var_β:             mov              r11, 649
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n699_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n702_call_α:            sub              rsp, 16
                        mov              r11, 650
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1651:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1651]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1650_240
                        add              rsp, 16;                             jmp   n701_var_β
.Lx1650_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n703_binop_α
n702_call_β:            mov              r11, 650
                        add              rsp, 16;                             jmp   n701_var_β
#-----------------------------------------------------------------------------------------------------------------------
n703_binop_α:           sub              rsp, 16
                        mov              r11, 651
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n704_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n704_assign_α:          mov              r11, 652
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1653_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n705_statement_end_α
.Lx1653_0:              .quad            .Lx1653_0_s
.Lx1653_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n705_statement_end_α:   mov              r11, 653
                        mov              r10, 85
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n706_statement_begin_α: mov              r11, 654
                        mov              r10, 86;                             jmp   n707_lit_string_α
n706_statement_begin_β: mov              r11, 654;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      sub              rsp, 16
                        mov              r11, 655
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1658_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n708_assign_α
.Lx1658_0:              .quad            .Lx1658_0_s
.Lx1658_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n708_assign_α:          mov              r11, 656
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1659_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n709_statement_end_α
.Lx1659_0:              .quad            .Lx1659_0_s
.Lx1659_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n709_statement_end_α:   mov              r11, 657
                        mov              r10, 86
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 658
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 659
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 660
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
