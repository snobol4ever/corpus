                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$0_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    PAT$0_ω
                        add              r14d, 1;                             jmp   PAT$0_γ
n0_match_any_β:         sub              r14d, 1;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$1:
PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx5_0:                 cmp              ecx, r15d;                           jge   .Lx5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx5_1
                        add              ecx, 1;                              jmp   .Lx5_0
.Lx5_1:                 cmp              ecx, r14d;                           jg    .Lx5_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx5_240:               mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n3_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$1_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_ω:
                                                                              jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$2:
PAT$2_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx14_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n12_match_defer_α
.Lx14_21:               lea              rax, [rip + .Lx14_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n11_match_defer_α
.Lx14_22:               lea              rax, [rip + .Lx14_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n8_match_lit_α
n6_match_alternate_s0:  lea              rax, [rip + .Lx14_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_match_alternate_as
n6_match_alternate_s1:  lea              rax, [rip + .Lx14_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_match_alternate_as
n6_match_alternate_s2:  lea              rax, [rip + .Lx14_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_match_alternate_as
.Lx14_40:                                                                     jmp   n12_match_defer_β
.Lx14_41:                                                                     jmp   n11_match_defer_β
.Lx14_42:                                                                     jmp   n7_goto_β
n6_match_alternate_as:                                                        jmp   PAT$2_γ
n6_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n6_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx14_19:               add              rsp, 32;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:                                                                    jmp   n6_match_alternate_af
n7_goto_β:                                                                    jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n6_match_alternate_af
                        add              r14d, 1;                             jmp   n9_match_defer_α
n8_match_lit_β:         sub              r14d, 1;                             jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              eax, 8;                              jne   .Lx18_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx18_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lx18_10
.Lx18_9:                xor              eax, eax
.Lx18_10:               test             rax, rax;                            jz    .Lx18_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx18_4]
                        lea              r11, [rip + .Lx18_5];                jmp   rax
.Lx18_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n10_match_lit_α
.Lx18_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n8_match_lit_β
.Lx18_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n8_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx18_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n10_match_lit_α
.Lx18_6:                add              rsp, 16;                             jmp   n8_match_lit_β
n9_match_defer_β:       mov              rsp, rbp
                        pop              rbp;                                 jmp   n8_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n6_match_alternate_af
                        add              r14d, 1;                             jmp   n6_match_alternate_s2
n10_match_lit_β:        sub              r14d, 1;                             jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx21_16
                        mov              rax, qword ptr [rdx + 0]
.Lx21_16:               test             rax, rax;                            jz    .Lx21_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx21_4]
                        lea              r11, [rip + .Lx21_5];                jmp   rax
.Lx21_4:                                                                      jmp   n6_match_alternate_s1
.Lx21_5:                                                                      jmp   n6_match_alternate_af
.Lx21_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
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
                        test             eax, eax;                            js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n6_match_alternate_s1
.Lx21_6:                add              rsp, 16;                             jmp   n6_match_alternate_af
n11_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lx22_16
                        mov              rax, qword ptr [rdx + 0]
.Lx22_16:               test             rax, rax;                            jz    .Lx22_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx22_4]
                        lea              r11, [rip + .Lx22_5];                jmp   rax
.Lx22_4:                                                                      jmp   n6_match_alternate_s0
.Lx22_5:                                                                      jmp   n6_match_alternate_af
.Lx22_0:                push             r14
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
                        test             eax, eax;                            js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx22_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n6_match_alternate_s0
.Lx22_6:                add              rsp, 16;                             jmp   n6_match_alternate_af
n12_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$2_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$3:
PAT$3_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 24
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx32_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n30_match_defer_α
.Lx32_21:               lea              rax, [rip + .Lx32_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n28_match_lit_α
.Lx32_22:               lea              rax, [rip + .Lx32_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n25_match_lit_α
n23_match_alternate_s0: lea              rax, [rip + .Lx32_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_match_alternate_as
n23_match_alternate_s1: lea              rax, [rip + .Lx32_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_match_alternate_as
n23_match_alternate_s2: lea              rax, [rip + .Lx32_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_match_alternate_as
.Lx32_40:                                                                     jmp   n30_match_defer_β
.Lx32_41:                                                                     jmp   n27_goto_β
.Lx32_42:                                                                     jmp   n24_goto_β
n23_match_alternate_as:                                                       jmp   PAT$3_γ
n23_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n23_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx32_19:               add              rsp, 32;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:                                                                   jmp   n23_match_alternate_af
n24_goto_β:                                                                   jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n23_match_alternate_af
                        add              r14d, 1;                             jmp   n26_match_defer_α
n25_match_lit_β:        sub              r14d, 1;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx36_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx36_11
.Lx36_13:               mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              eax, 8;                              jne   .Lx36_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx36_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lx36_10
.Lx36_9:                xor              eax, eax
.Lx36_10:               test             rax, rax;                            je    .Lx36_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx36_15:
.Lx36_11:               test             rax, rax;                            jz    .Lx36_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx36_4]
                        lea              r11, [rip + .Lx36_5];                jmp   rax
.Lx36_4:                                                                      jmp   n23_match_alternate_s2
.Lx36_5:                                                                      jmp   n25_match_lit_β
.Lx36_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                        test             eax, eax;                            js    n25_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n23_match_alternate_s2
.Lx36_6:                add              rsp, 16;                             jmp   n25_match_lit_β
n26_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:                                                                   jmp   n23_match_alternate_af
n27_goto_β:                                                                   jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n23_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n23_match_alternate_af
                        add              r14d, 1;                             jmp   n29_match_defer_α
n28_match_lit_β:        sub              r14d, 1;                             jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx40_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx40_11
.Lx40_13:               mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              eax, 8;                              jne   .Lx40_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx40_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lx40_10
.Lx40_9:                xor              eax, eax
.Lx40_10:               test             rax, rax;                            je    .Lx40_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx40_15:
.Lx40_11:               test             rax, rax;                            jz    .Lx40_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx40_4]
                        lea              r11, [rip + .Lx40_5];                jmp   rax
.Lx40_4:                                                                      jmp   n23_match_alternate_s1
.Lx40_5:                                                                      jmp   n28_match_lit_β
.Lx40_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                        test             eax, eax;                            js    n28_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx40_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n23_match_alternate_s1
.Lx40_6:                add              rsp, 16;                             jmp   n28_match_lit_β
n29_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx41_16
                        mov              rax, qword ptr [rdx + 0]
.Lx41_16:               test             rax, rax;                            jz    .Lx41_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx41_4]
                        lea              r11, [rip + .Lx41_5];                jmp   rax
.Lx41_4:                                                                      jmp   n23_match_alternate_s0
.Lx41_5:                                                                      jmp   n23_match_alternate_af
.Lx41_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n23_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n23_match_alternate_s0
.Lx41_6:                add              rsp, 16;                             jmp   n23_match_alternate_af
n30_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$3_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$4:
PAT$4_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n42_match_defer_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx51_16
                        mov              rax, qword ptr [rdx + 0]
.Lx51_16:               test             rax, rax;                            jz    .Lx51_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx51_4]
                        lea              r11, [rip + .Lx51_5];                jmp   rax
.Lx51_4:                                                                      jmp   n43_match_fence1_α
.Lx51_5:                add              rsp, 16;                             jmp   PAT$4_ω
.Lx51_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            jns   .Lx51_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.Lx51_240:              mov              r14d, eax
                        lea              rax, [rip + .Lx51_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n43_match_fence1_α
.Lx51_6:                add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$4_ω
n42_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n43_match_fence1_α:     mov              qword ptr [rbp + -32], rsp
                        sub              rsp, 0;                              jmp   n44_match_alternate_α
n43_match_fence1_as:    add              rsp, 0
                        mov              rsp, qword ptr [rbp + -32];          jmp   PAT$4_γ
n43_match_fence1_af:    add              rsp, 0
n43_match_fence1_β:     mov              rsp, qword ptr [rbp + -32];          jmp   n42_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx55_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n47_match_alternate_α
.Lx55_21:               lea              rax, [rip + .Lx55_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n45_match_lit_α
n44_match_alternate_s0: lea              rax, [rip + .Lx55_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_match_alternate_as
n44_match_alternate_s1: lea              rax, [rip + .Lx55_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_match_alternate_as
.Lx55_40:                                                                     jmp   n46_goto_β
.Lx55_41:                                                                     jmp   n45_match_lit_β
n44_match_alternate_as:                                                       jmp   n43_match_fence1_as
n44_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n44_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx55_19:               add              rsp, 32;                             jmp   n43_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n45_match_lit_α:                                                              jmp   n44_match_alternate_s1
n45_match_lit_β:                                                              jmp   n44_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:                                                                   jmp   n44_match_alternate_af
n46_goto_β:                                                                   jmp   n44_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n47_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx60_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n50_match_lit_α
.Lx60_21:               lea              rax, [rip + .Lx60_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n49_match_lit_α
n47_match_alternate_s0: lea              rax, [rip + .Lx60_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_match_alternate_as
n47_match_alternate_s1: lea              rax, [rip + .Lx60_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_match_alternate_as
.Lx60_40:                                                                     jmp   n50_match_lit_β
.Lx60_41:                                                                     jmp   n49_match_lit_β
n47_match_alternate_as:                                                       jmp   n48_match_defer_α
n47_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n47_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx60_19:               add              rsp, 32;                             jmp   n44_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_defer_α:      push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        cmp              eax, 8;                              jne   .Lx61_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx61_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 72];            jmp   .Lx61_10
.Lx61_9:                xor              eax, eax
.Lx61_10:               test             rax, rax;                            jz    .Lx61_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx61_4]
                        lea              r11, [rip + .Lx61_5];                jmp   rax
.Lx61_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n44_match_alternate_s0
.Lx61_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n47_match_alternate_β
.Lx61_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
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
                        test             eax, eax;                            js    n47_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx61_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n44_match_alternate_s0
.Lx61_6:                add              rsp, 16;                             jmp   n47_match_alternate_β
n48_match_defer_β:      mov              rsp, rbp
                        pop              rbp;                                 jmp   n47_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n47_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n47_match_alternate_af
                        add              r14d, 1;                             jmp   n47_match_alternate_s1
n49_match_lit_β:        sub              r14d, 1;                             jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n50_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n47_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n47_match_alternate_af
                        add              r14d, 1;                             jmp   n47_match_alternate_s0
n50_match_lit_β:        sub              r14d, 1;                             jmp   n47_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$4_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$5:
PAT$5_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      sub              rsp, 16
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
                        test             rax, rax;                            je    .Lx75_16
                        mov              rax, qword ptr [rdx + 0]
.Lx75_16:               test             rax, rax;                            jz    .Lx75_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx75_4]
                        lea              r11, [rip + .Lx75_5];                jmp   rax
.Lx75_4:                                                                      jmp   n67_match_fence1_α
.Lx75_5:                add              rsp, 16;                             jmp   PAT$5_ω
.Lx75_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx75_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx75_240:              mov              r14d, eax
                        lea              rax, [rip + .Lx75_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n67_match_fence1_α
.Lx75_6:                add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$5_ω
n66_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n67_match_fence1_α:     mov              qword ptr [rbp + -32], rsp
                        sub              rsp, 0;                              jmp   n68_match_alternate_α
n67_match_fence1_as:    add              rsp, 0
                        mov              rsp, qword ptr [rbp + -32];          jmp   PAT$5_γ
n67_match_fence1_af:    add              rsp, 0
n67_match_fence1_β:     mov              rsp, qword ptr [rbp + -32];          jmp   n66_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx79_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n71_match_alternate_α
.Lx79_21:               lea              rax, [rip + .Lx79_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n69_match_lit_α
n68_match_alternate_s0: lea              rax, [rip + .Lx79_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_match_alternate_as
n68_match_alternate_s1: lea              rax, [rip + .Lx79_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_match_alternate_as
.Lx79_40:                                                                     jmp   n70_goto_β
.Lx79_41:                                                                     jmp   n69_match_lit_β
n68_match_alternate_as:                                                       jmp   n67_match_fence1_as
n68_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n68_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx79_19:               add              rsp, 32;                             jmp   n67_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:                                                              jmp   n68_match_alternate_s1
n69_match_lit_β:                                                              jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n70_goto_α:                                                                   jmp   n68_match_alternate_af
n70_goto_β:                                                                   jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx84_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n74_match_lit_α
.Lx84_21:               lea              rax, [rip + .Lx84_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n73_match_lit_α
n71_match_alternate_s0: lea              rax, [rip + .Lx84_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_match_alternate_as
n71_match_alternate_s1: lea              rax, [rip + .Lx84_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_match_alternate_as
.Lx84_40:                                                                     jmp   n74_match_lit_β
.Lx84_41:                                                                     jmp   n73_match_lit_β
n71_match_alternate_as:                                                       jmp   n72_match_defer_α
n71_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n71_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx84_19:               add              rsp, 32;                             jmp   n68_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:      push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              eax, 8;                              jne   .Lx85_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx85_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .Lx85_10
.Lx85_9:                xor              eax, eax
.Lx85_10:               test             rax, rax;                            jz    .Lx85_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx85_4]
                        lea              r11, [rip + .Lx85_5];                jmp   rax
.Lx85_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n68_match_alternate_s0
.Lx85_5:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n71_match_alternate_β
.Lx85_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n71_match_alternate_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx85_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n68_match_alternate_s0
.Lx85_6:                add              rsp, 16;                             jmp   n71_match_alternate_β
n72_match_defer_β:      mov              rsp, rbp
                        pop              rbp;                                 jmp   n71_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n71_match_alternate_af
                        add              r14d, 1;                             jmp   n71_match_alternate_s1
n73_match_lit_β:        sub              r14d, 1;                             jmp   n71_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n71_match_alternate_af
                        add              r14d, 1;                             jmp   n71_match_alternate_s0
n74_match_lit_β:        sub              r14d, 1;                             jmp   n71_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$5_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$6:
PAT$6_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 40
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n90_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$6_ω
                                                                              jmp   n91_match_arbno_α
n90_match_pos_β:                                                              jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_match_arbno_α:      mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n92_match_rpos_α
n91_match_arbno_β:                                                            jmp   n93_match_defer_α
n91_match_arbno_as:     mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n93_match_defer_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n92_match_rpos_α
n91_match_arbno_af:     mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n90_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n91_match_arbno_β
                                                                              jmp   PAT$6_γ
n92_match_rpos_β:                                                             jmp   n91_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n93_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .Lx99_16
                        mov              rax, qword ptr [rdx + 0]
.Lx99_16:               test             rax, rax;                            jz    .Lx99_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx99_4]
                        lea              r11, [rip + .Lx99_5];                jmp   rax
.Lx99_4:                                                                      jmp   n94_match_defer_α
.Lx99_5:                                                                      jmp   n91_match_arbno_af
.Lx99_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n91_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx99_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n94_match_defer_α
.Lx99_6:                add              rsp, 16;                             jmp   n91_match_arbno_af
n93_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n94_match_defer_α:      mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .Lx100_16
                        mov              rax, qword ptr [rdx + 0]
.Lx100_16:              test             rax, rax;                            jz    .Lx100_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx100_4]
                        lea              r11, [rip + .Lx100_5];               jmp   rax
.Lx100_4:                                                                     jmp   n91_match_arbno_as
.Lx100_5:                                                                     jmp   n93_match_defer_β
.Lx100_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n93_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx100_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n91_match_arbno_as
.Lx100_6:               add              rsp, 16;                             jmp   n93_match_defer_β
n94_match_defer_β:                                                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n92_match_rpos_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$6_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             main_init
                        mov              edi, 16
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 16
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
main_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "PAT$3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__PAT$3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$5"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__PAT$5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$6"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__PAT$6
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
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "I"
.Lgvan2:                .string          "A"
.Lgvan3:                .string          "F"
.Lgvan4:                .string          "T"
.Lgvan5:                .string          "X"
.Lgvan6:                .string          "eol"
.Lgvan7:                .string          "C"
.Lgvan8:                .string          "src"
.Lgvan9:                .string          "PAT$2$V0"
.Lgvan10:               .string          "PAT$2$V1"
.Lgvan11:               .string          "PAT$3$V0"
.Lgvan12:               .string          "PAT$4$V0"
.Lgvan13:               .string          "PAT$5$V0"
.Lgvan14:               .string          "PAT$6$V0"
.Lgvan15:               .string          "PAT$6$V1"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:                                                       jmp   n102_lit_string_α
n101_statement_begin_β:                                                       jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_call_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd199:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd199]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx198_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
.Lx198_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
n103_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n105_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   add              rsp, 32;                             jmp   n106_statement_begin_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:                                                       jmp   n107_lit_string_α
n106_statement_begin_β:                                                       jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd207:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd207]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx206_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
.Lx206_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_assign_α
n108_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n110_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   add              rsp, 32;                             jmp   n111_statement_begin_α
#=======================================================================================================================
#         A              =  V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:                                                       jmp   n112_var_α
n111_statement_begin_β:                                                       jmp   n121_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 168], rdx;           jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n115_assign_α
n114_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_lit_string_α
n116_lit_string_β:      add              rsp, 16;                             jmp   n114_var_β
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_call_α
n117_lit_string_β:      add              rsp, 16;                             jmp   n116_lit_string_β
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            sub              rsp, 16
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
.Lrkfnzd220:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd220]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx219_240
                        add              rsp, 16;                             jmp   n117_lit_string_β
.Lx219_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
n118_call_β:            add              rsp, 16;                             jmp   n117_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 80;                             jmp   n121_statement_begin_α
#=======================================================================================================================
#         F              =  A | FENCE('+' *F) | FENCE('-' *F)
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α:                                                       jmp   n122_var_α
n121_statement_begin_β:                                                       jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 184], rdx;           jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_lit_string_α
n124_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n121_statement_begin_β
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_call_α
n125_lit_string_β:      add              rsp, 16;                             jmp   n124_lit_string_β
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            sub              rsp, 16
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
.Lrkfnzd231:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd231]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx230_240
                        add              rsp, 16;                             jmp   n125_lit_string_β
.Lx230_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_assign_α
n126_call_β:            add              rsp, 16;                             jmp   n125_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 64;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         T              =  F FENCE(('*' | '/') *T | '')
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α:                                                       jmp   n130_var_α
n129_statement_begin_β:                                                       jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 200], rdx;           jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_lit_string_α
n132_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_α
n133_lit_string_β:      add              rsp, 16;                             jmp   n132_lit_string_β
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            sub              rsp, 16
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
.Lrkfnzd242:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd242]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx241_240
                        add              rsp, 16;                             jmp   n133_lit_string_β
.Lx241_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_assign_α
n134_call_β:            add              rsp, 16;                             jmp   n133_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n136_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   add              rsp, 64;                             jmp   n137_statement_begin_α
#=======================================================================================================================
#         X              =  T FENCE(('+' | '-') *X | '')
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α:                                                       jmp   n138_var_α
n137_statement_begin_β:                                                       jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 216], rdx;           jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n141_lit_string_α
n140_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_call_α
n141_lit_string_β:      add              rsp, 16;                             jmp   n140_lit_string_β
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            sub              rsp, 16
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
.Lrkfnzd253:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd253]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx252_240
                        add              rsp, 16;                             jmp   n141_lit_string_β
.Lx252_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_assign_α
n142_call_β:            add              rsp, 16;                             jmp   n141_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   add              rsp, 64;                             jmp   n145_statement_begin_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α:                                                       jmp   n146_lit_integer_α
n145_statement_begin_β:                                                       jmp   n150_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n147_call_α
.Lx259_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd87:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd87]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx260_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
.Lx260_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_assign_α
n147_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # eol
                        mov              qword ptr [r9 + 104], rdx;           jmp   n149_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   add              rsp, 32;                             jmp   n150_statement_begin_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α:                                                       jmp   n151_var_α
n150_statement_begin_β:                                                       jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # eol
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$6$V1
                        mov              qword ptr [r9 + 248], rdx;           jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n154_assign_α
n153_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n150_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_lit_string_α
n155_lit_string_β:      add              rsp, 16;                             jmp   n153_var_β
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_α
n156_lit_string_β:      add              rsp, 16;                             jmp   n155_lit_string_β
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:            sub              rsp, 16
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
.Lrkfnzd273:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd273]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx272_240
                        add              rsp, 16;                             jmp   n156_lit_string_β
.Lx272_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_assign_α
n157_call_β:            add              rsp, 16;                             jmp   n156_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # C
                        mov              qword ptr [r9 + 120], rdx;           jmp   n159_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 80;                             jmp   n160_statement_begin_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α:                                                       jmp   n161_lit_string_α
n160_statement_begin_β:                                                       jmp   n165_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_lit_integer_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_call_α
n162_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Lx280_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            sub              rsp, 16
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
.Lrkfnzd282:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd282]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx281_240
                        add              rsp, 16;                             jmp   n162_lit_integer_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_statement_end_α
n163_call_β:            add              rsp, 16;                             jmp   n162_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n164_statement_end_α:   add              rsp, 48;                             jmp   n165_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4000000]')
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α:                                                       jmp   n166_lit_string_α
n165_statement_begin_β:                                                       jmp   n172_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd289:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd289]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx288_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_lit_integer_α
n167_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_lit_string_α
n168_lit_integer_β:     add              rsp, 16
                        add              rsp, 32;                             jmp   n165_statement_begin_β
.Lx290_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_α
n169_lit_string_β:      add              rsp, 16;                             jmp   n168_lit_integer_β
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "[-f0 -r4000000]"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            sub              rsp, 16
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
.Lbynamefnzd110:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd110]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx292_240
                        add              rsp, 16;                             jmp   n169_lit_string_β
.Lx292_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_statement_end_α
n170_call_β:            add              rsp, 16;                             jmp   n169_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   add              rsp, 80;                             jmp   n172_statement_begin_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α:                                                       jmp   n173_var_α
n172_statement_begin_β:                                                       jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx297_240
                        add              rsp, 16;                             jmp   n172_statement_begin_β
.Lx297_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_assign_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n174_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # src
                        mov              qword ptr [r9 + 136], rdx;           jmp   n175_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   add              rsp, 16;                             jmp   n176_statement_begin_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:                                                       jmp   n177_var_α
n176_statement_begin_β:                                                       jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_var_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # C
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_assign_α
n178_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n191_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_match_begin_α
n179_assign_β:                                                                jmp   n178_var_β
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n180_match_begin_α:     mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx307_0:               mov              r14d, dword ptr [rbp + -40];         jmp   n181_match_defer_α
n180_match_begin_β:     lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx307_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx307_1
                                                                              jmp   .Lx307_0
.Lx307_1:
n180_match_begin_af:    mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n179_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n181_match_defer_α:     lea              rdi, [rip + .S10]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx308_14
                        mov              rax, qword ptr [rdx + 0]
.Lx308_14:              test             rax, rax;                            jz    .Lx308_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx308_4]
                        lea              r11, [rip + .Lx308_5];               jmp   rax
.Lx308_4:                                                                     jmp   n182_match_end_α
.Lx308_5:                                                                     jmp   n180_match_begin_β
.Lx308_0:               push             r14
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
                        test             eax, eax;                            js    n180_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx308_6]
                        sub              rsp, 8
                        push             rax;                                 jmp   n182_match_end_α
.Lx308_6:               add              rsp, 16;                             jmp   n180_match_begin_β
n181_match_defer_β:                                                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n182_match_end_α:       push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   add              rsp, 32;                             jmp   n184_statement_begin_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:                                                       jmp   n185_lit_string_α
n184_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_var_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_call_α
n186_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd318:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd318]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx317_240
                        add              rsp, 16;                             jmp   n186_var_β
.Lx317_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_binop_α
n187_call_β:            add              rsp, 16;                             jmp   n186_var_β
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_statement_end_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α:                                                       jmp   n192_lit_string_α
n191_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_statement_end_α
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 16;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "X"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V0"
.S3:                    .string          "F"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PAT$4$V0"
.S6:                    .string          "T"
.S7:                    .string          "PAT$5$V0"
.S8:                    .string          "PAT$6$V0"
.S9:                    .string          "PAT$6$V1"
.S10:                   .string          "PATV$0"
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
