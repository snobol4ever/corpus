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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        sub              rsp, 120
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx36_16
                        mov              rax, qword ptr [rdx + 0]
.Lx36_16:               test             rax, rax;                            jz    .Lx36_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx36_5]
                        push             rcx
                        lea              rcx, [rip + .Lx36_4]
                        push             rcx;                                 jmp   rax
.Lx36_4:                                                                      jmp   n19_match_assign_cond_α
.Lx36_5:                add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx36_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            jns   .Lx36_240
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
.Lx36_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        push             rcx
                        push             rax;                                 jmp   n19_match_assign_cond_α
.Lx36_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n17_match_assign_save_β
n18_match_defer_β:      mov              r11, 9
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx36_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx36_12
                                                                              jmp   rax
.Lx36_12:                                                                     jmp   qword ptr [rsp]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx39_16
                        mov              rax, qword ptr [rdx + 0]
.Lx39_16:               test             rax, rax;                            jz    .Lx39_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx39_5]
                        push             rcx
                        lea              rcx, [rip + .Lx39_4]
                        push             rcx;                                 jmp   rax
.Lx39_4:                                                                      jmp   n21_match_arbno_α
.Lx39_5:                add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx39_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S4]
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
                        test             eax, eax;                            jns   .Lx39_240
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
.Lx39_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx39_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_arbno_α
.Lx39_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n19_match_assign_cond_β
n20_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx39_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx39_12
                                                                              jmp   rax
.Lx39_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:      mov              r11, 12
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n22_match_defer_α
n21_match_arbno_β:      mov              r11, 12
                        mov              r12, qword ptr [rbp + -56];          jmp   n24_match_defer_α
n21_match_arbno_as:     mov              r11, 12
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n21_match_arbno_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n22_match_defer_α
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx42_16
                        mov              rax, qword ptr [rdx + 0]
.Lx42_16:               test             rax, rax;                            jz    .Lx42_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx42_5]
                        push             rcx
                        lea              rcx, [rip + .Lx42_4]
                        push             rcx;                                 jmp   rax
.Lx42_4:                                                                      jmp   n23_match_lit_α
.Lx42_5:                add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx42_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
                        lea              rdx, [rip + .S5]
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
                        test             eax, eax;                            jns   .Lx42_240
                        add              rsp, 16;                             jmp   n21_match_arbno_β
.Lx42_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx42_6]
                        push             rcx
                        push             rax;                                 jmp   n23_match_lit_α
.Lx42_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n21_match_arbno_β
n22_match_defer_β:      mov              r11, 13
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx42_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx42_12
                                                                              jmp   rax
.Lx42_12:                                                                     jmp   qword ptr [rsp]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx45_16
                        mov              rax, qword ptr [rdx + 0]
.Lx45_16:               test             rax, rax;                            jz    .Lx45_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx45_5]
                        push             rcx
                        lea              rcx, [rip + .Lx45_4]
                        push             rcx;                                 jmp   rax
.Lx45_4:                                                                      jmp   n25_match_fence1_α
.Lx45_5:                                                                      jmp   n21_match_arbno_af
.Lx45_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
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
                        test             eax, eax;                            js    n21_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx45_6]
                        push             rcx
                        push             rax;                                 jmp   n25_match_fence1_α
.Lx45_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n21_match_arbno_af
n24_match_defer_β:      mov              r11, 15
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx45_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx45_12
                                                                              jmp   rax
.Lx45_12:                                                                     jmp   qword ptr [rsp]
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
                        lea              rax, [rip + .Lx49_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n31_match_defer_α
.Lx49_21:               lea              rax, [rip + .Lx49_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n27_match_assign_save_α
n26_match_alternate_s0: mov              r11, 17
                        lea              rax, [rip + .Lx49_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
n26_match_alternate_s1: mov              r11, 17
                        lea              rax, [rip + .Lx49_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
.Lx49_40:                                                                     jmp   n31_match_defer_β
.Lx49_41:                                                                     jmp   n30_match_defer_β
n26_match_alternate_as: mov              r11, 17;                             jmp   n25_match_fence1_as
n26_match_alternate_β:  mov              r11, 17
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n26_match_alternate_af: mov              r11, 17
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx49_19:               add              rsp, 32;                             jmp   n25_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_assign_save_α:
                        mov              r11, 18
                        mov              dword ptr [rbp + -96], r14d;         jmp   n28_match_defer_α
n27_match_assign_save_β:
                        mov              r11, 18;                             jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:      mov              r11, 19
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .Lx52_16
                        mov              rax, qword ptr [rdx + 0]
.Lx52_16:               test             rax, rax;                            jz    .Lx52_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx52_5]
                        push             rcx
                        lea              rcx, [rip + .Lx52_4]
                        push             rcx;                                 jmp   rax
.Lx52_4:                                                                      jmp   n29_match_assign_cond_α
.Lx52_5:                                                                      jmp   n27_match_assign_save_β
.Lx52_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n27_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx52_6]
                        push             rcx
                        push             rax;                                 jmp   n29_match_assign_cond_α
.Lx52_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n27_match_assign_save_β
n28_match_defer_β:      mov              r11, 19
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx52_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx52_12
                                                                              jmp   rax
.Lx52_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n29_match_assign_cond_α:
                        mov              r11, 20
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S8]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n30_match_defer_α
n29_match_assign_cond_β:
                        mov              r11, 20
                        sub              r12, 24;                             jmp   n28_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:      mov              r11, 21
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx55_16
                        mov              rax, qword ptr [rdx + 0]
.Lx55_16:               test             rax, rax;                            jz    .Lx55_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx55_5]
                        push             rcx
                        lea              rcx, [rip + .Lx55_4]
                        push             rcx;                                 jmp   rax
.Lx55_4:                                                                      jmp   n26_match_alternate_s1
.Lx55_5:                                                                      jmp   n29_match_assign_cond_β
.Lx55_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S9]
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
                        test             eax, eax;                            js    n29_match_assign_cond_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx55_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s1
.Lx55_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n29_match_assign_cond_β
n30_match_defer_β:      mov              r11, 21
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx55_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx55_12
                                                                              jmp   rax
.Lx55_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      mov              r11, 22
                        mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              al, 8;                               jne   .Lx56_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx56_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx56_10
.Lx56_9:                cmp              al, 88;                              jne   .Lx56_21
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
                        test             rax, rax;                            je    .Lx56_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx56_10
.Lx56_21:               xor              eax, eax
.Lx56_10:               test             rax, rax;                            jz    .Lx56_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx56_5]
                        push             rcx
                        lea              rcx, [rip + .Lx56_4]
                        push             rcx;                                 jmp   rax
.Lx56_4:                                                                      jmp   n26_match_alternate_s0
.Lx56_5:                                                                      jmp   n26_match_alternate_af
.Lx56_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
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
                        test             eax, eax;                            js    n26_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx56_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_alternate_s0
.Lx56_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n26_match_alternate_af
n31_match_defer_β:      mov              r11, 22
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx56_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx56_12
                                                                              jmp   rax
.Lx56_12:                                                                     jmp   qword ptr [rsp]
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
n57_match_pos_α:        mov              r11, 23
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$4_ω
                                                                              jmp   n58_match_defer_α
n57_match_pos_β:        mov              r11, 23;                             jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_match_defer_α:      sub              rsp, 16
                        mov              r11, 24
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
                        test             rax, rax;                            je    .Lx71_16
                        mov              rax, qword ptr [rdx + 0]
.Lx71_16:               test             rax, rax;                            jz    .Lx71_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx71_5]
                        push             rcx
                        lea              rcx, [rip + .Lx71_4]
                        push             rcx;                                 jmp   rax
.Lx71_4:                                                                      jmp   n59_match_defer_α
.Lx71_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx71_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx71_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx71_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx71_6]
                        push             rcx
                        push             rax;                                 jmp   n59_match_defer_α
.Lx71_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n58_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx71_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx71_12
                                                                              jmp   rax
.Lx71_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .Lx72_16
                        mov              rax, qword ptr [rdx + 0]
.Lx72_16:               test             rax, rax;                            jz    .Lx72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx72_5]
                        push             rcx
                        lea              rcx, [rip + .Lx72_4]
                        push             rcx;                                 jmp   rax
.Lx72_4:                                                                      jmp   n60_match_arbno_α
.Lx72_5:                add              rsp, 16;                             jmp   n58_match_defer_β
.Lx72_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            jns   .Lx72_240
                        add              rsp, 16;                             jmp   n58_match_defer_β
.Lx72_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx72_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_arbno_α
.Lx72_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n58_match_defer_β
n59_match_defer_β:      mov              r11, 25
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx72_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx72_12
                                                                              jmp   rax
.Lx72_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n60_match_arbno_α:      mov              r11, 26
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n61_match_defer_α
n60_match_arbno_β:      mov              r11, 26
                        mov              r12, qword ptr [rbp + -40];          jmp   n63_match_defer_α
n60_match_arbno_as:     mov              r11, 26
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n67_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n61_match_defer_α
n60_match_arbno_af:     mov              r11, 26
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n59_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
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
                        test             rax, rax;                            je    .Lx75_16
                        mov              rax, qword ptr [rdx + 0]
.Lx75_16:               test             rax, rax;                            jz    .Lx75_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx75_5]
                        push             rcx
                        lea              rcx, [rip + .Lx75_4]
                        push             rcx;                                 jmp   rax
.Lx75_4:                                                                      jmp   n62_match_rpos_α
.Lx75_5:                add              rsp, 16;                             jmp   n60_match_arbno_β
.Lx75_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 5
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
                        test             eax, eax;                            jns   .Lx75_240
                        add              rsp, 16;                             jmp   n60_match_arbno_β
.Lx75_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_rpos_α
.Lx75_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n60_match_arbno_β
n61_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx75_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx75_12
                                                                              jmp   rax
.Lx75_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n62_match_rpos_α:       mov              r11, 28
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n61_match_defer_β
                                                                              jmp   PAT$4_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      mov              r11, 29
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
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
                        test             rax, rax;                            je    .Lx77_16
                        mov              rax, qword ptr [rdx + 0]
.Lx77_16:               test             rax, rax;                            jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_5]
                        push             rcx
                        lea              rcx, [rip + .Lx77_4]
                        push             rcx;                                 jmp   rax
.Lx77_4:                                                                      jmp   n64_match_arbno_α
.Lx77_5:                                                                      jmp   n60_match_arbno_af
.Lx77_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
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
                        test             eax, eax;                            js    n60_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_arbno_α
.Lx77_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_arbno_af
n63_match_defer_β:      mov              r11, 29
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx77_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx77_12
                                                                              jmp   rax
.Lx77_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n64_match_arbno_α:      mov              r11, 30
                        mov              dword ptr [rbp + -80], r14d
                        mov              dword ptr [rbp + -76], r14d
                        mov              qword ptr [rbp + -72], r12;          jmp   n65_match_defer_α
n64_match_arbno_β:      mov              r11, 30
                        mov              r12, qword ptr [rbp + -72];          jmp   n68_match_defer_α
n64_match_arbno_as:     mov              r11, 30
                        mov              eax, dword ptr [rbp + -76]
                        cmp              r14d, eax;                           je    n64_match_arbno_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              qword ptr [rbp + -72], r12;          jmp   n65_match_defer_α
n64_match_arbno_af:     mov              r11, 30
                        mov              eax, dword ptr [rbp + -80]
                        cmp              r14d, eax;                           jmp   n63_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      mov              r11, 31
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
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
                        test             rax, rax;                            je    .Lx80_16
                        mov              rax, qword ptr [rdx + 0]
.Lx80_16:               test             rax, rax;                            jz    .Lx80_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx80_5]
                        push             rcx
                        lea              rcx, [rip + .Lx80_4]
                        push             rcx;                                 jmp   rax
.Lx80_4:                                                                      jmp   n66_match_fence0_α
.Lx80_5:                                                                      jmp   n64_match_arbno_β
.Lx80_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 4
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
                        test             eax, eax;                            js    n64_match_arbno_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx80_6]
                        push             rcx
                        push             rax;                                 jmp   n66_match_fence0_α
.Lx80_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n64_match_arbno_β
n65_match_defer_β:      mov              r11, 31
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx80_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx80_12
                                                                              jmp   rax
.Lx80_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_fence0_α:     mov              r11, 32;                             jmp   n67_match_defer_α
n66_match_fence0_β:     mov              r11, 32;                             jmp   n60_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:      mov              r11, 33
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .Lx83_16
                        mov              rax, qword ptr [rdx + 0]
.Lx83_16:               test             rax, rax;                            jz    .Lx83_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx83_5]
                        push             rcx
                        lea              rcx, [rip + .Lx83_4]
                        push             rcx;                                 jmp   rax
.Lx83_4:                                                                      jmp   n60_match_arbno_as
.Lx83_5:                                                                      jmp   n60_match_arbno_af
.Lx83_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n60_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx83_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_arbno_as
.Lx83_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_arbno_af
n67_match_defer_β:      mov              r11, 33
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx83_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx83_12
                                                                              jmp   rax
.Lx83_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_defer_α:      mov              r11, 34
                        mov              rax, qword ptr [r9 + 512]            # group
                        mov              rdx, qword ptr [r9 + 520]
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
                        mov              rdx, qword ptr [r9 + 520];           jmp   .Lx84_10
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
.Lx84_10:               test             rax, rax;                            jz    .Lx84_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx84_5]
                        push             rcx
                        lea              rcx, [rip + .Lx84_4]
                        push             rcx;                                 jmp   rax
.Lx84_4:                                                                      jmp   n69_match_fence0_α
.Lx84_5:                                                                      jmp   n64_match_arbno_af
.Lx84_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]
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
                        test             eax, eax;                            js    n64_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx84_6]
                        push             rcx
                        push             rax;                                 jmp   n69_match_fence0_α
.Lx84_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n64_match_arbno_af
n68_match_defer_β:      mov              r11, 34
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx84_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx84_12
                                                                              jmp   rax
.Lx84_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n69_match_fence0_α:     mov              r11, 35;                             jmp   n64_match_arbno_as
n69_match_fence0_β:     mov              r11, 35;                             jmp   n64_match_arbno_af
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
n87_statement_begin_α:  mov              r11, 36
                        mov              r10, 1;                              jmp   n88_lit_string_α
n87_statement_begin_β:  mov              r11, 36;                             jmp   n91_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_call_α
.Lx707_0:               .quad            .Lx707_0_s
.Lx707_0_s:             .string          "list(n,a)"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             sub              rsp, 16
                        mov              r11, 38
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd709:            .string          "DATA"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd709]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262164
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx708_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Lx708_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_statement_end_α
n89_call_β:             mov              r11, 38
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 39
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n91_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListValue(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 40
                        mov              r10, 2;                              jmp   n92_define_α
n91_statement_begin_β:  mov              r11, 40;                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n92_define_α:           mov              r11, 41
                        mov              rdi, qword ptr [rip + .Lx715_0]
                        mov              rsi, qword ptr [rip + .Lx715_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n115_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx715_0]
                        lea              rsi, [rip + ListValue_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_statement_end_α
n92_define_β:           mov              r11, 41;                             jmp   n91_statement_begin_β
.Lx715_0:               .quad            .Lx715_0_s
.Lx715_0_s:             .string          "ListValue"
.Lx715_1:               .quad            .Lx715_1_s
.Lx715_1_s:             .string          "x,place"
                                                                              jmp   .Lx716_245
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
                        cmp              rdx, 0;                              jbe   .Lx716_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx716_41
.Lx716_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx716_41:              cmp              rdx, 1;                              jbe   .Lx716_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx716_42
.Lx716_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx716_42:              lea              rcx, [rip + ListValue_γ]
                        lea              rax, [rip + ListValue_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n115_statement_begin_α]; jmp   rax
ListValue_γ:            mov              rdi, qword ptr [r9 + 0]              # ListValue
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx716_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx716_110
.Lx716_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx716_110:             cmp              rdx, 1;                              jbe   .Lx716_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx716_111
.Lx716_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx716_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx716_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx716_180
.Lx716_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx716_180:             cmp              rdx, 1;                              jbe   .Lx716_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx716_181
.Lx716_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx716_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx716_245:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 42
                        mov              r10, 2;                              jmp   n94_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListName(x,place)')
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 43
                        mov              r10, 3;                              jmp   n95_define_α
n94_statement_begin_β:  mov              r11, 43;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_define_α:           mov              r11, 44
                        mov              rdi, qword ptr [rip + .Lx722_0]
                        mov              rsi, qword ptr [rip + .Lx722_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n135_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx722_0]
                        lea              rsi, [rip + ListName_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_statement_end_α
n95_define_β:           mov              r11, 44;                             jmp   n94_statement_begin_β
.Lx722_0:               .quad            .Lx722_0_s
.Lx722_0_s:             .string          "ListName"
.Lx722_1:               .quad            .Lx722_1_s
.Lx722_1_s:             .string          "x,place"
                                                                              jmp   .Lx723_245
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
                        cmp              rdx, 0;                              jbe   .Lx723_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx723_41
.Lx723_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx723_41:              cmp              rdx, 1;                              jbe   .Lx723_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx723_42
.Lx723_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx723_42:              lea              rcx, [rip + ListName_γ]
                        lea              rax, [rip + ListName_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n135_statement_begin_α]; jmp   rax
ListName_γ:             mov              rdi, qword ptr [r9 + 48]             # ListName
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Lx723_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx723_110
.Lx723_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx723_110:             cmp              rdx, 1;                              jbe   .Lx723_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx723_111
.Lx723_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx723_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx723_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx723_180
.Lx723_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx723_180:             cmp              rdx, 1;                              jbe   .Lx723_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx723_181
.Lx723_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 40], rax
.Lx723_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx723_245:
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 45
                        mov              r10, 3;                              jmp   n97_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListAppend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 46
                        mov              r10, 4;                              jmp   n98_define_α
n97_statement_begin_β:  mov              r11, 46;                             jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_define_α:           mov              r11, 47
                        mov              rdi, qword ptr [rip + .Lx729_0]
                        mov              rsi, qword ptr [rip + .Lx729_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n154_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx729_0]
                        lea              rsi, [rip + ListAppend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_statement_end_α
n98_define_β:           mov              r11, 47;                             jmp   n97_statement_begin_β
.Lx729_0:               .quad            .Lx729_0_s
.Lx729_0_s:             .string          "ListAppend"
.Lx729_1:               .quad            .Lx729_1_s
.Lx729_1_s:             .string          "x,item"
                                                                              jmp   .Lx730_245
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
                        cmp              rdx, 0;                              jbe   .Lx730_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx730_41
.Lx730_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx730_41:              cmp              rdx, 1;                              jbe   .Lx730_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx730_42
.Lx730_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx730_42:              lea              rcx, [rip + ListAppend_γ]
                        lea              rax, [rip + ListAppend_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n154_statement_begin_α]; jmp   rax
ListAppend_γ:           mov              rdi, qword ptr [r9 + 64]             # ListAppend
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rdx, 0;                              jbe   .Lx730_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx730_110
.Lx730_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx730_110:             cmp              rdx, 1;                              jbe   .Lx730_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx730_111
.Lx730_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx730_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx730_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx730_180
.Lx730_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx730_180:             cmp              rdx, 1;                              jbe   .Lx730_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx730_181
.Lx730_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx730_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx730_245:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 48
                        mov              r10, 4;                              jmp   n100_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPrepend(x,item)')
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 49
                        mov              r10, 5;                              jmp   n101_define_α
n100_statement_begin_β: mov              r11, 49;                             jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_define_α:          mov              r11, 50
                        mov              rdi, qword ptr [rip + .Lx736_0]
                        mov              rsi, qword ptr [rip + .Lx736_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n162_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx736_0]
                        lea              rsi, [rip + ListPrepend_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n102_statement_end_α
n101_define_β:          mov              r11, 50;                             jmp   n100_statement_begin_β
.Lx736_0:               .quad            .Lx736_0_s
.Lx736_0_s:             .string          "ListPrepend"
.Lx736_1:               .quad            .Lx736_1_s
.Lx736_1_s:             .string          "x,item"
                                                                              jmp   .Lx737_245
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
                        cmp              rdx, 0;                              jbe   .Lx737_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx737_41
.Lx737_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx737_41:              cmp              rdx, 1;                              jbe   .Lx737_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx737_42
.Lx737_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx737_42:              lea              rcx, [rip + ListPrepend_γ]
                        lea              rax, [rip + ListPrepend_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n162_statement_begin_α]; jmp   rax
ListPrepend_γ:          mov              rdi, qword ptr [r9 + 96]             # ListPrepend
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rdx, 0;                              jbe   .Lx737_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx737_110
.Lx737_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx737_110:             cmp              rdx, 1;                              jbe   .Lx737_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx737_111
.Lx737_81:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx737_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx737_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx737_180
.Lx737_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx737_180:             cmp              rdx, 1;                              jbe   .Lx737_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx737_181
.Lx737_151:             mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Lx737_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx737_245:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 51
                        mov              r10, 5;                              jmp   n103_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListInsert(x,item,place)a,i,size')
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 52
                        mov              r10, 6;                              jmp   n104_define_α
n103_statement_begin_β: mov              r11, 52;                             jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_define_α:          mov              r11, 53
                        mov              rdi, qword ptr [rip + .Lx743_0]
                        mov              rsi, qword ptr [rip + .Lx743_1]
                        mov              edx, 6
                        mov              ecx, 3
                        mov              r8d, 0
                        lea              r9, [rip + n169_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx743_0]
                        lea              rsi, [rip + ListInsert_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_statement_end_α
n104_define_β:          mov              r11, 53;                             jmp   n103_statement_begin_β
.Lx743_0:               .quad            .Lx743_0_s
.Lx743_0_s:             .string          "ListInsert"
.Lx743_1:               .quad            .Lx743_1_s
.Lx743_1_s:             .string          "x,item,place,a,i,size"
                                                                              jmp   .Lx744_245
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
                        cmp              rdx, 0;                              jbe   .Lx744_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx744_41
.Lx744_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx744_41:              cmp              rdx, 1;                              jbe   .Lx744_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # item
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx744_42
.Lx744_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx744_42:              cmp              rdx, 2;                              jbe   .Lx744_12
                        mov              rdi, qword ptr [rcx + 40]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx744_43
.Lx744_12:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx744_43:              lea              rcx, [rip + ListInsert_γ]
                        lea              rax, [rip + ListInsert_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n169_statement_begin_α]; jmp   rax
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
                        cmp              rdx, 0;                              jbe   .Lx744_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx744_110
.Lx744_80:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx744_110:             cmp              rdx, 1;                              jbe   .Lx744_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx744_111
.Lx744_81:              mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx744_111:             cmp              rdx, 2;                              jbe   .Lx744_82
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx744_112
.Lx744_82:              mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx744_112:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx744_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx744_180
.Lx744_150:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 24], rax
.Lx744_180:             cmp              rdx, 1;                              jbe   .Lx744_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # item
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Lx744_181
.Lx744_151:             mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [r9 + 88], rax
.Lx744_181:             cmp              rdx, 2;                              jbe   .Lx744_152
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 40]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx744_182
.Lx744_152:             mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [r9 + 40], rax
.Lx744_182:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 144
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx744_245:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 54
                        mov              r10, 6;                              jmp   n106_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListRemove(x,place)i,size')
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α: mov              r11, 55
                        mov              r10, 7;                              jmp   n107_define_α
n106_statement_begin_β: mov              r11, 55;                             jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_define_α:          mov              r11, 56
                        mov              rdi, qword ptr [rip + .Lx750_0]
                        mov              rsi, qword ptr [rip + .Lx750_1]
                        mov              edx, 4
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + n346_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx750_0]
                        lea              rsi, [rip + ListRemove_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_statement_end_α
n107_define_β:          mov              r11, 56;                             jmp   n106_statement_begin_β
.Lx750_0:               .quad            .Lx750_0_s
.Lx750_0_s:             .string          "ListRemove"
.Lx750_1:               .quad            .Lx750_1_s
.Lx750_1_s:             .string          "x,place,i,size"
                                                                              jmp   .Lx751_245
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
                        cmp              rdx, 0;                              jbe   .Lx751_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx751_41
.Lx751_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx751_41:              cmp              rdx, 1;                              jbe   .Lx751_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 32]             # place
                        mov              qword ptr [r9 + 32], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 40]
                        mov              qword ptr [r9 + 40], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx751_42
.Lx751_11:              mov              rax, qword ptr [r9 + 32]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
.Lx751_42:              lea              rcx, [rip + ListRemove_γ]
                        lea              rax, [rip + ListRemove_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n346_statement_begin_α]; jmp   rax
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
                        cmp              rdx, 0;                              jbe   .Lx751_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx751_110
.Lx751_80:              mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx751_110:             cmp              rdx, 1;                              jbe   .Lx751_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx751_111
.Lx751_81:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx751_111:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx751_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx751_180
.Lx751_150:             mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 24], rax
.Lx751_180:             cmp              rdx, 1;                              jbe   .Lx751_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 40], rax;            jmp   .Lx751_181
.Lx751_151:             mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 40], rax
.Lx751_181:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 112
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx751_245:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 57
                        mov              r10, 7;                              jmp   n109_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListPop(x)')
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 58
                        mov              r10, 8;                              jmp   n110_define_α
n109_statement_begin_β: mov              r11, 58;                             jmp   n112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_define_α:          mov              r11, 59
                        mov              rdi, qword ptr [rip + .Lx757_0]
                        mov              rsi, qword ptr [rip + .Lx757_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n430_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx757_0]
                        lea              rsi, [rip + ListPop_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_statement_end_α
n110_define_β:          mov              r11, 59;                             jmp   n109_statement_begin_β
.Lx757_0:               .quad            .Lx757_0_s
.Lx757_0_s:             .string          "ListPop"
.Lx757_1:               .quad            .Lx757_1_s
.Lx757_1_s:             .string          "x"
                                                                              jmp   .Lx758_245
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
                        cmp              rdx, 0;                              jbe   .Lx758_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx758_41
.Lx758_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx758_41:              lea              rcx, [rip + ListPop_γ]
                        lea              rax, [rip + ListPop_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n430_statement_begin_α]; jmp   rax
ListPop_γ:              mov              rdi, qword ptr [r9 + 192]            # ListPop
                        mov              rsi, qword ptr [r9 + 200]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 192], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 200], rax
                        cmp              rdx, 0;                              jbe   .Lx758_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx758_110
.Lx758_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx758_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx758_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx758_180
.Lx758_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx758_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx758_245:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 60
                        mov              r10, 8;                              jmp   n112_statement_begin_α
#=======================================================================================================================
#                 DEFINE('ListSize(x)')                                   :(ListEnd)
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α: mov              r11, 61
                        mov              r10, 9;                              jmp   n113_define_α
n112_statement_begin_β: mov              r11, 61;                             jmp   n462_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_define_α:          mov              r11, 62
                        mov              rdi, qword ptr [rip + .Lx764_0]
                        mov              rsi, qword ptr [rip + .Lx764_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n437_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx764_0]
                        lea              rsi, [rip + ListSize_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_statement_end_α
n113_define_β:          mov              r11, 62;                             jmp   n112_statement_begin_β
.Lx764_0:               .quad            .Lx764_0_s
.Lx764_0_s:             .string          "ListSize"
.Lx764_1:               .quad            .Lx764_1_s
.Lx764_1_s:             .string          "x"
                                                                              jmp   .Lx765_245
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
                        cmp              rdx, 0;                              jbe   .Lx765_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # x
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx765_41
.Lx765_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx765_41:              lea              rcx, [rip + ListSize_γ]
                        lea              rax, [rip + ListSize_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n437_statement_begin_α]; jmp   rax
ListSize_γ:             mov              rdi, qword ptr [r9 + 208]            # ListSize
                        mov              rsi, qword ptr [r9 + 216]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 216], rax
                        cmp              rdx, 0;                              jbe   .Lx765_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx765_110
.Lx765_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx765_110:             mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx765_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # x
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx765_180
.Lx765_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx765_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx765_245:
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 63
                        mov              r10, 9;                              jmp   n462_statement_begin_α
#=======================================================================================================================
# ListValue       place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 64
                        mov              r10, 10;                             jmp   n116_var_α
n115_statement_begin_β: mov              r11, 64;                             jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_coerce_numeric_α
n117_lit_integer_β:     mov              r11, 66
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
.Lx771_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n118_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 67
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx773_1
                        cmp              al, 3;                               jne   .Lx773_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx773_0
.Lx773_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_coerce_numeric_α
.Lx773_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_coerce_numeric_α
n118_coerce_numeric_β:  mov              r11, 67
                        add              rsp, 16;                             jmp   n117_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n119_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 68
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx775_1
                        cmp              al, 3;                               jne   .Lx775_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx775_0
.Lx775_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_cmp_test_α
.Lx775_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_cmp_test_α
n119_coerce_numeric_β:  mov              r11, 68
                        add              rsp, 16;                             jmp   n118_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n120_cmp_test_α:        sub              rsp, 16
                        mov              r11, 69
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx777_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx777_239
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
.Lx777_239:                                                                   jmp   n121_var_α
.Lx777_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx777_240
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
.Lx777_240:                                                                   jmp   n121_var_α
n120_cmp_test_β:        mov              r11, 69
                        add              rsp, 16;                             jmp   n119_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_call_α
n121_var_β:             mov              r11, 70
                        add              rsp, 16;                             jmp   n120_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            sub              rsp, 16
                        mov              r11, 71
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd780:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd780]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx779_240
                        add              rsp, 16;                             jmp   n121_var_β
.Lx779_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_var_α
n122_call_β:            mov              r11, 71
                        add              rsp, 16;                             jmp   n121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_binop_α
n123_var_β:             mov              r11, 72
                        add              rsp, 32;                             jmp   n121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n124_binop_α:           sub              rsp, 16
                        mov              r11, 73
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx782_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx782_7
.Lx782_2:               and              edx, 1;                              jz    .Lx782_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx782_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx782_4
.Lx782_3:               movq             xmm0, rsi
.Lx782_4:               cmp              cl, 5;                               je    .Lx782_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx782_6
.Lx782_5:               movq             xmm1, rdi
.Lx782_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx782_7:                                                                     jmp   n125_assign_α
.Lx782_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx782_240
                        add              rsp, 16;                             jmp   n123_var_β
.Lx782_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:          mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 75
                        mov              r10, 10
                        add              rsp, 144;                            jmp   n127_statement_begin_α
#=======================================================================================================================
#                 ListValue       =   a(x)[place]                         :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α: mov              r11, 76
                        mov              r10, 11;                             jmp   n128_var_α
n127_statement_begin_β: mov              r11, 76;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_call_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:            sub              rsp, 16
                        mov              r11, 78
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd790:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd790]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx789_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
.Lx789_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n130_var_α
n129_call_β:            mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_subscript_α
n130_var_β:             mov              r11, 79
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n127_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n131_subscript_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx792_240
                        add              rsp, 16;                             jmp   n130_var_β
.Lx792_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_deref_α
n131_subscript_β:       mov              r11, 80
                        add              rsp, 16;                             jmp   n130_var_β
#-----------------------------------------------------------------------------------------------------------------------
n132_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lx793_240
                        add              rsp, 16;                             jmp   n131_subscript_β
.Lx793_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ListValue
                        mov              qword ptr [r9 + 8], rdx;             jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 83
                        mov              r10, 11
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListName        place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α: mov              r11, 84
                        mov              r10, 12;                             jmp   n136_var_α
n135_statement_begin_β: mov              r11, 84;                             jmp   n147_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_coerce_numeric_α
n137_lit_integer_β:     mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx800_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n138_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 87
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx802_1
                        cmp              al, 3;                               jne   .Lx802_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx802_0
.Lx802_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_coerce_numeric_α
.Lx802_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_coerce_numeric_α
n138_coerce_numeric_β:  mov              r11, 87
                        add              rsp, 16;                             jmp   n137_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n139_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 88
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx804_1
                        cmp              al, 3;                               jne   .Lx804_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx804_0
.Lx804_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_cmp_test_α
.Lx804_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_cmp_test_α
n139_coerce_numeric_β:  mov              r11, 88
                        add              rsp, 16;                             jmp   n138_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n140_cmp_test_α:        sub              rsp, 16
                        mov              r11, 89
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx806_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx806_239
                        add              rsp, 16;                             jmp   n139_coerce_numeric_β
.Lx806_239:                                                                   jmp   n141_var_α
.Lx806_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx806_240
                        add              rsp, 16;                             jmp   n139_coerce_numeric_β
.Lx806_240:                                                                   jmp   n141_var_α
n140_cmp_test_β:        mov              r11, 89
                        add              rsp, 16;                             jmp   n139_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_call_α
n141_var_β:             mov              r11, 90
                        add              rsp, 16;                             jmp   n140_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
                        mov              r11, 91
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd809:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd809]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx808_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx808_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_var_α
n142_call_β:            mov              r11, 91
                        add              rsp, 16;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n144_binop_α
n143_var_β:             mov              r11, 92
                        add              rsp, 32;                             jmp   n141_var_β
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:           sub              rsp, 16
                        mov              r11, 93
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx811_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx811_7
.Lx811_2:               and              edx, 1;                              jz    .Lx811_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx811_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx811_4
.Lx811_3:               movq             xmm0, rsi
.Lx811_4:               cmp              cl, 5;                               je    .Lx811_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx811_6
.Lx811_5:               movq             xmm1, rdi
.Lx811_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx811_7:                                                                     jmp   n145_assign_α
.Lx811_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx811_240
                        add              rsp, 16;                             jmp   n143_var_β
.Lx811_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 95
                        mov              r10, 12
                        add              rsp, 144;                            jmp   n147_statement_begin_α
#=======================================================================================================================
#                 ListName        =   .a(x)[place]                        :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 96
                        mov              r10, 13;                             jmp   n148_var_α
n147_statement_begin_β: mov              r11, 96;                             jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_call_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            sub              rsp, 16
                        mov              r11, 98
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd819:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd819]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx818_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
.Lx818_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_var_α
n149_call_β:            mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_subscript_α
n150_var_β:             mov              r11, 99
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n151_subscript_α:       sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx821_240
                        add              rsp, 16;                             jmp   n150_var_β
.Lx821_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ListName
                        mov              qword ptr [r9 + 56], rdx;            jmp   n153_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 102
                        mov              r10, 13
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListAppend      ListAppend      =   ListInsert(x, item, n(x))     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 103
                        mov              r10, 14;                             jmp   n155_var_α
n154_statement_begin_β: mov              r11, 103;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n157_var_α
n156_var_β:             mov              r11, 105
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n154_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_call_α
n157_var_β:             mov              r11, 106
                        add              rsp, 16;                             jmp   n156_var_β
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            sub              rsp, 16
                        mov              r11, 107
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd831:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd831]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx830_240
                        add              rsp, 16;                             jmp   n157_var_β
.Lx830_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_call_α
n158_call_β:            mov              r11, 107
                        add              rsp, 16;                             jmp   n157_var_β
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 108
                        lea              rcx, [rip + .Lsig833z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig833z:              .quad            3
                        .quad            .Lx833_2
                        .quad            .Lx833_2
                        .quad            64
                        .quad            48
                        .quad            16
.Lx833_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx833_29
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
.Lx833_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx833_240
                        add              rsp, 32;                             jmp   n157_var_β
.Lx833_240:                                                                   jmp   n160_assign_α
n159_call_β:            mov              r11, 108;                            jmp   n157_var_β
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ListAppend
                        mov              qword ptr [r9 + 72], rdx;            jmp   n161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 110
                        mov              r10, 14
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
# ListPrepend     ListPrepend     =   ListInsert(x, item, 0)              :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 111
                        mov              r10, 15;                             jmp   n163_var_α
n162_statement_begin_β: mov              r11, 111;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_lit_integer_α
n164_var_β:             mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
n165_lit_integer_β:     mov              r11, 114
                        add              rsp, 16;                             jmp   n164_var_β
.Lx841_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 115
                        lea              rcx, [rip + .Lsig843z]
                        lea              rax, [rip + ListInsert_α];           jmp   rax
.Lsig843z:              .quad            3
                        .quad            .Lx843_2
                        .quad            .Lx843_2
                        .quad            48
                        .quad            32
                        .quad            16
.Lx843_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx843_29
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
.Lx843_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx843_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lx843_240:                                                                   jmp   n167_assign_α
n166_call_β:            mov              r11, 115;                            jmp   n165_lit_integer_β
.Lx843_0:               .quad            .Lx843_0_s
.Lx843_0_s:             .string          "ListInsert"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ListPrepend
                        mov              qword ptr [r9 + 104], rdx;           jmp   n168_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 117
                        mov              r10, 15
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListInsert      ListInsert      =   x
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α: mov              r11, 118
                        mov              r10, 16;                             jmp   n170_var_α
n169_statement_begin_β: mov              r11, 118;                            jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ListInsert
                        mov              qword ptr [r9 + 120], rdx;           jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 121
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n173_statement_begin_α
#=======================================================================================================================
#                 size            =   ListSize(x)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 122
                        mov              r10, 17;                             jmp   n174_var_α
n173_statement_begin_β: mov              r11, 122;                            jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             sub              rsp, 16
                        mov              r11, 123
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_call_α
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:            sub              rsp, 16
                        mov              r11, 124
                        lea              rcx, [rip + .Lsig857z]
                        lea              rax, [rip + ListSize_α];             jmp   rax
.Lsig857z:              .quad            1
                        .quad            .Lx857_2
                        .quad            .Lx857_2
                        .quad            16
.Lx857_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx857_29
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
.Lx857_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx857_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n173_statement_begin_β
.Lx857_240:                                                                   jmp   n176_assign_α
n175_call_β:            mov              r11, 124;                            jmp   n173_statement_begin_β
.Lx857_0:               .quad            .Lx857_0_s
.Lx857_0_s:             .string          "ListSize"
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 125
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # size
                        mov              qword ptr [r9 + 168], rdx;           jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 126
                        mov              r10, 17
                        add              rsp, 32;                             jmp   n178_statement_begin_α
#=======================================================================================================================
#                 place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 127
                        mov              r10, 18;                             jmp   n179_var_α
n178_statement_begin_β: mov              r11, 127;                            jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_coerce_numeric_α
n180_lit_integer_β:     mov              r11, 129
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
.Lx864_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n181_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 130
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx866_1
                        cmp              al, 3;                               jne   .Lx866_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx866_0
.Lx866_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_coerce_numeric_α
.Lx866_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_coerce_numeric_α
n181_coerce_numeric_β:  mov              r11, 130
                        add              rsp, 16;                             jmp   n180_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n182_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 131
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx868_1
                        cmp              al, 3;                               jne   .Lx868_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx868_0
.Lx868_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_cmp_test_α
.Lx868_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n183_cmp_test_α
n182_coerce_numeric_β:  mov              r11, 131
                        add              rsp, 16;                             jmp   n181_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n183_cmp_test_α:        sub              rsp, 16
                        mov              r11, 132
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx870_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx870_239
                        add              rsp, 16;                             jmp   n182_coerce_numeric_β
.Lx870_239:                                                                   jmp   n184_var_α
.Lx870_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx870_240
                        add              rsp, 16;                             jmp   n182_coerce_numeric_β
.Lx870_240:                                                                   jmp   n184_var_α
n183_cmp_test_β:        mov              r11, 132
                        add              rsp, 16;                             jmp   n182_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_call_α
n184_var_β:             mov              r11, 133
                        add              rsp, 16;                             jmp   n183_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            sub              rsp, 16
                        mov              r11, 134
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd873:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd873]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx872_240
                        add              rsp, 16;                             jmp   n184_var_β
.Lx872_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_var_α
n185_call_β:            mov              r11, 134
                        add              rsp, 16;                             jmp   n184_var_β
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              r11, 135
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_binop_α
n186_var_β:             mov              r11, 135
                        add              rsp, 32;                             jmp   n184_var_β
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:           sub              rsp, 16
                        mov              r11, 136
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx875_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx875_7
.Lx875_2:               and              edx, 1;                              jz    .Lx875_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx875_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx875_4
.Lx875_3:               movq             xmm0, rsi
.Lx875_4:               cmp              cl, 5;                               je    .Lx875_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx875_6
.Lx875_5:               movq             xmm1, rdi
.Lx875_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx875_7:                                                                     jmp   n188_assign_α
.Lx875_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx875_240
                        add              rsp, 16;                             jmp   n186_var_β
.Lx875_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n188_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n189_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   mov              r11, 138
                        mov              r10, 18
                        add              rsp, 144;                            jmp   n190_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 139
                        mov              r10, 19;                             jmp   n191_var_α
n190_statement_begin_β: mov              r11, 139;                            jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_coerce_numeric_α
n192_lit_integer_β:     mov              r11, 141
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
.Lx882_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n193_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 142
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx884_1
                        cmp              al, 3;                               jne   .Lx884_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx884_0
.Lx884_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_coerce_numeric_α
.Lx884_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_coerce_numeric_α
n193_coerce_numeric_β:  mov              r11, 142
                        add              rsp, 16;                             jmp   n192_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n194_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx886_1
                        cmp              al, 3;                               jne   .Lx886_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx886_0
.Lx886_1:               mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_cmp_test_α
.Lx886_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_cmp_test_α
n194_coerce_numeric_β:  mov              r11, 143
                        add              rsp, 16;                             jmp   n193_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n195_cmp_test_α:        sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx888_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx888_239
                        add              rsp, 16;                             jmp   n194_coerce_numeric_β
.Lx888_239:                                                                   jmp   n196_statement_end_α
.Lx888_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx888_240
                        add              rsp, 16;                             jmp   n194_coerce_numeric_β
.Lx888_240:                                                                   jmp   n196_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   mov              r11, 145
                        mov              r10, 19
                        add              rsp, 80;                             jmp   n197_statement_begin_α
#=======================================================================================================================
#                 LE(place, n(x))                                         :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_begin_α: mov              r11, 146
                        mov              r10, 20;                             jmp   n198_var_α
n197_statement_begin_β: mov              r11, 146;                            jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             sub              rsp, 16
                        mov              r11, 148
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_call_α
n199_var_β:             mov              r11, 148
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n197_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            sub              rsp, 16
                        mov              r11, 149
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd896:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd896]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx895_240
                        add              rsp, 16;                             jmp   n199_var_β
.Lx895_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_coerce_numeric_α
n200_call_β:            mov              r11, 149
                        add              rsp, 16;                             jmp   n199_var_β
#-----------------------------------------------------------------------------------------------------------------------
n201_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 150
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx898_1
                        cmp              al, 3;                               jne   .Lx898_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx898_0
.Lx898_1:               mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_coerce_numeric_α
.Lx898_0:               lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_coerce_numeric_α
n201_coerce_numeric_β:  mov              r11, 150
                        add              rsp, 32;                             jmp   n199_var_β
#-----------------------------------------------------------------------------------------------------------------------
n202_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 151
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx900_1
                        cmp              al, 3;                               jne   .Lx900_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx900_0
.Lx900_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_cmp_test_α
.Lx900_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_cmp_test_α
n202_coerce_numeric_β:  mov              r11, 151
                        add              rsp, 16;                             jmp   n201_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n203_cmp_test_α:        sub              rsp, 16
                        mov              r11, 152
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx902_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lx902_239
                        add              rsp, 16;                             jmp   n202_coerce_numeric_β
.Lx902_239:                                                                   jmp   n204_statement_end_α
.Lx902_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lx902_240
                        add              rsp, 16;                             jmp   n202_coerce_numeric_β
.Lx902_240:                                                                   jmp   n204_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 153
                        mov              r10, 20
                        add              rsp, 96;                             jmp   n205_statement_begin_α
#=======================================================================================================================
#                 LT(n(x), size)                                          :F(ListInsert4)
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 154
                        mov              r10, 21;                             jmp   n206_var_α
n205_statement_begin_β: mov              r11, 154;                            jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_call_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            sub              rsp, 16
                        mov              r11, 156
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd909:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd909]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx908_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
.Lx908_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
n207_call_β:            mov              r11, 156
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 157
                        mov              rax, qword ptr [r9 + 160]            # size
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_coerce_numeric_α
n208_var_β:             mov              r11, 157
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 158
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx912_1
                        cmp              al, 3;                               jne   .Lx912_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx912_0
.Lx912_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_coerce_numeric_α
.Lx912_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_coerce_numeric_α
n209_coerce_numeric_β:  mov              r11, 158
                        add              rsp, 16;                             jmp   n208_var_β
#-----------------------------------------------------------------------------------------------------------------------
n210_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 159
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx914_1
                        cmp              al, 3;                               jne   .Lx914_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx914_0
.Lx914_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_cmp_test_α
.Lx914_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n211_cmp_test_α
n210_coerce_numeric_β:  mov              r11, 159
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n211_cmp_test_α:        sub              rsp, 16
                        mov              r11, 160
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx916_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx916_239
                        add              rsp, 16;                             jmp   n210_coerce_numeric_β
.Lx916_239:                                                                   jmp   n212_statement_end_α
.Lx916_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx916_240
                        add              rsp, 16;                             jmp   n210_coerce_numeric_β
.Lx916_240:                                                                   jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 161
                        mov              r10, 21
                        add              rsp, 96;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#                 i               =   n(x) + 1
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 162
                        mov              r10, 22;                             jmp   n214_var_α
n213_statement_begin_β: mov              r11, 162;                            jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_call_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            sub              rsp, 16
                        mov              r11, 164
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd923:            .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd923]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx922_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx922_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_lit_integer_α
n215_call_β:            mov              r11, 164
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_integer_α:     sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_binop_α
n216_lit_integer_β:     mov              r11, 165
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n213_statement_begin_β
.Lx924_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              r11, 166
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx925_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx925_7
.Lx925_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx925_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx925_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx925_4
.Lx925_3:               movq             xmm0, rsi
.Lx925_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx925_7:                                                                     jmp   n218_assign_α
.Lx925_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx925_240
                        add              rsp, 16;                             jmp   n216_lit_integer_β
.Lx925_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 167
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n219_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   mov              r11, 168
                        mov              r10, 22
                        add              rsp, 64;                             jmp   n220_statement_begin_α
#=======================================================================================================================
# ListInsert1     i               =   GT(i, place + 1) i - 1              :F(ListInsert2)
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α: mov              r11, 169
                        mov              r10, 23;                             jmp   n221_var_α
n220_statement_begin_β: mov              r11, 169;                            jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 171
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_lit_integer_α
n222_var_β:             mov              r11, 171
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx933_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_binop_α
n223_lit_integer_β:     mov              r11, 172
                        add              rsp, 16;                             jmp   n222_var_β
.Lx933_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           sub              rsp, 16
                        mov              r11, 173
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx934_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx934_7
.Lx934_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx934_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx934_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx934_4
.Lx934_3:               movq             xmm0, rsi
.Lx934_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx934_7:                                                                     jmp   n225_coerce_numeric_α
.Lx934_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx934_240
                        add              rsp, 16;                             jmp   n223_lit_integer_β
.Lx934_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_coerce_numeric_α
n224_binop_β:           mov              r11, 173
                        add              rsp, 16;                             jmp   n223_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n225_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 174
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx936_1
                        cmp              al, 3;                               jne   .Lx936_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx936_0
.Lx936_1:               mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_coerce_numeric_α
.Lx936_0:               lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_coerce_numeric_α
n225_coerce_numeric_β:  mov              r11, 174
                        add              rsp, 16;                             jmp   n224_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 175
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx938_1
                        cmp              al, 3;                               jne   .Lx938_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx938_0
.Lx938_1:               mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_cmp_test_α
.Lx938_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_cmp_test_α
n226_coerce_numeric_β:  mov              r11, 175
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n227_cmp_test_α:        sub              rsp, 16
                        mov              r11, 176
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx940_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lx940_239
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lx940_239:                                                                   jmp   n228_var_α
.Lx940_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jg    .Lx940_240
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lx940_240:                                                                   jmp   n228_var_α
n227_cmp_test_β:        mov              r11, 176
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_lit_integer_α
n228_var_β:             mov              r11, 177
                        add              rsp, 16;                             jmp   n227_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx942_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_binop_α
n229_lit_integer_β:     mov              r11, 178
                        add              rsp, 16;                             jmp   n228_var_β
.Lx942_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           sub              rsp, 16
                        mov              r11, 179
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx943_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx943_7
.Lx943_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx943_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx943_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx943_4
.Lx943_3:               movq             xmm0, rsi
.Lx943_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx943_7:                                                                     jmp   n231_assign_α
.Lx943_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx943_240
                        add              rsp, 16;                             jmp   n229_lit_integer_β
.Lx943_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n231_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n232_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:   mov              r11, 181
                        mov              r10, 23
                        add              rsp, 160;                            jmp   n233_statement_begin_α
#=======================================================================================================================
#                 a(x)[i]         =   a(x)[i - 1]                         :(ListInsert1)
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α: mov              r11, 182
                        mov              r10, 24;                             jmp   n234_var_α
n233_statement_begin_β: mov              r11, 182;                            jmp   n220_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_call_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_α:            sub              rsp, 16
                        mov              r11, 184
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd951:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd951]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx950_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
.Lx950_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
n235_call_β:            mov              r11, 184
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_subscript_α
n236_var_β:             mov              r11, 185
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n233_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:       sub              rsp, 16
                        mov              r11, 186
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx953_240
                        add              rsp, 16;                             jmp   n236_var_β
.Lx953_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_var_α
n237_subscript_β:       mov              r11, 186
                        add              rsp, 16;                             jmp   n236_var_β
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_call_α
n238_var_β:             mov              r11, 187
                        add              rsp, 16;                             jmp   n237_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            sub              rsp, 16
                        mov              r11, 188
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd956:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd956]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx955_240
                        add              rsp, 16;                             jmp   n238_var_β
.Lx955_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
n239_call_β:            mov              r11, 188
                        add              rsp, 16;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 189
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_lit_integer_α
n240_var_β:             mov              r11, 189
                        add              rsp, 32;                             jmp   n238_var_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_binop_α
n241_lit_integer_β:     mov              r11, 190
                        add              rsp, 16;                             jmp   n240_var_β
.Lx958_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 191
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx959_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx959_7
.Lx959_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx959_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx959_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx959_4
.Lx959_3:               movq             xmm0, rsi
.Lx959_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx959_7:                                                                     jmp   n243_subscript_α
.Lx959_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx959_240
                        add              rsp, 16;                             jmp   n241_lit_integer_β
.Lx959_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_subscript_α
n242_binop_β:           mov              r11, 191
                        add              rsp, 16;                             jmp   n241_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n243_subscript_α:       sub              rsp, 16
                        mov              r11, 192
                        mov              rdi, qword ptr [rsp + 64]            # call
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
                        cmp              al, 104;                             jne   .Lx960_240
                        add              rsp, 16;                             jmp   n242_binop_β
.Lx960_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_deref_α
n243_subscript_β:       mov              r11, 192
                        add              rsp, 16;                             jmp   n242_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n244_deref_α:           sub              rsp, 16
                        mov              r11, 193
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
                        cmp              al, 104;                             jne   .Lx961_240
                        add              rsp, 16;                             jmp   n243_subscript_β
.Lx961_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_assign_var_α
n244_deref_β:           mov              r11, 193
                        add              rsp, 16;                             jmp   n243_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_var_α:      sub              rsp, 16
                        mov              r11, 194
                        mov              rdi, qword ptr [rsp + 128]           # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx962_240
                        add              rsp, 16;                             jmp   n244_deref_β
.Lx962_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 195
                        mov              r10, 24
                        add              rsp, 192;                            jmp   n220_statement_begin_α
#=======================================================================================================================
# ListInsert2     a(x)[i - 1]     =   item                                :(ListInsert9)
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 196
                        mov              r10, 25;                             jmp   n248_var_α
n247_statement_begin_β: mov              r11, 196;                            jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_call_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 198
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd969:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd969]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx968_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
.Lx968_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_var_α
n249_call_β:            mov              r11, 198
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_integer_α
n250_var_β:             mov              r11, 199
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n247_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_binop_α
n251_lit_integer_β:     mov              r11, 200
                        add              rsp, 16;                             jmp   n250_var_β
.Lx971_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx972_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx972_7
.Lx972_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx972_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx972_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx972_4
.Lx972_3:               movq             xmm0, rsi
.Lx972_4:               cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx972_7:                                                                     jmp   n253_subscript_α
.Lx972_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx972_240
                        add              rsp, 16;                             jmp   n251_lit_integer_β
.Lx972_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_subscript_α
n252_binop_β:           mov              r11, 201
                        add              rsp, 16;                             jmp   n251_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n253_subscript_α:       sub              rsp, 16
                        mov              r11, 202
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx973_240
                        add              rsp, 16;                             jmp   n252_binop_β
.Lx973_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_var_α
n253_subscript_β:       mov              r11, 202
                        add              rsp, 16;                             jmp   n252_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              r11, 203
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_assign_var_α
n254_var_β:             mov              r11, 203
                        add              rsp, 16;                             jmp   n253_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_var_α:      sub              rsp, 16
                        mov              r11, 204
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx975_240
                        add              rsp, 16;                             jmp   n254_var_β
.Lx975_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 205
                        mov              r10, 25
                        add              rsp, 128;                            jmp   n337_statement_begin_α
#=======================================================================================================================
# ListInsert4     a               =   ARRAY('0:' (IDENT(a(x)) 0, size * 2 - 1))
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α: mov              r11, 206
                        mov              r10, 26;                             jmp   n258_var_α
n257_statement_begin_β: mov              r11, 206;                            jmp   n266_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_call_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            sub              rsp, 16
                        mov              r11, 208
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd982:            .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd982]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx981_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
.Lx981_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_lit_string_α
n259_call_β:            mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n257_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_ident_α
n260_lit_string_β:      mov              r11, 209
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n257_statement_begin_β
.Lx983_0:               .quad            .Lx983_0_s
.Lx983_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n261_ident_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              rdi, qword ptr [rsp + 32]            # call
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
                        test             eax, eax;                            jne   .Lx985_240
                        add              rsp, 16;                             jmp   n260_lit_string_β
.Lx985_240:                                                                   jmp   n262_lit_string_α
n261_ident_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n260_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_call_α
n262_lit_string_β:      mov              r11, 211
                        add              rsp, 16;                             jmp   n261_ident_β
.Lx986_0:               .quad            .Lx986_0_s
.Lx986_0_s:             .string          "0:0"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        mov              r11, 212
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd988:            .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd988]
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
                        cmp              al, 104;                             jne   .Lx987_240
                        add              rsp, 16;                             jmp   n262_lit_string_β
.Lx987_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_assign_α
n263_call_β:            mov              r11, 212
                        add              rsp, 16;                             jmp   n262_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              r11, 213
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # a
                        mov              qword ptr [r9 + 136], rdx;           jmp   n265_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   mov              r11, 214
                        mov              r10, 26
                        add              rsp, 96;                             jmp   n266_statement_begin_α
#=======================================================================================================================
#                 i               =   -1
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_begin_α: mov              r11, 215
                        mov              r10, 27;                             jmp   n267_lit_integer_α
n266_statement_begin_β: mov              r11, 215;                            jmp   n271_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_unop_α
.Lx994_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n268_unop_α:            sub              rsp, 16
                        mov              r11, 217
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 218
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n270_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 219
                        mov              r10, 27
                        add              rsp, 32;                             jmp   n271_statement_begin_α
#=======================================================================================================================
# ListInsert5     i               =   LT(i, place - 1) i + 1              :F(ListInsert6)
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_begin_α: mov              r11, 220
                        mov              r10, 28;                             jmp   n272_var_α
n271_statement_begin_β: mov              r11, 220;                            jmp   n295_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 222
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_lit_integer_α
n273_var_β:             mov              r11, 222
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n271_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     sub              rsp, 16
                        mov              r11, 223
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_binop_α
n274_lit_integer_β:     mov              r11, 223
                        add              rsp, 16;                             jmp   n273_var_β
.Lx1003_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n275_binop_α:           sub              rsp, 16
                        mov              r11, 224
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1004_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1004_7
.Lx1004_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1004_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1004_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1004_4
.Lx1004_3:              movq             xmm0, rsi
.Lx1004_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1004_7:                                                                    jmp   n276_coerce_numeric_α
.Lx1004_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1004_240
                        add              rsp, 16;                             jmp   n274_lit_integer_β
.Lx1004_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n276_coerce_numeric_α
n275_binop_β:           mov              r11, 224
                        add              rsp, 16;                             jmp   n274_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n276_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 225
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 5;                               je    .Lx1006_1
                        cmp              al, 3;                               jne   .Lx1006_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1006_0
.Lx1006_1:              mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_coerce_numeric_α
.Lx1006_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n277_coerce_numeric_α
n276_coerce_numeric_β:  mov              r11, 225
                        add              rsp, 16;                             jmp   n275_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n277_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1008_1
                        cmp              al, 3;                               jne   .Lx1008_0
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 3;                               jne   .Lx1008_0
.Lx1008_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_cmp_test_α
.Lx1008_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 80]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_cmp_test_α
n277_coerce_numeric_β:  mov              r11, 226
                        add              rsp, 16;                             jmp   n276_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n278_cmp_test_α:        sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1010_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1010_239
                        add              rsp, 16;                             jmp   n277_coerce_numeric_β
.Lx1010_239:                                                                  jmp   n279_var_α
.Lx1010_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1010_240
                        add              rsp, 16;                             jmp   n277_coerce_numeric_β
.Lx1010_240:                                                                  jmp   n279_var_α
n278_cmp_test_β:        mov              r11, 227
                        add              rsp, 16;                             jmp   n277_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_lit_integer_α
n279_var_β:             mov              r11, 228
                        add              rsp, 16;                             jmp   n278_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_binop_α
n280_lit_integer_β:     mov              r11, 229
                        add              rsp, 16;                             jmp   n279_var_β
.Lx1012_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1013_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1013_7
.Lx1013_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1013_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1013_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1013_4
.Lx1013_3:              movq             xmm0, rsi
.Lx1013_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1013_7:                                                                    jmp   n282_assign_α
.Lx1013_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1013_240
                        add              rsp, 16;                             jmp   n280_lit_integer_β
.Lx1013_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n282_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n283_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   mov              r11, 232
                        mov              r10, 28
                        add              rsp, 160;                            jmp   n284_statement_begin_α
#=======================================================================================================================
#                 a[i]            =   a(x)[i]                             :(ListInsert5)
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_begin_α: mov              r11, 233
                        mov              r10, 29;                             jmp   n285_var_α
n284_statement_begin_β: mov              r11, 233;                            jmp   n271_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_subscript_α
n286_var_β:             mov              r11, 235
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n284_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n287_subscript_α:       sub              rsp, 16
                        mov              r11, 236
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
                        cmp              al, 104;                             jne   .Lx1021_240
                        add              rsp, 16;                             jmp   n286_var_β
.Lx1021_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_var_α
n287_subscript_β:       mov              r11, 236
                        add              rsp, 16;                             jmp   n286_var_β
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_call_α
n288_var_β:             mov              r11, 237
                        add              rsp, 16;                             jmp   n287_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            sub              rsp, 16
                        mov              r11, 238
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1024:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1024]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1023_240
                        add              rsp, 16;                             jmp   n288_var_β
.Lx1023_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_var_α
n289_call_β:            mov              r11, 238
                        add              rsp, 16;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_subscript_α
n290_var_β:             mov              r11, 239
                        add              rsp, 32;                             jmp   n288_var_β
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
                        mov              r11, 240
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1026_240
                        add              rsp, 16;                             jmp   n290_var_β
.Lx1026_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n292_deref_α
n291_subscript_β:       mov              r11, 240
                        add              rsp, 16;                             jmp   n290_var_β
#-----------------------------------------------------------------------------------------------------------------------
n292_deref_α:           sub              rsp, 16
                        mov              r11, 241
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
                        cmp              al, 104;                             jne   .Lx1027_240
                        add              rsp, 16;                             jmp   n291_subscript_β
.Lx1027_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_assign_var_α
n292_deref_β:           mov              r11, 241
                        add              rsp, 16;                             jmp   n291_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n293_assign_var_α:      sub              rsp, 16
                        mov              r11, 242
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1028_240
                        add              rsp, 16;                             jmp   n292_deref_β
.Lx1028_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_end_α:   mov              r11, 243
                        mov              r10, 29
                        add              rsp, 144;                            jmp   n271_statement_begin_α
#=======================================================================================================================
# ListInsert6     a[i + 1]        =   item
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_begin_α: mov              r11, 244
                        mov              r10, 30;                             jmp   n296_var_α
n295_statement_begin_β: mov              r11, 244;                            jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_lit_integer_α
n297_var_β:             mov              r11, 246
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n295_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:     sub              rsp, 16
                        mov              r11, 247
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_binop_α
n298_lit_integer_β:     mov              r11, 247
                        add              rsp, 16;                             jmp   n297_var_β
.Lx1035_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:           sub              rsp, 16
                        mov              r11, 248
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1036_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1036_7
.Lx1036_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1036_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1036_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1036_4
.Lx1036_3:              movq             xmm0, rsi
.Lx1036_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1036_7:                                                                    jmp   n300_subscript_α
.Lx1036_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1036_240
                        add              rsp, 16;                             jmp   n298_lit_integer_β
.Lx1036_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n300_subscript_α
n299_binop_β:           mov              r11, 248
                        add              rsp, 16;                             jmp   n298_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n300_subscript_α:       sub              rsp, 16
                        mov              r11, 249
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1037_240
                        add              rsp, 16;                             jmp   n299_binop_β
.Lx1037_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n301_var_α
n300_subscript_β:       mov              r11, 249
                        add              rsp, 16;                             jmp   n299_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              r11, 250
                        mov              rax, qword ptr [r9 + 80]             # item
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_assign_var_α
n301_var_β:             mov              r11, 250
                        add              rsp, 16;                             jmp   n300_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_var_α:      sub              rsp, 16
                        mov              r11, 251
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx1039_240
                        add              rsp, 16;                             jmp   n301_var_β
.Lx1039_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n303_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   mov              r11, 252
                        mov              r10, 30
                        add              rsp, 112;                            jmp   n304_statement_begin_α
#=======================================================================================================================
# ListInsert7     i               =   LT(i, n(x) - 1) i + 1               :F(ListInsert8)
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_begin_α: mov              r11, 253
                        mov              r10, 31;                             jmp   n305_var_α
n304_statement_begin_β: mov              r11, 253;                            jmp   n331_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_call_α
n306_var_β:             mov              r11, 255
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n304_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            sub              rsp, 16
                        mov              r11, 256
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1047:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1047]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1046_240
                        add              rsp, 16;                             jmp   n306_var_β
.Lx1046_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_lit_integer_α
n307_call_β:            mov              r11, 256
                        add              rsp, 16;                             jmp   n306_var_β
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_binop_α
n308_lit_integer_β:     mov              r11, 257
                        add              rsp, 32;                             jmp   n306_var_β
.Lx1048_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           sub              rsp, 16
                        mov              r11, 258
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1049_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1049_7
.Lx1049_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1049_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1049_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1049_4
.Lx1049_3:              movq             xmm0, rsi
.Lx1049_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1049_7:                                                                    jmp   n310_coerce_numeric_α
.Lx1049_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1049_240
                        add              rsp, 16;                             jmp   n308_lit_integer_β
.Lx1049_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n310_coerce_numeric_α
n309_binop_β:           mov              r11, 258
                        add              rsp, 16;                             jmp   n308_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n310_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 259
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1051_1
                        cmp              al, 3;                               jne   .Lx1051_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1051_0
.Lx1051_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_coerce_numeric_α
.Lx1051_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_coerce_numeric_α
n310_coerce_numeric_β:  mov              r11, 259
                        add              rsp, 16;                             jmp   n309_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n311_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 260
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1053_1
                        cmp              al, 3;                               jne   .Lx1053_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1053_0
.Lx1053_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n312_cmp_test_α
.Lx1053_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n312_cmp_test_α
n311_coerce_numeric_β:  mov              r11, 260
                        add              rsp, 16;                             jmp   n310_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n312_cmp_test_α:        sub              rsp, 16
                        mov              r11, 261
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1055_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1055_239
                        add              rsp, 16;                             jmp   n311_coerce_numeric_β
.Lx1055_239:                                                                  jmp   n313_var_α
.Lx1055_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1055_240
                        add              rsp, 16;                             jmp   n311_coerce_numeric_β
.Lx1055_240:                                                                  jmp   n313_var_α
n312_cmp_test_β:        mov              r11, 261
                        add              rsp, 16;                             jmp   n311_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 262
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_lit_integer_α
n313_var_β:             mov              r11, 262
                        add              rsp, 16;                             jmp   n312_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:     sub              rsp, 16
                        mov              r11, 263
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_binop_α
n314_lit_integer_β:     mov              r11, 263
                        add              rsp, 16;                             jmp   n313_var_β
.Lx1057_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n315_binop_α:           sub              rsp, 16
                        mov              r11, 264
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1058_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1058_7
.Lx1058_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1058_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1058_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1058_4
.Lx1058_3:              movq             xmm0, rsi
.Lx1058_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1058_7:                                                                    jmp   n316_assign_α
.Lx1058_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1058_240
                        add              rsp, 16;                             jmp   n314_lit_integer_β
.Lx1058_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n317_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n317_statement_end_α:   mov              r11, 266
                        mov              r10, 31
                        add              rsp, 176;                            jmp   n318_statement_begin_α
#=======================================================================================================================
#                 a[i + 1]        =   a(x)[i]                             :(ListInsert7)
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_begin_α: mov              r11, 267
                        mov              r10, 32;                             jmp   n319_var_α
n318_statement_begin_β: mov              r11, 267;                            jmp   n304_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             sub              rsp, 16
                        mov              r11, 268
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              r11, 269
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_lit_integer_α
n320_var_β:             mov              r11, 269
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n318_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:     sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_binop_α
n321_lit_integer_β:     mov              r11, 270
                        add              rsp, 16;                             jmp   n320_var_β
.Lx1066_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:           sub              rsp, 16
                        mov              r11, 271
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1067_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1067_7
.Lx1067_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1067_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1067_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1067_4
.Lx1067_3:              movq             xmm0, rsi
.Lx1067_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1067_7:                                                                    jmp   n323_subscript_α
.Lx1067_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1067_240
                        add              rsp, 16;                             jmp   n321_lit_integer_β
.Lx1067_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n323_subscript_α
n322_binop_β:           mov              r11, 271
                        add              rsp, 16;                             jmp   n321_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n323_subscript_α:       sub              rsp, 16
                        mov              r11, 272
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1068_240
                        add              rsp, 16;                             jmp   n322_binop_β
.Lx1068_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_var_α
n323_subscript_β:       mov              r11, 272
                        add              rsp, 16;                             jmp   n322_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_call_α
n324_var_β:             mov              r11, 273
                        add              rsp, 16;                             jmp   n323_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            sub              rsp, 16
                        mov              r11, 274
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1071:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1071]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1070_240
                        add              rsp, 16;                             jmp   n324_var_β
.Lx1070_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n326_var_α
n325_call_β:            mov              r11, 274
                        add              rsp, 16;                             jmp   n324_var_β
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              r11, 275
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_subscript_α
n326_var_β:             mov              r11, 275
                        add              rsp, 32;                             jmp   n324_var_β
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:       sub              rsp, 16
                        mov              r11, 276
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1073_240
                        add              rsp, 16;                             jmp   n326_var_β
.Lx1073_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_deref_α
n327_subscript_β:       mov              r11, 276
                        add              rsp, 16;                             jmp   n326_var_β
#-----------------------------------------------------------------------------------------------------------------------
n328_deref_α:           sub              rsp, 16
                        mov              r11, 277
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
                        cmp              al, 104;                             jne   .Lx1074_240
                        add              rsp, 16;                             jmp   n327_subscript_β
.Lx1074_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_assign_var_α
n328_deref_β:           mov              r11, 277
                        add              rsp, 16;                             jmp   n327_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_var_α:      sub              rsp, 16
                        mov              r11, 278
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1075_240
                        add              rsp, 16;                             jmp   n328_deref_β
.Lx1075_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 279
                        mov              r10, 32
                        add              rsp, 176;                            jmp   n304_statement_begin_α
#=======================================================================================================================
# ListInsert8     a(x)            =   a
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_begin_α: mov              r11, 280
                        mov              r10, 33;                             jmp   n332_var_α
n331_statement_begin_β: mov              r11, 280;                            jmp   n337_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             sub              rsp, 16
                        mov              r11, 281
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n333_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_field_var_α:       sub              rsp, 16
                        mov              r11, 282
                        mov              rdi, qword ptr [rip + .Lx1081_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1081_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
.Lx1081_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_var_α
n333_field_var_β:       mov              r11, 282
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 128]            # a
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_assign_var_α
n334_var_β:             mov              r11, 283
                        add              rsp, 16;                             jmp   n333_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_var_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              rdi, qword ptr [rsp + 32]            # field_var
                        mov              rsi, qword ptr [rsp + 40]
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
                        cmp              al, 104;                             jne   .Lx1083_240
                        add              rsp, 16;                             jmp   n334_var_β
.Lx1083_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n336_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   mov              r11, 285
                        mov              r10, 33
                        add              rsp, 64;                             jmp   n337_statement_begin_α
#=======================================================================================================================
# ListInsert9     n(x)            =   n(x) + 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α: mov              r11, 286
                        mov              r10, 34;                             jmp   n338_var_α
n337_statement_begin_β: mov              r11, 286;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              r11, 287
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_field_var_α:       sub              rsp, 16
                        mov              r11, 288
                        mov              rdi, qword ptr [rip + .Lx1089_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1089_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
.Lx1089_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_var_α
n339_field_var_β:       mov              r11, 288
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n337_statement_begin_β
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:             sub              rsp, 16
                        mov              r11, 289
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_call_α
n340_var_β:             mov              r11, 289
                        add              rsp, 16;                             jmp   n339_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n341_call_α:            sub              rsp, 16
                        mov              r11, 290
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1092:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1092]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1091_240
                        add              rsp, 16;                             jmp   n340_var_β
.Lx1091_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n342_lit_integer_α
n341_call_β:            mov              r11, 290
                        add              rsp, 16;                             jmp   n340_var_β
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     sub              rsp, 16
                        mov              r11, 291
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1093_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n343_binop_α
n342_lit_integer_β:     mov              r11, 291
                        add              rsp, 32;                             jmp   n340_var_β
.Lx1093_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n343_binop_α:           sub              rsp, 16
                        mov              r11, 292
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1094_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1094_7
.Lx1094_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1094_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1094_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1094_4
.Lx1094_3:              movq             xmm0, rsi
.Lx1094_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1094_7:                                                                    jmp   n344_assign_var_α
.Lx1094_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1094_240
                        add              rsp, 16;                             jmp   n342_lit_integer_β
.Lx1094_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n344_assign_var_α
n343_binop_β:           mov              r11, 292
                        add              rsp, 16;                             jmp   n342_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n344_assign_var_α:      sub              rsp, 16
                        mov              r11, 293
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              al, 104;                             jne   .Lx1095_240
                        add              rsp, 16;                             jmp   n343_binop_β
.Lx1095_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_end_α:   mov              r11, 294
                        mov              r10, 34
                        add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListRemove      place           =   LT(place, 0) n(x) + place
#-----------------------------------------------------------------------------------------------------------------------
n346_statement_begin_α: mov              r11, 295
                        mov              r10, 35;                             jmp   n347_var_α
n346_statement_begin_β: mov              r11, 295;                            jmp   n358_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              r11, 296
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     sub              rsp, 16
                        mov              r11, 297
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n349_coerce_numeric_α
n348_lit_integer_β:     mov              r11, 297
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n346_statement_begin_β
.Lx1101_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n349_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 298
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1103_1
                        cmp              al, 3;                               jne   .Lx1103_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1103_0
.Lx1103_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n350_coerce_numeric_α
.Lx1103_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n350_coerce_numeric_α
n349_coerce_numeric_β:  mov              r11, 298
                        add              rsp, 16;                             jmp   n348_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n350_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 299
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1105_1
                        cmp              al, 3;                               jne   .Lx1105_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1105_0
.Lx1105_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n351_cmp_test_α
.Lx1105_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n351_cmp_test_α
n350_coerce_numeric_β:  mov              r11, 299
                        add              rsp, 16;                             jmp   n349_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n351_cmp_test_α:        sub              rsp, 16
                        mov              r11, 300
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1107_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1107_239
                        add              rsp, 16;                             jmp   n350_coerce_numeric_β
.Lx1107_239:                                                                  jmp   n352_var_α
.Lx1107_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1107_240
                        add              rsp, 16;                             jmp   n350_coerce_numeric_β
.Lx1107_240:                                                                  jmp   n352_var_α
n351_cmp_test_β:        mov              r11, 300
                        add              rsp, 16;                             jmp   n350_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              r11, 301
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_call_α
n352_var_β:             mov              r11, 301
                        add              rsp, 16;                             jmp   n351_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        mov              r11, 302
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1110:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1110]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1109_240
                        add              rsp, 16;                             jmp   n352_var_β
.Lx1109_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_var_α
n353_call_β:            mov              r11, 302
                        add              rsp, 16;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:             sub              rsp, 16
                        mov              r11, 303
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n355_binop_α
n354_var_β:             mov              r11, 303
                        add              rsp, 32;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n355_binop_α:           sub              rsp, 16
                        mov              r11, 304
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1112_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1112_7
.Lx1112_2:              and              edx, 1;                              jz    .Lx1112_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx1112_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1112_4
.Lx1112_3:              movq             xmm0, rsi
.Lx1112_4:              cmp              cl, 5;                               je    .Lx1112_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1112_6
.Lx1112_5:              movq             xmm1, rdi
.Lx1112_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1112_7:                                                                    jmp   n356_assign_α
.Lx1112_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1112_240
                        add              rsp, 16;                             jmp   n354_var_β
.Lx1112_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n356_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:          mov              r11, 305
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # place
                        mov              qword ptr [r9 + 40], rdx;            jmp   n357_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_end_α:   mov              r11, 306
                        mov              r10, 35
                        add              rsp, 144;                            jmp   n358_statement_begin_α
#=======================================================================================================================
#                 GE(place, 0)                                            :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n358_statement_begin_α: mov              r11, 307
                        mov              r10, 36;                             jmp   n359_var_α
n358_statement_begin_β: mov              r11, 307;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             sub              rsp, 16
                        mov              r11, 308
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:     sub              rsp, 16
                        mov              r11, 309
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_coerce_numeric_α
n360_lit_integer_β:     mov              r11, 309
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n358_statement_begin_β
.Lx1119_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n361_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 310
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx1121_1
                        cmp              al, 3;                               jne   .Lx1121_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lx1121_0
.Lx1121_1:              mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n362_coerce_numeric_α
.Lx1121_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n362_coerce_numeric_α
n361_coerce_numeric_β:  mov              r11, 310
                        add              rsp, 16;                             jmp   n360_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n362_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 311
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lx1123_1
                        cmp              al, 3;                               jne   .Lx1123_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lx1123_0
.Lx1123_1:              mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n363_cmp_test_α
.Lx1123_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n363_cmp_test_α
n362_coerce_numeric_β:  mov              r11, 311
                        add              rsp, 16;                             jmp   n361_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n363_cmp_test_α:        sub              rsp, 16
                        mov              r11, 312
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1125_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jge   .Lx1125_239
                        add              rsp, 16;                             jmp   n362_coerce_numeric_β
.Lx1125_239:                                                                  jmp   n364_statement_end_α
.Lx1125_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jns   .Lx1125_240
                        add              rsp, 16;                             jmp   n362_coerce_numeric_β
.Lx1125_240:                                                                  jmp   n364_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:   mov              r11, 313
                        mov              r10, 36
                        add              rsp, 80;                             jmp   n365_statement_begin_α
#=======================================================================================================================
#                 LT(place, n(x))                                         :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n365_statement_begin_α: mov              r11, 314
                        mov              r10, 37;                             jmp   n366_var_α
n365_statement_begin_β: mov              r11, 314;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             sub              rsp, 16
                        mov              r11, 315
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             sub              rsp, 16
                        mov              r11, 316
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n368_call_α
n367_var_β:             mov              r11, 316
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n365_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            sub              rsp, 16
                        mov              r11, 317
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1133:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1133]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1132_240
                        add              rsp, 16;                             jmp   n367_var_β
.Lx1132_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_coerce_numeric_α
n368_call_β:            mov              r11, 317
                        add              rsp, 16;                             jmp   n367_var_β
#-----------------------------------------------------------------------------------------------------------------------
n369_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 318
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 5;                               je    .Lx1135_1
                        cmp              al, 3;                               jne   .Lx1135_0
                        mov              eax, dword ptr [rsp + 16]            # call
                        cmp              al, 3;                               jne   .Lx1135_0
.Lx1135_1:              mov              rax, qword ptr [rsp + 48]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 56]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n370_coerce_numeric_α
.Lx1135_0:              lea              rdi, [rsp + 48]
                        lea              rsi, [rsp + 16]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_coerce_numeric_α
n369_coerce_numeric_β:  mov              r11, 318
                        add              rsp, 32;                             jmp   n367_var_β
#-----------------------------------------------------------------------------------------------------------------------
n370_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 319
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx1137_1
                        cmp              al, 3;                               jne   .Lx1137_0
                        mov              eax, dword ptr [rsp + 64]            # var
                        cmp              al, 3;                               jne   .Lx1137_0
.Lx1137_1:              mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n371_cmp_test_α
.Lx1137_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 64]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_cmp_test_α
n370_coerce_numeric_β:  mov              r11, 319
                        add              rsp, 16;                             jmp   n369_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n371_cmp_test_α:        sub              rsp, 16
                        mov              r11, 320
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1139_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1139_239
                        add              rsp, 16;                             jmp   n370_coerce_numeric_β
.Lx1139_239:                                                                  jmp   n372_statement_end_α
.Lx1139_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1139_240
                        add              rsp, 16;                             jmp   n370_coerce_numeric_β
.Lx1139_240:                                                                  jmp   n372_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_end_α:   mov              r11, 321
                        mov              r10, 37
                        add              rsp, 96;                             jmp   n373_statement_begin_α
#=======================================================================================================================
#                 ListRemove      =   a(x)[place]
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_begin_α: mov              r11, 322
                        mov              r10, 38;                             jmp   n374_var_α
n373_statement_begin_β: mov              r11, 322;                            jmp   n381_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:             sub              rsp, 16
                        mov              r11, 323
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n375_call_α
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            sub              rsp, 16
                        mov              r11, 324
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1146:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1146]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1145_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n373_statement_begin_β
.Lx1145_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n376_var_α
n375_call_β:            mov              r11, 324
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n373_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             sub              rsp, 16
                        mov              r11, 325
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n377_subscript_α
n376_var_β:             mov              r11, 325
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n373_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n377_subscript_α:       sub              rsp, 16
                        mov              r11, 326
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1148_240
                        add              rsp, 16;                             jmp   n376_var_β
.Lx1148_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n378_deref_α
n377_subscript_β:       mov              r11, 326
                        add              rsp, 16;                             jmp   n376_var_β
#-----------------------------------------------------------------------------------------------------------------------
n378_deref_α:           sub              rsp, 16
                        mov              r11, 327
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
                        cmp              al, 104;                             jne   .Lx1149_240
                        add              rsp, 16;                             jmp   n377_subscript_β
.Lx1149_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n379_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ListRemove
                        mov              qword ptr [r9 + 184], rdx;           jmp   n380_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n380_statement_end_α:   mov              r11, 329
                        mov              r10, 38
                        add              rsp, 80;                             jmp   n381_statement_begin_α
#=======================================================================================================================
#                 i               =   place
#-----------------------------------------------------------------------------------------------------------------------
n381_statement_begin_α: mov              r11, 330
                        mov              r10, 39;                             jmp   n382_var_α
n381_statement_begin_β: mov              r11, 330;                            jmp   n385_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_α:             sub              rsp, 16
                        mov              r11, 331
                        mov              rax, qword ptr [r9 + 32]             # place
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n383_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:          mov              r11, 332
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n384_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n384_statement_end_α:   mov              r11, 333
                        mov              r10, 39
                        add              rsp, 16;                             jmp   n385_statement_begin_α
#=======================================================================================================================
# ListRemove1     i               =   LT(i, n(x) - 1) i + 1               :F(ListRemove2)
#-----------------------------------------------------------------------------------------------------------------------
n385_statement_begin_α: mov              r11, 334
                        mov              r10, 40;                             jmp   n386_var_α
n385_statement_begin_β: mov              r11, 334;                            jmp   n413_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:             sub              rsp, 16
                        mov              r11, 335
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:             sub              rsp, 16
                        mov              r11, 336
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n388_call_α
n387_var_β:             mov              r11, 336
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n385_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:            sub              rsp, 16
                        mov              r11, 337
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1164:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1164]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1163_240
                        add              rsp, 16;                             jmp   n387_var_β
.Lx1163_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n389_lit_integer_α
n388_call_β:            mov              r11, 337
                        add              rsp, 16;                             jmp   n387_var_β
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     sub              rsp, 16
                        mov              r11, 338
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n390_binop_α
n389_lit_integer_β:     mov              r11, 338
                        add              rsp, 32;                             jmp   n387_var_β
.Lx1165_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n390_binop_α:           sub              rsp, 16
                        mov              r11, 339
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1166_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1166_7
.Lx1166_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1166_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1166_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1166_4
.Lx1166_3:              movq             xmm0, rsi
.Lx1166_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1166_7:                                                                    jmp   n391_coerce_numeric_α
.Lx1166_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1166_240
                        add              rsp, 16;                             jmp   n389_lit_integer_β
.Lx1166_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_coerce_numeric_α
n390_binop_β:           mov              r11, 339
                        add              rsp, 16;                             jmp   n389_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n391_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 340
                        mov              eax, dword ptr [rsp + 80]            # var
                        cmp              al, 5;                               je    .Lx1168_1
                        cmp              al, 3;                               jne   .Lx1168_0
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 3;                               jne   .Lx1168_0
.Lx1168_1:              mov              rax, qword ptr [rsp + 80]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n392_coerce_numeric_α
.Lx1168_0:              lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 16]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_coerce_numeric_α
n391_coerce_numeric_β:  mov              r11, 340
                        add              rsp, 16;                             jmp   n390_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n392_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 341
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lx1170_1
                        cmp              al, 3;                               jne   .Lx1170_0
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 3;                               jne   .Lx1170_0
.Lx1170_1:              mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n393_cmp_test_α
.Lx1170_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 96]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n393_cmp_test_α
n392_coerce_numeric_β:  mov              r11, 341
                        add              rsp, 16;                             jmp   n391_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n393_cmp_test_α:        sub              rsp, 16
                        mov              r11, 342
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1172_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx1172_239
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
.Lx1172_239:                                                                  jmp   n394_var_α
.Lx1172_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lx1172_240
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
.Lx1172_240:                                                                  jmp   n394_var_α
n393_cmp_test_β:        mov              r11, 342
                        add              rsp, 16;                             jmp   n392_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             sub              rsp, 16
                        mov              r11, 343
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n395_lit_integer_α
n394_var_β:             mov              r11, 343
                        add              rsp, 16;                             jmp   n393_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1174_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n396_binop_α
n395_lit_integer_β:     mov              r11, 344
                        add              rsp, 16;                             jmp   n394_var_β
.Lx1174_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n396_binop_α:           sub              rsp, 16
                        mov              r11, 345
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1175_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1175_7
.Lx1175_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1175_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1175_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1175_4
.Lx1175_3:              movq             xmm0, rsi
.Lx1175_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1175_7:                                                                    jmp   n397_assign_α
.Lx1175_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1175_240
                        add              rsp, 16;                             jmp   n395_lit_integer_β
.Lx1175_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n397_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # i
                        mov              qword ptr [r9 + 152], rdx;           jmp   n398_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n398_statement_end_α:   mov              r11, 347
                        mov              r10, 40
                        add              rsp, 176;                            jmp   n399_statement_begin_α
#=======================================================================================================================
#                 a(x)[i - 1]     =   a(x)[i]                             :(ListRemove1)
#-----------------------------------------------------------------------------------------------------------------------
n399_statement_begin_α: mov              r11, 348
                        mov              r10, 41;                             jmp   n400_var_α
n399_statement_begin_β: mov              r11, 348;                            jmp   n385_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:             sub              rsp, 16
                        mov              r11, 349
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n401_call_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            sub              rsp, 16
                        mov              r11, 350
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1183:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1183]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1182_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
.Lx1182_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n402_var_α
n401_call_β:            mov              r11, 350
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             sub              rsp, 16
                        mov              r11, 351
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n403_lit_integer_α
n402_var_β:             mov              r11, 351
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n399_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     sub              rsp, 16
                        mov              r11, 352
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1185_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n404_binop_α
n403_lit_integer_β:     mov              r11, 352
                        add              rsp, 16;                             jmp   n402_var_β
.Lx1185_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:           sub              rsp, 16
                        mov              r11, 353
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1186_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1186_7
.Lx1186_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1186_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1186_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1186_4
.Lx1186_3:              movq             xmm0, rsi
.Lx1186_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1186_7:                                                                    jmp   n405_subscript_α
.Lx1186_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1186_240
                        add              rsp, 16;                             jmp   n403_lit_integer_β
.Lx1186_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_subscript_α
n404_binop_β:           mov              r11, 353
                        add              rsp, 16;                             jmp   n403_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n405_subscript_α:       sub              rsp, 16
                        mov              r11, 354
                        mov              rdi, qword ptr [rsp + 64]            # call
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1187_240
                        add              rsp, 16;                             jmp   n404_binop_β
.Lx1187_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n406_var_α
n405_subscript_β:       mov              r11, 354
                        add              rsp, 16;                             jmp   n404_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:             sub              rsp, 16
                        mov              r11, 355
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n407_call_α
n406_var_β:             mov              r11, 355
                        add              rsp, 16;                             jmp   n405_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n407_call_α:            sub              rsp, 16
                        mov              r11, 356
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1190:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1190]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1189_240
                        add              rsp, 16;                             jmp   n406_var_β
.Lx1189_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n408_var_α
n407_call_β:            mov              r11, 356
                        add              rsp, 16;                             jmp   n406_var_β
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             sub              rsp, 16
                        mov              r11, 357
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n409_subscript_α
n408_var_β:             mov              r11, 357
                        add              rsp, 32;                             jmp   n406_var_β
#-----------------------------------------------------------------------------------------------------------------------
n409_subscript_α:       sub              rsp, 16
                        mov              r11, 358
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1192_240
                        add              rsp, 16;                             jmp   n408_var_β
.Lx1192_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n410_deref_α
n409_subscript_β:       mov              r11, 358
                        add              rsp, 16;                             jmp   n408_var_β
#-----------------------------------------------------------------------------------------------------------------------
n410_deref_α:           sub              rsp, 16
                        mov              r11, 359
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
                        cmp              al, 104;                             jne   .Lx1193_240
                        add              rsp, 16;                             jmp   n409_subscript_β
.Lx1193_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n411_assign_var_α
n410_deref_β:           mov              r11, 359
                        add              rsp, 16;                             jmp   n409_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_var_α:      sub              rsp, 16
                        mov              r11, 360
                        mov              rdi, qword ptr [rsp + 96]            # subscript
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1194_240
                        add              rsp, 16;                             jmp   n410_deref_β
.Lx1194_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n412_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_end_α:   mov              r11, 361
                        mov              r10, 41
                        add              rsp, 192;                            jmp   n385_statement_begin_α
#=======================================================================================================================
# ListRemove2     a(x)[i]         =
#-----------------------------------------------------------------------------------------------------------------------
n413_statement_begin_α: mov              r11, 362
                        mov              r10, 42;                             jmp   n414_var_α
n413_statement_begin_β: mov              r11, 362;                            jmp   n421_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_α:             sub              rsp, 16
                        mov              r11, 363
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n415_call_α
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            sub              rsp, 16
                        mov              r11, 364
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1201:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1201]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1200_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
.Lx1200_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n416_var_α
n415_call_β:            mov              r11, 364
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n413_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             sub              rsp, 16
                        mov              r11, 365
                        mov              rax, qword ptr [r9 + 144]            # i
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n417_subscript_α
n416_var_β:             mov              r11, 365
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n413_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n417_subscript_α:       sub              rsp, 16
                        mov              r11, 366
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1203_240
                        add              rsp, 16;                             jmp   n416_var_β
.Lx1203_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n418_lit_string_α
n417_subscript_β:       mov              r11, 366
                        add              rsp, 16;                             jmp   n416_var_β
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      sub              rsp, 16
                        mov              r11, 367
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n419_assign_var_α
n418_lit_string_β:      mov              r11, 367
                        add              rsp, 16;                             jmp   n417_subscript_β
.Lx1204_0:              .quad            .Lx1204_0_s
.Lx1204_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n419_assign_var_α:      sub              rsp, 16
                        mov              r11, 368
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1205_240
                        add              rsp, 16;                             jmp   n418_lit_string_β
.Lx1205_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n420_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n420_statement_end_α:   mov              r11, 369
                        mov              r10, 42
                        add              rsp, 96;                             jmp   n421_statement_begin_α
#=======================================================================================================================
#                 n(x)            =   n(x) - 1                            :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n421_statement_begin_α: mov              r11, 370
                        mov              r10, 43;                             jmp   n422_var_α
n421_statement_begin_β: mov              r11, 370;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             sub              rsp, 16
                        mov              r11, 371
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n423_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_field_var_α:       sub              rsp, 16
                        mov              r11, 372
                        mov              rdi, qword ptr [rip + .Lx1211_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1211_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx1211_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n424_var_α
n423_field_var_β:       mov              r11, 372
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n421_statement_begin_β
.Lx1211_0:              .quad            .Lx1211_0_s
.Lx1211_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             sub              rsp, 16
                        mov              r11, 373
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n425_call_α
n424_var_β:             mov              r11, 373
                        add              rsp, 16;                             jmp   n423_field_var_β
#-----------------------------------------------------------------------------------------------------------------------
n425_call_α:            sub              rsp, 16
                        mov              r11, 374
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1214:           .string          "n"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1214]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1213_240
                        add              rsp, 16;                             jmp   n424_var_β
.Lx1213_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n426_lit_integer_α
n425_call_β:            mov              r11, 374
                        add              rsp, 16;                             jmp   n424_var_β
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     sub              rsp, 16
                        mov              r11, 375
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n427_binop_α
n426_lit_integer_β:     mov              r11, 375
                        add              rsp, 32;                             jmp   n424_var_β
.Lx1215_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n427_binop_α:           sub              rsp, 16
                        mov              r11, 376
                        mov              ecx, dword ptr [rsp + 32]            # call
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1216_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1216_7
.Lx1216_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1216_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1216_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1216_4
.Lx1216_3:              movq             xmm0, rsi
.Lx1216_4:              cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1216_7:                                                                    jmp   n428_assign_var_α
.Lx1216_0:              mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx1216_240
                        add              rsp, 16;                             jmp   n426_lit_integer_β
.Lx1216_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n428_assign_var_α
n427_binop_β:           mov              r11, 376
                        add              rsp, 16;                             jmp   n426_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n428_assign_var_α:      sub              rsp, 16
                        mov              r11, 377
                        mov              rdi, qword ptr [rsp + 80]            # field_var
                        mov              rsi, qword ptr [rsp + 88]
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
                        cmp              al, 104;                             jne   .Lx1217_240
                        add              rsp, 16;                             jmp   n427_binop_β
.Lx1217_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n429_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n429_statement_end_α:   mov              r11, 378
                        mov              r10, 43
                        add              rsp, 112;                            jmp   RETURN
#=======================================================================================================================
# ListPop         ListPop         =   ListRemove(x, -1)                   :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_begin_α: mov              r11, 379
                        mov              r10, 44;                             jmp   n431_var_α
n430_statement_begin_β: mov              r11, 379;                            jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:             sub              rsp, 16
                        mov              r11, 380
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n432_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     sub              rsp, 16
                        mov              r11, 381
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n433_unop_α
n432_lit_integer_β:     mov              r11, 381
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n430_statement_begin_β
.Lx1223_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n433_unop_α:            sub              rsp, 16
                        mov              r11, 382
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n434_call_α
n433_unop_β:            mov              r11, 382
                        add              rsp, 16;                             jmp   n432_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n434_call_α:            sub              rsp, 16
                        mov              r11, 383
                        lea              rcx, [rip + .Lsig1226z]
                        lea              rax, [rip + ListRemove_α];           jmp   rax
.Lsig1226z:             .quad            2
                        .quad            .Lx1226_2
                        .quad            .Lx1226_2
                        .quad            48
                        .quad            16
.Lx1226_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1226_29
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
.Lx1226_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1226_240
                        add              rsp, 16;                             jmp   n433_unop_β
.Lx1226_240:                                                                  jmp   n435_assign_α
n434_call_β:            mov              r11, 383;                            jmp   n433_unop_β
.Lx1226_0:              .quad            .Lx1226_0_s
.Lx1226_0_s:            .string          "ListRemove"
#-----------------------------------------------------------------------------------------------------------------------
n435_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ListPop
                        mov              qword ptr [r9 + 200], rdx;           jmp   n436_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n436_statement_end_α:   mov              r11, 385
                        mov              r10, 44
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# ListSize        ListSize        =   IDENT(a(x)) 0                       :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n437_statement_begin_α: mov              r11, 386
                        mov              r10, 45;                             jmp   n438_var_α
n437_statement_begin_β: mov              r11, 386;                            jmp   n445_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             sub              rsp, 16
                        mov              r11, 387
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n439_call_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_α:            sub              rsp, 16
                        mov              r11, 388
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1234:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1234]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1233_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n437_statement_begin_β
.Lx1233_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n440_lit_string_α
n439_call_β:            mov              r11, 388
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n437_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:      sub              rsp, 16
                        mov              r11, 389
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1235_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n441_ident_α
n440_lit_string_β:      mov              r11, 389
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n437_statement_begin_β
.Lx1235_0:              .quad            .Lx1235_0_s
.Lx1235_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n441_ident_α:           sub              rsp, 16
                        mov              r11, 390
                        mov              rdi, qword ptr [rsp + 32]            # call
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
                        test             eax, eax;                            jne   .Lx1237_240
                        add              rsp, 16;                             jmp   n440_lit_string_β
.Lx1237_240:                                                                  jmp   n442_lit_integer_α
n441_ident_β:           mov              r11, 390
                        add              rsp, 16;                             jmp   n440_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_integer_α:     sub              rsp, 16
                        mov              r11, 391
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n443_assign_α
.Lx1238_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n443_assign_α:          mov              r11, 392
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n444_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n444_statement_end_α:   mov              r11, 393
                        mov              r10, 45
                        add              rsp, 80;                             jmp   RETURN
#=======================================================================================================================
#                 PROTOTYPE(a(x)) '0:' REM . ListSize
#-----------------------------------------------------------------------------------------------------------------------
n445_statement_begin_α: mov              r11, 394
                        mov              r10, 46;                             jmp   n446_var_α
n445_statement_begin_β: mov              r11, 394;                            jmp   n456_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:             sub              rsp, 16
                        mov              r11, 395
                        mov              rax, qword ptr [r9 + 16]             # x
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n447_call_α
#-----------------------------------------------------------------------------------------------------------------------
n447_call_α:            sub              rsp, 16
                        mov              r11, 396
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1246:           .string          "a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1246]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 65536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1245_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n456_statement_begin_α
.Lx1245_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n448_call_α
n447_call_β:            mov              r11, 396
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n456_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n448_call_α:            sub              rsp, 16
                        mov              r11, 397
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1248:           .string          "PROTOTYPE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1248]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589866
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1247_240
                                                                              jmp   n455_statement_end_α
.Lx1247_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n449_match_begin_α
n448_call_β:            mov              r11, 397;                            jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n449_match_begin_α:     mov              r11, 398
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
.Lx1250_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1250_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n450_match_lit_α
n449_match_begin_β:     mov              r11, 398
.Lx1250_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1250_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1250_1
                                                                              jmp   .Lx1250_0
.Lx1250_1:
n449_match_begin_af:    mov              r11, 398
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
                        pop              rbp;                                 jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n450_match_lit_α:       mov              r11, 399
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n449_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n449_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 58;                             jne   n449_match_begin_β
                        add              r14d, 2;                             jmp   n451_match_assign_save_α
n450_match_lit_β:       mov              r11, 399
                        sub              r14d, 2;                             jmp   n449_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n451_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 400
                        mov              dword ptr [rsp + 0], r14d;           jmp   n452_match_rem_α
n451_match_assign_save_β:
                        mov              r11, 400
                        add              rsp, 16;                             jmp   n450_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n452_match_rem_α:       sub              rsp, 16
                        mov              r11, 401
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d;                          jmp   n453_match_assign_cond_α
n452_match_rem_β:       mov              r11, 401
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n450_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n453_match_assign_cond_α:
                        mov              r11, 402
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n454_match_end_α
n453_match_assign_cond_β:
                        mov              r11, 402
                        sub              r12, 24;                             jmp   n452_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n454_match_end_α:       mov              r11, 403
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
                        test             rax, rax;                            je    .Lx1259_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n449_match_begin_af
.Lx1259_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n455_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n455_statement_end_α:   mov              r11, 404
                        mov              r10, 46
                        add              rsp, 48;                             jmp   n456_statement_begin_α
#=======================================================================================================================
#                 ListSize        =   ListSize + 1                        :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n456_statement_begin_α: mov              r11, 405
                        mov              r10, 47;                             jmp   n457_var_α
n456_statement_begin_β: mov              r11, 405;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:             sub              rsp, 16
                        mov              r11, 406
                        mov              rax, qword ptr [r9 + 208]            # ListSize
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n458_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     sub              rsp, 16
                        mov              r11, 407
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n459_binop_α
n458_lit_integer_β:     mov              r11, 407
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n456_statement_begin_β
.Lx1265_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_α:           sub              rsp, 16
                        mov              r11, 408
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1266_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1266_7
.Lx1266_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1266_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1266_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1266_4
.Lx1266_3:              movq             xmm0, rsi
.Lx1266_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1266_7:                                                                    jmp   n460_assign_α
.Lx1266_0:              mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1266_240
                        add              rsp, 16;                             jmp   n458_lit_integer_β
.Lx1266_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:          mov              r11, 409
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ListSize
                        mov              qword ptr [r9 + 216], rdx;           jmp   n461_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n461_statement_end_α:   mov              r11, 410
                        mov              r10, 47
                        add              rsp, 48;                             jmp   RETURN
#=======================================================================================================================
# ListEnd  <stmt 48, line 57: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n462_statement_begin_α: mov              r11, 411
                        mov              r10, 48;                             jmp   n463_statement_end_α
n462_statement_begin_β: mov              r11, 411;                            jmp   n464_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n463_statement_end_α:   mov              r11, 412
                        mov              r10, 48;                             jmp   n464_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n464_statement_begin_α: mov              r11, 413
                        mov              r10, 49;                             jmp   n465_define_α
n464_statement_begin_β: mov              r11, 413;                            jmp   n467_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n465_define_α:          mov              r11, 414
                        mov              rdi, qword ptr [rip + .Lx1277_0]
                        mov              rsi, qword ptr [rip + .Lx1277_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n494_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1277_0]
                        lea              rsi, [rip + Init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_statement_end_α
n465_define_β:          mov              r11, 414;                            jmp   n464_statement_begin_β
.Lx1277_0:              .quad            .Lx1277_0_s
.Lx1277_0_s:            .string          "Init_list"
.Lx1277_1:              .quad            .Lx1277_1_s
.Lx1277_1_s:            .string          "vs"
                                                                              jmp   .Lx1278_245
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
                        cmp              rdx, 0;                              jbe   .Lx1278_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1278_41
.Lx1278_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1278_41:             lea              rcx, [rip + Init_list_γ]
                        lea              rax, [rip + Init_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n494_statement_begin_α]; jmp   rax
Init_list_γ:            mov              rdi, qword ptr [r9 + 224]            # Init_list
                        mov              rsi, qword ptr [r9 + 232]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 232], rax
                        cmp              rdx, 0;                              jbe   .Lx1278_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1278_110
.Lx1278_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1278_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1278_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1278_180
.Lx1278_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1278_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1278_245:
#-----------------------------------------------------------------------------------------------------------------------
n466_statement_end_α:   mov              r11, 415
                        mov              r10, 49;                             jmp   n467_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Init_list(vs)');    DEFINE('init_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n467_statement_begin_α: mov              r11, 416
                        mov              r10, 50;                             jmp   n468_define_α
n467_statement_begin_β: mov              r11, 416;                            jmp   n470_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n468_define_α:          mov              r11, 417
                        mov              rdi, qword ptr [rip + .Lx1284_0]
                        mov              rsi, qword ptr [rip + .Lx1284_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n538_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1284_0]
                        lea              rsi, [rip + init_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n469_statement_end_α
n468_define_β:          mov              r11, 417;                            jmp   n467_statement_begin_β
.Lx1284_0:              .quad            .Lx1284_0_s
.Lx1284_0_s:            .string          "init_list"
.Lx1284_1:              .quad            .Lx1284_1_s
.Lx1284_1_s:            .string          "v"
                                                                              jmp   .Lx1285_245
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
                        cmp              rdx, 0;                              jbe   .Lx1285_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1285_41
.Lx1285_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1285_41:             lea              rcx, [rip + init_list_γ]
                        lea              rax, [rip + init_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n538_statement_begin_α]; jmp   rax
init_list_γ:            mov              rdi, qword ptr [r9 + 256]            # init_list
                        mov              rsi, qword ptr [r9 + 264]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 256], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 264], rax
                        cmp              rdx, 0;                              jbe   .Lx1285_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1285_110
.Lx1285_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1285_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1285_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1285_180
.Lx1285_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1285_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1285_245:
#-----------------------------------------------------------------------------------------------------------------------
n469_statement_end_α:   mov              r11, 418
                        mov              r10, 50;                             jmp   n470_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n470_statement_begin_α: mov              r11, 419
                        mov              r10, 51;                             jmp   n471_define_α
n470_statement_begin_β: mov              r11, 419;                            jmp   n473_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n471_define_α:          mov              r11, 420
                        mov              rdi, qword ptr [rip + .Lx1291_0]
                        mov              rsi, qword ptr [rip + .Lx1291_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n503_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1291_0]
                        lea              rsi, [rip + Push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_statement_end_α
n471_define_β:          mov              r11, 420;                            jmp   n470_statement_begin_β
.Lx1291_0:              .quad            .Lx1291_0_s
.Lx1291_0_s:            .string          "Push_list"
.Lx1291_1:              .quad            .Lx1291_1_s
.Lx1291_1_s:            .string          "vs"
                                                                              jmp   .Lx1292_245
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
                        cmp              rdx, 0;                              jbe   .Lx1292_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 240]            # vs
                        mov              qword ptr [r9 + 240], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 248]
                        mov              qword ptr [r9 + 248], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1292_41
.Lx1292_10:             mov              rax, qword ptr [r9 + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 240], 0
                        mov              qword ptr [r9 + 248], 0
.Lx1292_41:             lea              rcx, [rip + Push_list_γ]
                        lea              rax, [rip + Push_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n503_statement_begin_α]; jmp   rax
Push_list_γ:            mov              rdi, qword ptr [r9 + 288]            # Push_list
                        mov              rsi, qword ptr [r9 + 296]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 288], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 296], rax
                        cmp              rdx, 0;                              jbe   .Lx1292_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1292_110
.Lx1292_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1292_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1292_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1292_180
.Lx1292_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1292_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1292_245:
#-----------------------------------------------------------------------------------------------------------------------
n472_statement_end_α:   mov              r11, 421
                        mov              r10, 51;                             jmp   n473_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_list(vs)');    DEFINE('push_list(v)')
#-----------------------------------------------------------------------------------------------------------------------
n473_statement_begin_α: mov              r11, 422
                        mov              r10, 52;                             jmp   n474_define_α
n473_statement_begin_β: mov              r11, 422;                            jmp   n476_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n474_define_α:          mov              r11, 423
                        mov              rdi, qword ptr [rip + .Lx1298_0]
                        mov              rsi, qword ptr [rip + .Lx1298_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n556_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1298_0]
                        lea              rsi, [rip + push_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n475_statement_end_α
n474_define_β:          mov              r11, 423;                            jmp   n473_statement_begin_β
.Lx1298_0:              .quad            .Lx1298_0_s
.Lx1298_0_s:            .string          "push_list"
.Lx1298_1:              .quad            .Lx1298_1_s
.Lx1298_1_s:            .string          "v"
                                                                              jmp   .Lx1299_245
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
                        cmp              rdx, 0;                              jbe   .Lx1299_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 272]            # v
                        mov              qword ptr [r9 + 272], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 280]
                        mov              qword ptr [r9 + 280], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx1299_41
.Lx1299_10:             mov              rax, qword ptr [r9 + 272]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 272], 0
                        mov              qword ptr [r9 + 280], 0
.Lx1299_41:             lea              rcx, [rip + push_list_γ]
                        lea              rax, [rip + push_list_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n556_statement_begin_α]; jmp   rax
push_list_γ:            mov              rdi, qword ptr [r9 + 304]            # push_list
                        mov              rsi, qword ptr [r9 + 312]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 312], rax
                        cmp              rdx, 0;                              jbe   .Lx1299_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1299_110
.Lx1299_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1299_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1299_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1299_180
.Lx1299_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1299_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1299_245:
#-----------------------------------------------------------------------------------------------------------------------
n475_statement_end_α:   mov              r11, 424
                        mov              r10, 52;                             jmp   n476_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n476_statement_begin_α: mov              r11, 425
                        mov              r10, 53;                             jmp   n477_define_α
n476_statement_begin_β: mov              r11, 425;                            jmp   n479_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n477_define_α:          mov              r11, 426
                        mov              rdi, qword ptr [rip + .Lx1305_0]
                        mov              rsi, qword ptr [rip + .Lx1305_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n512_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1305_0]
                        lea              rsi, [rip + Push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_statement_end_α
n477_define_β:          mov              r11, 426;                            jmp   n476_statement_begin_β
.Lx1305_0:              .quad            .Lx1305_0_s
.Lx1305_0_s:            .string          "Push_item"
.Lx1305_1:              .quad            .Lx1305_1_s
.Lx1305_1_s:            .string          "vs"
                                                                              jmp   .Lx1306_245
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
.Lx1306_41:             lea              rcx, [rip + Push_item_γ]
                        lea              rax, [rip + Push_item_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n512_statement_begin_α]; jmp   rax
Push_item_γ:            mov              rdi, qword ptr [r9 + 320]            # Push_item
                        mov              rsi, qword ptr [r9 + 328]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 320], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 328], rax
                        cmp              rdx, 0;                              jbe   .Lx1306_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1306_110
.Lx1306_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1306_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1306_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1306_180
.Lx1306_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1306_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1306_245:
#-----------------------------------------------------------------------------------------------------------------------
n478_statement_end_α:   mov              r11, 427
                        mov              r10, 53;                             jmp   n479_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Push_item(vs)');    DEFINE('push_item(v)')
#-----------------------------------------------------------------------------------------------------------------------
n479_statement_begin_α: mov              r11, 428
                        mov              r10, 54;                             jmp   n480_define_α
n479_statement_begin_β: mov              r11, 428;                            jmp   n482_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n480_define_α:          mov              r11, 429
                        mov              rdi, qword ptr [rip + .Lx1312_0]
                        mov              rsi, qword ptr [rip + .Lx1312_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n585_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1312_0]
                        lea              rsi, [rip + push_item_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n481_statement_end_α
n480_define_β:          mov              r11, 429;                            jmp   n479_statement_begin_β
.Lx1312_0:              .quad            .Lx1312_0_s
.Lx1312_0_s:            .string          "push_item"
.Lx1312_1:              .quad            .Lx1312_1_s
.Lx1312_1_s:            .string          "v"
                                                                              jmp   .Lx1313_245
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
.Lx1313_41:             lea              rcx, [rip + push_item_γ]
                        lea              rax, [rip + push_item_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n585_statement_begin_α]; jmp   rax
push_item_γ:            mov              rdi, qword ptr [r9 + 336]            # push_item
                        mov              rsi, qword ptr [r9 + 344]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 344], rax
                        cmp              rdx, 0;                              jbe   .Lx1313_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1313_110
.Lx1313_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1313_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1313_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1313_180
.Lx1313_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1313_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1313_245:
#-----------------------------------------------------------------------------------------------------------------------
n481_statement_end_α:   mov              r11, 430
                        mov              r10, 54;                             jmp   n482_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n482_statement_begin_α: mov              r11, 431
                        mov              r10, 55;                             jmp   n483_define_α
n482_statement_begin_β: mov              r11, 431;                            jmp   n485_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n483_define_α:          mov              r11, 432
                        mov              rdi, qword ptr [rip + .Lx1319_0]
                        mov              rsi, qword ptr [rip + .Lx1319_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n521_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1319_0]
                        lea              rsi, [rip + Pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n484_statement_end_α
n483_define_β:          mov              r11, 432;                            jmp   n482_statement_begin_β
.Lx1319_0:              .quad            .Lx1319_0_s
.Lx1319_0_s:            .string          "Pop_list"
.Lx1319_1:              .quad            .Lx1319_1_s
.Lx1319_1_s:            .string          ""
                                                                              jmp   .Lx1320_245
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
                        lea              rax, [rip + n521_statement_begin_α]; jmp   rax
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
.Lx1320_245:
#-----------------------------------------------------------------------------------------------------------------------
n484_statement_end_α:   mov              r11, 433
                        mov              r10, 55;                             jmp   n485_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_list()');       DEFINE('pop_list()')
#-----------------------------------------------------------------------------------------------------------------------
n485_statement_begin_α: mov              r11, 434
                        mov              r10, 56;                             jmp   n486_define_α
n485_statement_begin_β: mov              r11, 434;                            jmp   n488_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n486_define_α:          mov              r11, 435
                        mov              rdi, qword ptr [rip + .Lx1326_0]
                        mov              rsi, qword ptr [rip + .Lx1326_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n597_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1326_0]
                        lea              rsi, [rip + pop_list_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n487_statement_end_α
n486_define_β:          mov              r11, 435;                            jmp   n485_statement_begin_β
.Lx1326_0:              .quad            .Lx1326_0_s
.Lx1326_0_s:            .string          "pop_list"
.Lx1326_1:              .quad            .Lx1326_1_s
.Lx1326_1_s:            .string          ""
                                                                              jmp   .Lx1327_245
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
                        lea              rax, [rip + n597_statement_begin_α]; jmp   rax
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
.Lx1327_245:
#-----------------------------------------------------------------------------------------------------------------------
n487_statement_end_α:   mov              r11, 436
                        mov              r10, 56;                             jmp   n488_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n488_statement_begin_α: mov              r11, 437
                        mov              r10, 57;                             jmp   n489_define_α
n488_statement_begin_β: mov              r11, 437;                            jmp   n491_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n489_define_α:          mov              r11, 438
                        mov              rdi, qword ptr [rip + .Lx1333_0]
                        mov              rsi, qword ptr [rip + .Lx1333_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n529_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1333_0]
                        lea              rsi, [rip + Pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n490_statement_end_α
n489_define_β:          mov              r11, 438;                            jmp   n488_statement_begin_β
.Lx1333_0:              .quad            .Lx1333_0_s
.Lx1333_0_s:            .string          "Pop_final"
.Lx1333_1:              .quad            .Lx1333_1_s
.Lx1333_1_s:            .string          "vs"
                                                                              jmp   .Lx1334_245
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
.Lx1334_41:             lea              rcx, [rip + Pop_final_γ]
                        lea              rax, [rip + Pop_final_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n529_statement_begin_α]; jmp   rax
Pop_final_γ:            mov              rdi, qword ptr [r9 + 384]            # Pop_final
                        mov              rsi, qword ptr [r9 + 392]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 384], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 392], rax
                        cmp              rdx, 0;                              jbe   .Lx1334_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1334_110
.Lx1334_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1334_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1334_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 240], rax            # vs
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 248], rax;           jmp   .Lx1334_180
.Lx1334_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 240], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 248], rax
.Lx1334_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1334_245:
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_end_α:   mov              r11, 439
                        mov              r10, 57;                             jmp   n491_statement_begin_α
#=======================================================================================================================
#                 DEFINE('Pop_final(vs)');    DEFINE('pop_final(v)')      :(StackEnd)
#-----------------------------------------------------------------------------------------------------------------------
n491_statement_begin_α: mov              r11, 440
                        mov              r10, 58;                             jmp   n492_define_α
n491_statement_begin_β: mov              r11, 440;                            jmp   n621_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n492_define_α:          mov              r11, 441
                        mov              rdi, qword ptr [rip + .Lx1340_0]
                        mov              rsi, qword ptr [rip + .Lx1340_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n610_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lx1340_0]
                        lea              rsi, [rip + pop_final_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n493_statement_end_α
n492_define_β:          mov              r11, 441;                            jmp   n491_statement_begin_β
.Lx1340_0:              .quad            .Lx1340_0_s
.Lx1340_0_s:            .string          "pop_final"
.Lx1340_1:              .quad            .Lx1340_1_s
.Lx1340_1_s:            .string          "v"
                                                                              jmp   .Lx1341_245
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
.Lx1341_41:             lea              rcx, [rip + pop_final_γ]
                        lea              rax, [rip + pop_final_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n610_statement_begin_α]; jmp   rax
pop_final_γ:            mov              rdi, qword ptr [r9 + 400]            # pop_final
                        mov              rsi, qword ptr [r9 + 408]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 400], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 408], rax
                        cmp              rdx, 0;                              jbe   .Lx1341_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1341_110
.Lx1341_80:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1341_110:            mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx1341_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 272], rax            # v
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 280], rax;           jmp   .Lx1341_180
.Lx1341_150:            mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 280], rax
.Lx1341_180:            mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx1341_245:
#-----------------------------------------------------------------------------------------------------------------------
n493_statement_end_α:   mov              r11, 442
                        mov              r10, 58;                             jmp   n621_statement_begin_α
#=======================================================================================================================
# Init_list       Init_list       =   EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n494_statement_begin_α: mov              r11, 443
                        mov              r10, 59;                             jmp   n495_lit_string_α
n494_statement_begin_β: mov              r11, 443;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      sub              rsp, 16
                        mov              r11, 444
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n496_var_α
.Lx1346_0:              .quad            .Lx1346_0_s
.Lx1346_0_s:            .string          "epsilon . *init_list("
#-----------------------------------------------------------------------------------------------------------------------
n496_var_α:             sub              rsp, 16
                        mov              r11, 445
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n497_binop_α
n496_var_β:             mov              r11, 445
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n494_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n497_binop_α:           sub              rsp, 16
                        mov              r11, 446
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n498_lit_string_α
n497_binop_β:           mov              r11, 446
                        add              rsp, 16;                             jmp   n496_var_β
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:      sub              rsp, 16
                        mov              r11, 447
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n499_binop_α
n498_lit_string_β:      mov              r11, 447
                        add              rsp, 16;                             jmp   n497_binop_β
.Lx1349_0:              .quad            .Lx1349_0_s
.Lx1349_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n499_binop_α:           sub              rsp, 16
                        mov              r11, 448
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_call_α
n499_binop_β:           mov              r11, 448
                        add              rsp, 16;                             jmp   n498_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n500_call_α:            sub              rsp, 16
                        mov              r11, 449
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1352:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1352]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262169
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1351_240
                        add              rsp, 16;                             jmp   n499_binop_β
.Lx1351_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n501_assign_α
n500_call_β:            mov              r11, 449
                        add              rsp, 16;                             jmp   n499_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n501_assign_α:          mov              r11, 450
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # Init_list
                        mov              qword ptr [r9 + 232], rdx;           jmp   n502_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_end_α:   mov              r11, 451
                        mov              r10, 59
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_list       Push_list       =   EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_begin_α: mov              r11, 452
                        mov              r10, 60;                             jmp   n504_lit_string_α
n503_statement_begin_β: mov              r11, 452;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:      sub              rsp, 16
                        mov              r11, 453
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n505_var_α
.Lx1358_0:              .quad            .Lx1358_0_s
.Lx1358_0_s:            .string          "epsilon . *push_list("
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:             sub              rsp, 16
                        mov              r11, 454
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n506_binop_α
n505_var_β:             mov              r11, 454
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n503_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n506_binop_α:           sub              rsp, 16
                        mov              r11, 455
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_lit_string_α
n506_binop_β:           mov              r11, 455
                        add              rsp, 16;                             jmp   n505_var_β
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:      sub              rsp, 16
                        mov              r11, 456
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n508_binop_α
n507_lit_string_β:      mov              r11, 456
                        add              rsp, 16;                             jmp   n506_binop_β
.Lx1361_0:              .quad            .Lx1361_0_s
.Lx1361_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n508_binop_α:           sub              rsp, 16
                        mov              r11, 457
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n509_call_α
n508_binop_β:           mov              r11, 457
                        add              rsp, 16;                             jmp   n507_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n509_call_α:            sub              rsp, 16
                        mov              r11, 458
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1364:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1364]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262169
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1363_240
                        add              rsp, 16;                             jmp   n508_binop_β
.Lx1363_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n510_assign_α
n509_call_β:            mov              r11, 458
                        add              rsp, 16;                             jmp   n508_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n510_assign_α:          mov              r11, 459
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # Push_list
                        mov              qword ptr [r9 + 296], rdx;           jmp   n511_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n511_statement_end_α:   mov              r11, 460
                        mov              r10, 60
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Push_item       Push_item       =   EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n512_statement_begin_α: mov              r11, 461
                        mov              r10, 61;                             jmp   n513_lit_string_α
n512_statement_begin_β: mov              r11, 461;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:      sub              rsp, 16
                        mov              r11, 462
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n514_var_α
.Lx1370_0:              .quad            .Lx1370_0_s
.Lx1370_0_s:            .string          "epsilon . *push_item("
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:             sub              rsp, 16
                        mov              r11, 463
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n515_binop_α
n514_var_β:             mov              r11, 463
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n512_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n515_binop_α:           sub              rsp, 16
                        mov              r11, 464
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_lit_string_α
n515_binop_β:           mov              r11, 464
                        add              rsp, 16;                             jmp   n514_var_β
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:      sub              rsp, 16
                        mov              r11, 465
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n517_binop_α
n516_lit_string_β:      mov              r11, 465
                        add              rsp, 16;                             jmp   n515_binop_β
.Lx1373_0:              .quad            .Lx1373_0_s
.Lx1373_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n517_binop_α:           sub              rsp, 16
                        mov              r11, 466
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n518_call_α
n517_binop_β:           mov              r11, 466
                        add              rsp, 16;                             jmp   n516_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n518_call_α:            sub              rsp, 16
                        mov              r11, 467
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1376:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1376]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262169
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1375_240
                        add              rsp, 16;                             jmp   n517_binop_β
.Lx1375_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n519_assign_α
n518_call_β:            mov              r11, 467
                        add              rsp, 16;                             jmp   n517_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n519_assign_α:          mov              r11, 468
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # Push_item
                        mov              qword ptr [r9 + 328], rdx;           jmp   n520_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n520_statement_end_α:   mov              r11, 469
                        mov              r10, 61
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# Pop_list        Pop_list        =         epsilon . *pop_list()           :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n521_statement_begin_α: mov              r11, 470
                        mov              r10, 62;                             jmp   n522_var_α
n521_statement_begin_β: mov              r11, 470;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:             sub              rsp, 16
                        mov              r11, 471
                        mov              rax, qword ptr [r9 + 416]            # epsilon
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n523_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n523_assign_α:          mov              r11, 472
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax            # PAT$0$V0
                        mov              qword ptr [r9 + 600], rdx;           jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      sub              rsp, 16
                        mov              r11, 473
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n525_lit_string_α
n524_lit_string_β:      mov              r11, 473
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n521_statement_begin_β
.Lx1384_0:              .quad            .Lx1384_0_s
.Lx1384_0_s:            .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      sub              rsp, 16
                        mov              r11, 474
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1385_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n526_call_α
n525_lit_string_β:      mov              r11, 474
                        add              rsp, 16;                             jmp   n524_lit_string_β
.Lx1385_0:              .quad            .Lx1385_0_s
.Lx1385_0_s:            .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            sub              rsp, 16
                        mov              r11, 475
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
.Lrkfnzd1387:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1387]
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
                        cmp              al, 104;                             jne   .Lx1386_240
                        add              rsp, 16;                             jmp   n525_lit_string_β
.Lx1386_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n527_assign_α
n526_call_β:            mov              r11, 475
                        add              rsp, 16;                             jmp   n525_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n527_assign_α:          mov              r11, 476
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # Pop_list
                        mov              qword ptr [r9 + 360], rdx;           jmp   n528_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_end_α:   mov              r11, 477
                        mov              r10, 62
                        add              rsp, 64;                             jmp   RETURN
#=======================================================================================================================
# Pop_final       Pop_final       =   EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n529_statement_begin_α: mov              r11, 478
                        mov              r10, 63;                             jmp   n530_lit_string_α
n529_statement_begin_β: mov              r11, 478;                            jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:      sub              rsp, 16
                        mov              r11, 479
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx1393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n531_var_α
.Lx1393_0:              .quad            .Lx1393_0_s
.Lx1393_0_s:            .string          "epsilon . *pop_final("
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:             sub              rsp, 16
                        mov              r11, 480
                        mov              rax, qword ptr [r9 + 240]            # vs
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n532_binop_α
n531_var_β:             mov              r11, 480
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n529_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n532_binop_α:           sub              rsp, 16
                        mov              r11, 481
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n533_lit_string_α
n532_binop_β:           mov              r11, 481
                        add              rsp, 16;                             jmp   n531_var_β
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:      sub              rsp, 16
                        mov              r11, 482
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1396_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n534_binop_α
n533_lit_string_β:      mov              r11, 482
                        add              rsp, 16;                             jmp   n532_binop_β
.Lx1396_0:              .quad            .Lx1396_0_s
.Lx1396_0_s:            .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n534_binop_α:           sub              rsp, 16
                        mov              r11, 483
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n535_call_α
n534_binop_β:           mov              r11, 483
                        add              rsp, 16;                             jmp   n533_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n535_call_α:            sub              rsp, 16
                        mov              r11, 484
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1399:           .string          "EVAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1399]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262169
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1398_240
                        add              rsp, 16;                             jmp   n534_binop_β
.Lx1398_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n536_assign_α
n535_call_β:            mov              r11, 484
                        add              rsp, 16;                             jmp   n534_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n536_assign_α:          mov              r11, 485
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 384], rax            # Pop_final
                        mov              qword ptr [r9 + 392], rdx;           jmp   n537_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n537_statement_end_α:   mov              r11, 486
                        mov              r10, 63
                        add              rsp, 96;                             jmp   RETURN
#=======================================================================================================================
# init_list       $v              =
#-----------------------------------------------------------------------------------------------------------------------
n538_statement_begin_α: mov              r11, 487
                        mov              r10, 64;                             jmp   n539_var_α
n538_statement_begin_β: mov              r11, 487;                            jmp   n544_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_α:             sub              rsp, 16
                        mov              r11, 488
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n540_call_α
#-----------------------------------------------------------------------------------------------------------------------
n540_call_α:            sub              rsp, 16
                        mov              r11, 489
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1407:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1407]
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
                        cmp              al, 104;                             jne   .Lx1406_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n538_statement_begin_β
.Lx1406_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n541_lit_string_α
n540_call_β:            mov              r11, 489
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n538_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      sub              rsp, 16
                        mov              r11, 490
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1408_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n542_assign_var_α
n541_lit_string_β:      mov              r11, 490
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n538_statement_begin_β
.Lx1408_0:              .quad            .Lx1408_0_s
.Lx1408_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n542_assign_var_α:      sub              rsp, 16
                        mov              r11, 491
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1409_240
                        add              rsp, 16;                             jmp   n541_lit_string_β
.Lx1409_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n543_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n543_statement_end_α:   mov              r11, 492
                        mov              r10, 64
                        add              rsp, 64;                             jmp   n544_statement_begin_α
#=======================================================================================================================
#                 tags            =   TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n544_statement_begin_α: mov              r11, 493
                        mov              r10, 65;                             jmp   n545_call_α
n544_statement_begin_β: mov              r11, 493;                            jmp   n548_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_α:            sub              rsp, 16
                        mov              r11, 494
                        .section         .rodata
.Lrkfnzd1415:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1415]
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
                        cmp              al, 104;                             jne   .Lx1414_240
                        add              rsp, 16;                             jmp   n544_statement_begin_β
.Lx1414_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n546_assign_α
n545_call_β:            mov              r11, 494
                        add              rsp, 16;                             jmp   n544_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n546_assign_α:          mov              r11, 495
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax            # tags
                        mov              qword ptr [r9 + 440], rdx;           jmp   n547_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n547_statement_end_α:   mov              r11, 496
                        mov              r10, 65
                        add              rsp, 16;                             jmp   n548_statement_begin_α
#=======================================================================================================================
#                 stack           =   list()
#-----------------------------------------------------------------------------------------------------------------------
n548_statement_begin_α: mov              r11, 497
                        mov              r10, 66;                             jmp   n549_call_α
n548_statement_begin_β: mov              r11, 497;                            jmp   n552_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n549_call_α:            sub              rsp, 16
                        mov              r11, 498
                        .section         .rodata
.Lrkfnzd1422:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1422]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262276
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1421_240
                        add              rsp, 16;                             jmp   n548_statement_begin_β
.Lx1421_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n550_assign_α
n549_call_β:            mov              r11, 498
                        add              rsp, 16;                             jmp   n548_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n550_assign_α:          mov              r11, 499
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax            # stack
                        mov              qword ptr [r9 + 456], rdx;           jmp   n551_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n551_statement_end_α:   mov              r11, 500
                        mov              r10, 66
                        add              rsp, 16;                             jmp   n552_statement_begin_α
#=======================================================================================================================
#                 init_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n552_statement_begin_α: mov              r11, 501
                        mov              r10, 67;                             jmp   n553_lit_name_α
n552_statement_begin_β: mov              r11, 501;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_name_α:        sub              rsp, 16
                        mov              r11, 502
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1428_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n554_assign_α
.Lx1428_0:              .quad            .Lx1428_0_s
.Lx1428_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:          mov              r11, 503
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # init_list
                        mov              qword ptr [r9 + 264], rdx;           jmp   n555_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n555_statement_end_α:   mov              r11, 504
                        mov              r10, 67
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# push_list       tags[v]         =   tags[v] + 1
#-----------------------------------------------------------------------------------------------------------------------
n556_statement_begin_α: mov              r11, 505
                        mov              r10, 68;                             jmp   n557_var_α
n556_statement_begin_β: mov              r11, 505;                            jmp   n568_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_α:             sub              rsp, 16
                        mov              r11, 506
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n558_var_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_α:             sub              rsp, 16
                        mov              r11, 507
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n559_subscript_α
n558_var_β:             mov              r11, 507
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n556_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n559_subscript_α:       sub              rsp, 16
                        mov              r11, 508
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
                        cmp              al, 104;                             jne   .Lx1436_240
                        add              rsp, 16;                             jmp   n558_var_β
.Lx1436_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n560_var_α
n559_subscript_β:       mov              r11, 508
                        add              rsp, 16;                             jmp   n558_var_β
#-----------------------------------------------------------------------------------------------------------------------
n560_var_α:             sub              rsp, 16
                        mov              r11, 509
                        mov              rax, qword ptr [r9 + 432]            # tags
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n561_var_α
n560_var_β:             mov              r11, 509
                        add              rsp, 16;                             jmp   n559_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:             sub              rsp, 16
                        mov              r11, 510
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n562_subscript_α
n561_var_β:             mov              r11, 510
                        add              rsp, 16;                             jmp   n560_var_β
#-----------------------------------------------------------------------------------------------------------------------
n562_subscript_α:       sub              rsp, 16
                        mov              r11, 511
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
                        cmp              al, 104;                             jne   .Lx1439_240
                        add              rsp, 16;                             jmp   n561_var_β
.Lx1439_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n563_deref_α
n562_subscript_β:       mov              r11, 511
                        add              rsp, 16;                             jmp   n561_var_β
#-----------------------------------------------------------------------------------------------------------------------
n563_deref_α:           sub              rsp, 16
                        mov              r11, 512
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
                        cmp              al, 104;                             jne   .Lx1440_240
                        add              rsp, 16;                             jmp   n562_subscript_β
.Lx1440_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n564_lit_integer_α
n563_deref_β:           mov              r11, 512
                        add              rsp, 16;                             jmp   n562_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_integer_α:     sub              rsp, 16
                        mov              r11, 513
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1441_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n565_binop_α
n564_lit_integer_β:     mov              r11, 513
                        add              rsp, 16;                             jmp   n563_deref_β
.Lx1441_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n565_binop_α:           sub              rsp, 16
                        mov              r11, 514
                        mov              ecx, dword ptr [rsp + 32]            # deref
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx1442_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx1442_7
.Lx1442_2:              mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx1442_0
                        mov              rsi, qword ptr [rsp + 40]            # deref
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1442_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1442_4
.Lx1442_3:              movq             xmm0, rsi
.Lx1442_4:              cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx1442_7:                                                                    jmp   n566_assign_var_α
.Lx1442_0:              mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx1442_240
                        add              rsp, 16;                             jmp   n564_lit_integer_β
.Lx1442_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_assign_var_α
n565_binop_β:           mov              r11, 514
                        add              rsp, 16;                             jmp   n564_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_var_α:      sub              rsp, 16
                        mov              r11, 515
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]
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
                        cmp              al, 104;                             jne   .Lx1443_240
                        add              rsp, 16;                             jmp   n565_binop_β
.Lx1443_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n567_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n567_statement_end_α:   mov              r11, 516
                        mov              r10, 68
                        add              rsp, 160;                            jmp   n568_statement_begin_α
#=======================================================================================================================
#                 ListAppend(stack, list())
#-----------------------------------------------------------------------------------------------------------------------
n568_statement_begin_α: mov              r11, 517
                        mov              r10, 69;                             jmp   n569_var_α
n568_statement_begin_β: mov              r11, 517;                            jmp   n573_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_α:             sub              rsp, 16
                        mov              r11, 518
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n570_call_α
#-----------------------------------------------------------------------------------------------------------------------
n570_call_α:            sub              rsp, 16
                        mov              r11, 519
                        .section         .rodata
.Lrkfnzd1450:           .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1450]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 262276
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1449_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n568_statement_begin_β
.Lx1449_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n571_call_α
n570_call_β:            mov              r11, 519
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n568_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:            sub              rsp, 16
                        mov              r11, 520
                        lea              rcx, [rip + .Lsig1452z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1452z:             .quad            2
                        .quad            .Lx1452_2
                        .quad            .Lx1452_2
                        .quad            32
                        .quad            16
.Lx1452_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1452_29
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
.Lx1452_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1452_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n568_statement_begin_β
.Lx1452_240:                                                                  jmp   n572_statement_end_α
n571_call_β:            mov              r11, 520;                            jmp   n568_statement_begin_β
.Lx1452_0:              .quad            .Lx1452_0_s
.Lx1452_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n572_statement_end_α:   mov              r11, 521
                        mov              r10, 69
                        add              rsp, 48;                             jmp   n573_statement_begin_α
#=======================================================================================================================
#                 ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n573_statement_begin_α: mov              r11, 522
                        mov              r10, 70;                             jmp   n574_var_α
n573_statement_begin_β: mov              r11, 522;                            jmp   n581_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_α:             sub              rsp, 16
                        mov              r11, 523
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n575_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_integer_α:     sub              rsp, 16
                        mov              r11, 524
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1458_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n576_unop_α
n575_lit_integer_β:     mov              r11, 524
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n573_statement_begin_β
.Lx1458_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n576_unop_α:            sub              rsp, 16
                        mov              r11, 525
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n577_call_α
n576_unop_β:            mov              r11, 525
                        add              rsp, 16;                             jmp   n575_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            sub              rsp, 16
                        mov              r11, 526
                        lea              rcx, [rip + .Lsig1461z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1461z:             .quad            2
                        .quad            .Lx1461_2
                        .quad            .Lx1461_2
                        .quad            48
                        .quad            16
.Lx1461_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1461_29
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
.Lx1461_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1461_240
                        add              rsp, 16;                             jmp   n576_unop_β
.Lx1461_240:                                                                  jmp   n578_var_α
n577_call_β:            mov              r11, 526;                            jmp   n576_unop_β
.Lx1461_0:              .quad            .Lx1461_0_s
.Lx1461_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:             sub              rsp, 16
                        mov              r11, 527
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n579_call_α
n578_var_β:             mov              r11, 527
                        add              rsp, 32;                             jmp   n576_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n579_call_α:            sub              rsp, 16
                        mov              r11, 528
                        lea              rcx, [rip + .Lsig1464z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1464z:             .quad            2
                        .quad            .Lx1464_2
                        .quad            .Lx1464_2
                        .quad            32
                        .quad            16
.Lx1464_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1464_29
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
.Lx1464_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1464_240
                        add              rsp, 16;                             jmp   n578_var_β
.Lx1464_240:                                                                  jmp   n580_statement_end_α
n579_call_β:            mov              r11, 528;                            jmp   n578_var_β
.Lx1464_0:              .quad            .Lx1464_0_s
.Lx1464_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n580_statement_end_α:   mov              r11, 529
                        mov              r10, 70
                        add              rsp, 96;                             jmp   n581_statement_begin_α
#=======================================================================================================================
#                 push_list       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n581_statement_begin_α: mov              r11, 530
                        mov              r10, 71;                             jmp   n582_lit_name_α
n581_statement_begin_β: mov              r11, 530;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_name_α:        sub              rsp, 16
                        mov              r11, 531
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n583_assign_α
.Lx1469_0:              .quad            .Lx1469_0_s
.Lx1469_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n583_assign_α:          mov              r11, 532
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # push_list
                        mov              qword ptr [r9 + 312], rdx;           jmp   n584_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n584_statement_end_α:   mov              r11, 533
                        mov              r10, 71
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# push_item       ListAppend(ListValue(stack, -1), v)
#-----------------------------------------------------------------------------------------------------------------------
n585_statement_begin_α: mov              r11, 534
                        mov              r10, 72;                             jmp   n586_var_α
n585_statement_begin_β: mov              r11, 534;                            jmp   n593_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n586_var_α:             sub              rsp, 16
                        mov              r11, 535
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n587_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_integer_α:     sub              rsp, 16
                        mov              r11, 536
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1476_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n588_unop_α
n587_lit_integer_β:     mov              r11, 536
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n585_statement_begin_β
.Lx1476_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n588_unop_α:            sub              rsp, 16
                        mov              r11, 537
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n589_call_α
n588_unop_β:            mov              r11, 537
                        add              rsp, 16;                             jmp   n587_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            sub              rsp, 16
                        mov              r11, 538
                        lea              rcx, [rip + .Lsig1479z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1479z:             .quad            2
                        .quad            .Lx1479_2
                        .quad            .Lx1479_2
                        .quad            48
                        .quad            16
.Lx1479_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1479_29
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
.Lx1479_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1479_240
                        add              rsp, 16;                             jmp   n588_unop_β
.Lx1479_240:                                                                  jmp   n590_var_α
n589_call_β:            mov              r11, 538;                            jmp   n588_unop_β
.Lx1479_0:              .quad            .Lx1479_0_s
.Lx1479_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n590_var_α:             sub              rsp, 16
                        mov              r11, 539
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n591_call_α
n590_var_β:             mov              r11, 539
                        add              rsp, 32;                             jmp   n588_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n591_call_α:            sub              rsp, 16
                        mov              r11, 540
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
.Lx1482_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1482_240
                        add              rsp, 16;                             jmp   n590_var_β
.Lx1482_240:                                                                  jmp   n592_statement_end_α
n591_call_β:            mov              r11, 540;                            jmp   n590_var_β
.Lx1482_0:              .quad            .Lx1482_0_s
.Lx1482_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n592_statement_end_α:   mov              r11, 541
                        mov              r10, 72
                        add              rsp, 96;                             jmp   n593_statement_begin_α
#=======================================================================================================================
#                 push_item       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n593_statement_begin_α: mov              r11, 542
                        mov              r10, 73;                             jmp   n594_lit_name_α
n593_statement_begin_β: mov              r11, 542;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_name_α:        sub              rsp, 16
                        mov              r11, 543
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1487_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n595_assign_α
.Lx1487_0:              .quad            .Lx1487_0_s
.Lx1487_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n595_assign_α:          mov              r11, 544
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # push_item
                        mov              qword ptr [r9 + 344], rdx;           jmp   n596_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n596_statement_end_α:   mov              r11, 545
                        mov              r10, 73
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# pop_list        ListAppend(ListValue(stack, -2), ListPop(stack))
#-----------------------------------------------------------------------------------------------------------------------
n597_statement_begin_α: mov              r11, 546
                        mov              r10, 74;                             jmp   n598_var_α
n597_statement_begin_β: mov              r11, 546;                            jmp   n606_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:             sub              rsp, 16
                        mov              r11, 547
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n599_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_integer_α:     sub              rsp, 16
                        mov              r11, 548
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n600_unop_α
n599_lit_integer_β:     mov              r11, 548
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n597_statement_begin_β
.Lx1494_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n600_unop_α:            sub              rsp, 16
                        mov              r11, 549
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n601_call_α
n600_unop_β:            mov              r11, 549
                        add              rsp, 16;                             jmp   n599_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            sub              rsp, 16
                        mov              r11, 550
                        lea              rcx, [rip + .Lsig1497z]
                        lea              rax, [rip + ListValue_α];            jmp   rax
.Lsig1497z:             .quad            2
                        .quad            .Lx1497_2
                        .quad            .Lx1497_2
                        .quad            48
                        .quad            16
.Lx1497_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1497_29
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
.Lx1497_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1497_240
                        add              rsp, 16;                             jmp   n600_unop_β
.Lx1497_240:                                                                  jmp   n602_var_α
n601_call_β:            mov              r11, 550;                            jmp   n600_unop_β
.Lx1497_0:              .quad            .Lx1497_0_s
.Lx1497_0_s:            .string          "ListValue"
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:             sub              rsp, 16
                        mov              r11, 551
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n603_call_α
n602_var_β:             mov              r11, 551
                        add              rsp, 32;                             jmp   n600_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n603_call_α:            sub              rsp, 16
                        mov              r11, 552
                        lea              rcx, [rip + .Lsig1500z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1500z:             .quad            1
                        .quad            .Lx1500_2
                        .quad            .Lx1500_2
                        .quad            16
.Lx1500_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1500_29
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
.Lx1500_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1500_240
                        add              rsp, 16;                             jmp   n602_var_β
.Lx1500_240:                                                                  jmp   n604_call_α
n603_call_β:            mov              r11, 552;                            jmp   n602_var_β
.Lx1500_0:              .quad            .Lx1500_0_s
.Lx1500_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            sub              rsp, 16
                        mov              r11, 553
                        lea              rcx, [rip + .Lsig1502z]
                        lea              rax, [rip + ListAppend_α];           jmp   rax
.Lsig1502z:             .quad            2
                        .quad            .Lx1502_2
                        .quad            .Lx1502_2
                        .quad            48
                        .quad            16
.Lx1502_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1502_29
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
.Lx1502_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1502_240
                        add              rsp, 32;                             jmp   n602_var_β
.Lx1502_240:                                                                  jmp   n605_statement_end_α
n604_call_β:            mov              r11, 553;                            jmp   n602_var_β
.Lx1502_0:              .quad            .Lx1502_0_s
.Lx1502_0_s:            .string          "ListAppend"
#-----------------------------------------------------------------------------------------------------------------------
n605_statement_end_α:   mov              r11, 554
                        mov              r10, 74
                        add              rsp, 112;                            jmp   n606_statement_begin_α
#=======================================================================================================================
#                 pop_list        =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n606_statement_begin_α: mov              r11, 555
                        mov              r10, 75;                             jmp   n607_lit_name_α
n606_statement_begin_β: mov              r11, 555;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_name_α:        sub              rsp, 16
                        mov              r11, 556
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n608_assign_α
.Lx1507_0:              .quad            .Lx1507_0_s
.Lx1507_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n608_assign_α:          mov              r11, 557
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax            # pop_list
                        mov              qword ptr [r9 + 376], rdx;           jmp   n609_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n609_statement_end_α:   mov              r11, 558
                        mov              r10, 75
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# pop_final       $v              =   ListPop(stack)
#-----------------------------------------------------------------------------------------------------------------------
n610_statement_begin_α: mov              r11, 559
                        mov              r10, 76;                             jmp   n611_var_α
n610_statement_begin_β: mov              r11, 559;                            jmp   n617_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:             sub              rsp, 16
                        mov              r11, 560
                        mov              rax, qword ptr [r9 + 272]            # v
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n612_call_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_α:            sub              rsp, 16
                        mov              r11, 561
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1515:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1515]
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
                        cmp              al, 104;                             jne   .Lx1514_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n610_statement_begin_β
.Lx1514_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n613_var_α
n612_call_β:            mov              r11, 561
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n610_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n613_var_α:             sub              rsp, 16
                        mov              r11, 562
                        mov              rax, qword ptr [r9 + 448]            # stack
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n614_call_α
n613_var_β:             mov              r11, 562
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n610_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n614_call_α:            sub              rsp, 16
                        mov              r11, 563
                        lea              rcx, [rip + .Lsig1518z]
                        lea              rax, [rip + ListPop_α];              jmp   rax
.Lsig1518z:             .quad            1
                        .quad            .Lx1518_2
                        .quad            .Lx1518_2
                        .quad            16
.Lx1518_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1518_29
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
.Lx1518_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1518_240
                        add              rsp, 16;                             jmp   n613_var_β
.Lx1518_240:                                                                  jmp   n615_assign_var_α
n614_call_β:            mov              r11, 563;                            jmp   n613_var_β
.Lx1518_0:              .quad            .Lx1518_0_s
.Lx1518_0_s:            .string          "ListPop"
#-----------------------------------------------------------------------------------------------------------------------
n615_assign_var_α:      sub              rsp, 16
                        mov              r11, 564
                        mov              rdi, qword ptr [rsp + 48]            # call
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1519_240
                        add              rsp, 32;                             jmp   n613_var_β
.Lx1519_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n616_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n616_statement_end_α:   mov              r11, 565
                        mov              r10, 76
                        add              rsp, 80;                             jmp   n617_statement_begin_α
#=======================================================================================================================
#                 pop_final       =   .dummy                          :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n617_statement_begin_α: mov              r11, 566
                        mov              r10, 77;                             jmp   n618_lit_name_α
n617_statement_begin_β: mov              r11, 566;                            jmp   NRETURN
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_name_α:        sub              rsp, 16
                        mov              r11, 567
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n619_assign_α
.Lx1524_0:              .quad            .Lx1524_0_s
.Lx1524_0_s:            .string          "dummy"
#-----------------------------------------------------------------------------------------------------------------------
n619_assign_α:          mov              r11, 568
                        mov              rax, qword ptr [rsp + 0]             # lit_name
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax            # pop_final
                        mov              qword ptr [r9 + 408], rdx;           jmp   n620_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n620_statement_end_α:   mov              r11, 569
                        mov              r10, 77
                        add              rsp, 16;                             jmp   NRETURN
#=======================================================================================================================
# StackEnd        delim           =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n621_statement_begin_α: mov              r11, 570
                        mov              r10, 78;                             jmp   n622_lit_string_α
n621_statement_begin_β: mov              r11, 570;                            jmp   n626_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      sub              rsp, 16
                        mov              r11, 571
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1530_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n623_call_α
.Lx1530_0:              .quad            .Lx1530_0_s
.Lx1530_0_s:            .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_α:            sub              rsp, 16
                        mov              r11, 572
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1532:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1532]
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
                        cmp              al, 104;                             jne   .Lx1531_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n621_statement_begin_β
.Lx1531_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n624_assign_α
n623_call_β:            mov              r11, 572
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n621_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n624_assign_α:          mov              r11, 573
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax            # delim
                        mov              qword ptr [r9 + 488], rdx;           jmp   n625_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n625_statement_end_α:   mov              r11, 574
                        mov              r10, 78
                        add              rsp, 32;                             jmp   n626_statement_begin_α
#=======================================================================================================================
#                 word            =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n626_statement_begin_α: mov              r11, 575
                        mov              r10, 79;                             jmp   n627_lit_string_α
n626_statement_begin_β: mov              r11, 575;                            jmp   n631_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      sub              rsp, 16
                        mov              r11, 576
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n628_call_α
.Lx1538_0:              .quad            .Lx1538_0_s
.Lx1538_0_s:            .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n628_call_α:            sub              rsp, 16
                        mov              r11, 577
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1540:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1540]
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
                        cmp              al, 104;                             jne   .Lx1539_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n626_statement_begin_β
.Lx1539_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n629_assign_α
n628_call_β:            mov              r11, 577
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n626_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n629_assign_α:          mov              r11, 578
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax            # word
                        mov              qword ptr [r9 + 504], rdx;           jmp   n630_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n630_statement_end_α:   mov              r11, 579
                        mov              r10, 79
                        add              rsp, 32;                             jmp   n631_statement_begin_α
#=======================================================================================================================
#                 group           =   '('
#-----------------------------------------------------------------------------------------------------------------------
n631_statement_begin_α: mov              r11, 580
                        mov              r10, 80;                             jmp   n632_var_α
n631_statement_begin_β: mov              r11, 580;                            jmp   n651_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_α:             sub              rsp, 16
                        mov              r11, 581
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n633_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:          mov              r11, 582
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 616], rdx;           jmp   n634_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      sub              rsp, 16
                        mov              r11, 583
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n635_call_α
n634_lit_string_β:      mov              r11, 583
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n631_statement_begin_β
.Lx1548_0:              .quad            .Lx1548_0_s
.Lx1548_0_s:            .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_α:            sub              rsp, 16
                        mov              r11, 584
                        lea              rcx, [rip + .Lsig1550z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1550z:             .quad            1
                        .quad            .Lx1550_2
                        .quad            .Lx1550_2
                        .quad            16
.Lx1550_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1550_29
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
.Lx1550_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1550_240
                        add              rsp, 16;                             jmp   n634_lit_string_β
.Lx1550_240:                                                                  jmp   n636_assign_α
n635_call_β:            mov              r11, 584;                            jmp   n634_lit_string_β
.Lx1550_0:              .quad            .Lx1550_0_s
.Lx1550_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n636_assign_α:          mov              r11, 585
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax            # PAT$3$V1
                        mov              qword ptr [r9 + 632], rdx;           jmp   n637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_α:             sub              rsp, 16
                        mov              r11, 586
                        mov              rax, qword ptr [r9 + 496]            # word
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n638_assign_α
n637_var_β:             mov              r11, 586
                        add              rsp, 32;                             jmp   n634_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n638_assign_α:          mov              r11, 587
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax            # PAT$3$V2
                        mov              qword ptr [r9 + 648], rdx;           jmp   n639_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n639_lit_string_α:      sub              rsp, 16
                        mov              r11, 588
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx1554_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n640_call_α
n639_lit_string_β:      mov              r11, 588
                        add              rsp, 16;                             jmp   n637_var_β
.Lx1554_0:              .quad            .Lx1554_0_s
.Lx1554_0_s:            .string          "wrd"
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:            sub              rsp, 16
                        mov              r11, 589
                        lea              rcx, [rip + .Lsig1556z]
                        lea              rax, [rip + Push_item_α];            jmp   rax
.Lsig1556z:             .quad            1
                        .quad            .Lx1556_2
                        .quad            .Lx1556_2
                        .quad            16
.Lx1556_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1556_29
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
.Lx1556_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1556_240
                        add              rsp, 16;                             jmp   n639_lit_string_β
.Lx1556_240:                                                                  jmp   n641_assign_α
n640_call_β:            mov              r11, 589;                            jmp   n639_lit_string_β
.Lx1556_0:              .quad            .Lx1556_0_s
.Lx1556_0_s:            .string          "Push_item"
#-----------------------------------------------------------------------------------------------------------------------
n641_assign_α:          mov              r11, 590
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax            # PAT$3$V3
                        mov              qword ptr [r9 + 664], rdx;           jmp   n642_var_α
#-----------------------------------------------------------------------------------------------------------------------
n642_var_α:             sub              rsp, 16
                        mov              r11, 591
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n643_assign_α
n642_var_β:             mov              r11, 591
                        add              rsp, 32;                             jmp   n639_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n643_assign_α:          mov              r11, 592
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax            # PAT$3$V4
                        mov              qword ptr [r9 + 680], rdx;           jmp   n644_call_α
#-----------------------------------------------------------------------------------------------------------------------
n644_call_α:            sub              rsp, 16
                        mov              r11, 593
                        lea              rcx, [rip + .Lsig1561z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1561z:             .quad            0
                        .quad            .Lx1561_2
                        .quad            .Lx1561_2
.Lx1561_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1561_29
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
.Lx1561_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1561_240
                        add              rsp, 16;                             jmp   n642_var_β
.Lx1561_240:                                                                  jmp   n645_assign_α
n644_call_β:            mov              r11, 593;                            jmp   n642_var_β
.Lx1561_0:              .quad            .Lx1561_0_s
.Lx1561_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n645_assign_α:          mov              r11, 594
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax            # PAT$3$V5
                        mov              qword ptr [r9 + 696], rdx;           jmp   n646_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_string_α:      sub              rsp, 16
                        mov              r11, 595
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1563_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n647_lit_string_α
n646_lit_string_β:      mov              r11, 595
                        add              rsp, 32;                             jmp   n642_var_β
.Lx1563_0:              .quad            .Lx1563_0_s
.Lx1563_0_s:            .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:      sub              rsp, 16
                        mov              r11, 596
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n648_call_α
n647_lit_string_β:      mov              r11, 596
                        add              rsp, 16;                             jmp   n646_lit_string_β
.Lx1564_0:              .quad            .Lx1564_0_s
.Lx1564_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n648_call_α:            sub              rsp, 16
                        mov              r11, 597
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
.Lrkfnzd1566:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1566]
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
                        cmp              al, 104;                             jne   .Lx1565_240
                        add              rsp, 16;                             jmp   n647_lit_string_β
.Lx1565_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n649_assign_α
n648_call_β:            mov              r11, 597
                        add              rsp, 16;                             jmp   n647_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n649_assign_α:          mov              r11, 598
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax            # group
                        mov              qword ptr [r9 + 520], rdx;           jmp   n650_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n650_statement_end_α:   mov              r11, 599
                        mov              r10, 80
                        add              rsp, 176;                            jmp   n651_statement_begin_α
#=======================================================================================================================
#                 treebank        =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n651_statement_begin_α: mov              r11, 600
                        mov              r10, 81;                             jmp   n652_lit_string_α
n651_statement_begin_β: mov              r11, 600;                            jmp   n673_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      sub              rsp, 16
                        mov              r11, 601
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n653_call_α
.Lx1572_0:              .quad            .Lx1572_0_s
.Lx1572_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n653_call_α:            sub              rsp, 16
                        mov              r11, 602
                        lea              rcx, [rip + .Lsig1574z]
                        lea              rax, [rip + Init_list_α];            jmp   rax
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
.Lx1574_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1574_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n651_statement_begin_β
.Lx1574_240:                                                                  jmp   n654_assign_α
n653_call_β:            mov              r11, 602;                            jmp   n651_statement_begin_β
.Lx1574_0:              .quad            .Lx1574_0_s
.Lx1574_0_s:            .string          "Init_list"
#-----------------------------------------------------------------------------------------------------------------------
n654_assign_α:          mov              r11, 603
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 704], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 712], rdx;           jmp   n655_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_string_α:      sub              rsp, 16
                        mov              r11, 604
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n656_call_α
n655_lit_string_β:      mov              r11, 604
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n651_statement_begin_β
.Lx1576_0:              .quad            .Lx1576_0_s
.Lx1576_0_s:            .string          "'BANK'"
#-----------------------------------------------------------------------------------------------------------------------
n656_call_α:            sub              rsp, 16
                        mov              r11, 605
                        lea              rcx, [rip + .Lsig1578z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1578z:             .quad            1
                        .quad            .Lx1578_2
                        .quad            .Lx1578_2
                        .quad            16
.Lx1578_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1578_29
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
.Lx1578_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1578_240
                        add              rsp, 16;                             jmp   n655_lit_string_β
.Lx1578_240:                                                                  jmp   n657_assign_α
n656_call_β:            mov              r11, 605;                            jmp   n655_lit_string_β
.Lx1578_0:              .quad            .Lx1578_0_s
.Lx1578_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n657_assign_α:          mov              r11, 606
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 720], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 728], rdx;           jmp   n658_call_α
#-----------------------------------------------------------------------------------------------------------------------
n658_call_α:            sub              rsp, 16
                        mov              r11, 607
                        lea              rcx, [rip + .Lsig1581z]
                        lea              rax, [rip + Pop_list_α];             jmp   rax
.Lsig1581z:             .quad            0
                        .quad            .Lx1581_2
                        .quad            .Lx1581_2
.Lx1581_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1581_29
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
.Lx1581_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1581_240
                        add              rsp, 32;                             jmp   n655_lit_string_β
.Lx1581_240:                                                                  jmp   n659_assign_α
n658_call_β:            mov              r11, 607;                            jmp   n655_lit_string_β
.Lx1581_0:              .quad            .Lx1581_0_s
.Lx1581_0_s:            .string          "Pop_list"
#-----------------------------------------------------------------------------------------------------------------------
n659_assign_α:          mov              r11, 608
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 736], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 744], rdx;           jmp   n660_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:      sub              rsp, 16
                        mov              r11, 609
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n661_call_α
n660_lit_string_β:      mov              r11, 609
                        add              rsp, 48;                             jmp   n655_lit_string_β
.Lx1583_0:              .quad            .Lx1583_0_s
.Lx1583_0_s:            .string          "'ROOT'"
#-----------------------------------------------------------------------------------------------------------------------
n661_call_α:            sub              rsp, 16
                        mov              r11, 610
                        lea              rcx, [rip + .Lsig1585z]
                        lea              rax, [rip + Push_list_α];            jmp   rax
.Lsig1585z:             .quad            1
                        .quad            .Lx1585_2
                        .quad            .Lx1585_2
                        .quad            16
.Lx1585_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1585_29
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
.Lx1585_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1585_240
                        add              rsp, 16;                             jmp   n660_lit_string_β
.Lx1585_240:                                                                  jmp   n662_assign_α
n661_call_β:            mov              r11, 610;                            jmp   n660_lit_string_β
.Lx1585_0:              .quad            .Lx1585_0_s
.Lx1585_0_s:            .string          "Push_list"
#-----------------------------------------------------------------------------------------------------------------------
n662_assign_α:          mov              r11, 611
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 752], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 760], rdx;           jmp   n663_var_α
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:             sub              rsp, 16
                        mov              r11, 612
                        mov              rax, qword ptr [r9 + 480]            # delim
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n664_assign_α
n663_var_β:             mov              r11, 612
                        add              rsp, 32;                             jmp   n660_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n664_assign_α:          mov              r11, 613
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 768], rax            # PAT$4$V4
                        mov              qword ptr [r9 + 776], rdx;           jmp   n665_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n665_lit_string_α:      sub              rsp, 16
                        mov              r11, 614
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1589_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n666_call_α
n665_lit_string_β:      mov              r11, 614
                        add              rsp, 16;                             jmp   n663_var_β
.Lx1589_0:              .quad            .Lx1589_0_s
.Lx1589_0_s:            .string          "'bank'"
#-----------------------------------------------------------------------------------------------------------------------
n666_call_α:            sub              rsp, 16
                        mov              r11, 615
                        lea              rcx, [rip + .Lsig1591z]
                        lea              rax, [rip + Pop_final_α];            jmp   rax
.Lsig1591z:             .quad            1
                        .quad            .Lx1591_2
                        .quad            .Lx1591_2
                        .quad            16
.Lx1591_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1591_29
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
.Lx1591_29:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx1591_240
                        add              rsp, 16;                             jmp   n665_lit_string_β
.Lx1591_240:                                                                  jmp   n667_assign_α
n666_call_β:            mov              r11, 615;                            jmp   n665_lit_string_β
.Lx1591_0:              .quad            .Lx1591_0_s
.Lx1591_0_s:            .string          "Pop_final"
#-----------------------------------------------------------------------------------------------------------------------
n667_assign_α:          mov              r11, 616
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 784], rax            # PAT$4$V5
                        mov              qword ptr [r9 + 792], rdx;           jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:      sub              rsp, 16
                        mov              r11, 617
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1593_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n669_lit_string_α
n668_lit_string_β:      mov              r11, 617
                        add              rsp, 32;                             jmp   n665_lit_string_β
.Lx1593_0:              .quad            .Lx1593_0_s
.Lx1593_0_s:            .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      sub              rsp, 16
                        mov              r11, 618
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1594_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n670_call_α
n669_lit_string_β:      mov              r11, 618
                        add              rsp, 16;                             jmp   n668_lit_string_β
.Lx1594_0:              .quad            .Lx1594_0_s
.Lx1594_0_s:            .string          "6"
#-----------------------------------------------------------------------------------------------------------------------
n670_call_α:            sub              rsp, 16
                        mov              r11, 619
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
.Lrkfnzd1596:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1596]
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
                        cmp              al, 104;                             jne   .Lx1595_240
                        add              rsp, 16;                             jmp   n669_lit_string_β
.Lx1595_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n671_assign_α
n670_call_β:            mov              r11, 619
                        add              rsp, 16;                             jmp   n669_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n671_assign_α:          mov              r11, 620
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax            # treebank
                        mov              qword ptr [r9 + 568], rdx;           jmp   n672_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n672_statement_end_α:   mov              r11, 621
                        mov              r10, 81
                        add              rsp, 208;                            jmp   n673_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n673_statement_begin_α: mov              r11, 622
                        mov              r10, 82;                             jmp   n674_lit_name_α
n673_statement_begin_β: mov              r11, 622;                            jmp   n679_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_name_α:        sub              rsp, 16
                        mov              r11, 623
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1602_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n675_lit_integer_α
.Lx1602_0:              .quad            .Lx1602_0_s
.Lx1602_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_integer_α:     sub              rsp, 16
                        mov              r11, 624
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx1603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n676_lit_string_α
n675_lit_integer_β:     mov              r11, 624
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n673_statement_begin_β
.Lx1603_0:              .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      sub              rsp, 16
                        mov              r11, 625
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx1604_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n677_call_α
n676_lit_string_β:      mov              r11, 625
                        add              rsp, 16;                             jmp   n675_lit_integer_β
.Lx1604_0:              .quad            .Lx1604_0_s
.Lx1604_0_s:            .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n677_call_α:            sub              rsp, 16
                        mov              r11, 626
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
.Lbynamefnzd626:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd626]
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
                        cmp              al, 104;                             jne   .Lx1605_240
                        add              rsp, 16;                             jmp   n676_lit_string_β
.Lx1605_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n678_statement_end_α
n677_call_β:            mov              r11, 626
                        add              rsp, 16;                             jmp   n676_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n678_statement_end_α:   mov              r11, 627
                        mov              r10, 82
                        add              rsp, 64;                             jmp   n679_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n679_statement_begin_α: mov              r11, 628
                        mov              r10, 83;                             jmp   n680_var_α
n679_statement_begin_β: mov              r11, 628;                            jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:             sub              rsp, 16
                        mov              r11, 629
                        mov              rdi, qword ptr [rip + .Lx1610_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx1610_240
                        add              rsp, 16;                             jmp   n679_statement_begin_β
.Lx1610_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n681_assign_α
.Lx1610_0:              .quad            .Lx1610_0_s
.Lx1610_0_s:            .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n681_assign_α:          mov              r11, 630
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax            # src
                        mov              qword ptr [r9 + 584], rdx;           jmp   n682_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n682_statement_end_α:   mov              r11, 631
                        mov              r10, 83
                        add              rsp, 16;                             jmp   n683_statement_begin_α
#=======================================================================================================================
#                 src             ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n683_statement_begin_α: mov              r11, 632
                        mov              r10, 84;                             jmp   n684_var_α
n683_statement_begin_β: mov              r11, 632;                            jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:             sub              rsp, 16
                        mov              r11, 633
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n685_var_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:             sub              rsp, 16
                        mov              r11, 634
                        mov              rax, qword ptr [r9 + 560]            # treebank
                        mov              rdx, qword ptr [r9 + 568]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n686_assign_α
n685_var_β:             mov              r11, 634
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n698_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n686_assign_α:          mov              r11, 635
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1618_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n687_match_begin_α
n686_assign_β:          mov              r11, 635;                            jmp   n685_var_β
.Lx1618_0:              .quad            .Lx1618_0_s
.Lx1618_0_s:            .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n687_match_begin_α:     mov              r11, 636
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
.Lx1620_0:              mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx1620_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n688_match_defer_α
n687_match_begin_β:     mov              r11, 636
.Lx1620_13:             lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx1620_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx1620_1
                                                                              jmp   .Lx1620_0
.Lx1620_1:
n687_match_begin_af:    mov              r11, 636
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
                        pop              rbp;                                 jmp   n686_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n688_match_defer_α:     mov              r11, 637
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S18]
                        cmp              rax, rdx;                            jne   .Lx1621_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx1621_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx1621_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx1621_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx1621_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx1621_0
.Lx1621_31:             mov              edx, -1;                             jmp   .Lx1621_0
.Lx1621_30:             push             r14
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
                        test             rax, rax;                            jz    .Lx1621_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx1621_5]
                        push             rcx
                        lea              rcx, [rip + .Lx1621_4]
                        push             rcx;                                 jmp   rax
.Lx1621_4:                                                                    jmp   n689_match_end_α
.Lx1621_5:                                                                    jmp   n687_match_begin_β
.Lx1621_0:              mov              eax, edx
                        test             eax, eax;                            js    n687_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1621_6]
                        push             rcx
                        push             rax;                                 jmp   n689_match_end_α
.Lx1621_6:              add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n687_match_begin_β
n688_match_defer_β:     mov              r11, 637
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx1621_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx1621_12
                                                                              jmp   rax
.Lx1621_12:                                                                   jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n689_match_end_α:       mov              r11, 638
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
                        test             rax, rax;                            je    .Lx1623_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n687_match_begin_af
.Lx1623_13:             add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n690_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n690_statement_end_α:   mov              r11, 639
                        mov              r10, 84
                        add              rsp, 32;                             jmp   n691_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n691_statement_begin_α: mov              r11, 640
                        mov              r10, 85;                             jmp   n692_lit_string_α
n691_statement_begin_β: mov              r11, 640;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:      sub              rsp, 16
                        mov              r11, 641
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx1628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n693_var_α
.Lx1628_0:              .quad            .Lx1628_0_s
.Lx1628_0_s:            .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             sub              rsp, 16
                        mov              r11, 642
                        mov              rax, qword ptr [r9 + 576]            # src
                        mov              rdx, qword ptr [r9 + 584]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n694_call_α
n693_var_β:             mov              r11, 642
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n691_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:            sub              rsp, 16
                        mov              r11, 643
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1631:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1631]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx1630_240
                        add              rsp, 16;                             jmp   n693_var_β
.Lx1630_240:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n695_binop_α
n694_call_β:            mov              r11, 643
                        add              rsp, 16;                             jmp   n693_var_β
#-----------------------------------------------------------------------------------------------------------------------
n695_binop_α:           sub              rsp, 16
                        mov              r11, 644
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n696_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n696_assign_α:          mov              r11, 645
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1633_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n697_statement_end_α
.Lx1633_0:              .quad            .Lx1633_0_s
.Lx1633_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n697_statement_end_α:   mov              r11, 646
                        mov              r10, 85
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n698_statement_begin_α: mov              r11, 647
                        mov              r10, 86;                             jmp   n699_lit_string_α
n698_statement_begin_β: mov              r11, 647;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      sub              rsp, 16
                        mov              r11, 648
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx1638_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n700_assign_α
.Lx1638_0:              .quad            .Lx1638_0_s
.Lx1638_0_s:            .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n700_assign_α:          mov              r11, 649
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1639_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_statement_end_α
.Lx1639_0:              .quad            .Lx1639_0_s
.Lx1639_0_s:            .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n701_statement_end_α:   mov              r11, 650
                        mov              r10, 86
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 651
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 652
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
NRETURN:                mov              r11, 653
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
