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
n0_match_any_α:         mov              r11, 1
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$0_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    PAT$0_ω
                        add              r14d, 1;                             jmp   PAT$0_γ
n0_match_any_β:         mov              r11, 1
                        sub              r14d, 1;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_any_β
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
n3_match_span_α:        sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.LPAT$1_α_5_0:          cmp              ecx, r15d;                           jge   .LPAT$1_α_5_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$1_α_5_1
                        add              ecx, 1;                              jmp   .LPAT$1_α_5_0
.LPAT$1_α_5_1:          cmp              ecx, r14d;                           jg    .LPAT$1_α_5_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.LPAT$1_α_5_240:        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n3_match_span_β:        mov              r11, 2
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_span_β
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
n6_match_alternate_α:   mov              r11, 3
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .LPAT$2_α_13_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n11_match_defer_α
.LPAT$2_α_13_21:        lea              rax, [rip + .LPAT$2_α_13_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n10_match_defer_α
.LPAT$2_α_13_22:        lea              rax, [rip + .LPAT$2_α_13_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n7_match_lit_α
n6_match_alternate_s0:  mov              r11, 3
                        lea              rax, [rip + .LPAT$2_α_13_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n6_match_alternate_as
n6_match_alternate_s1:  mov              r11, 3
                        lea              rax, [rip + .LPAT$2_α_13_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n6_match_alternate_as
n6_match_alternate_s2:  mov              r11, 3
                        lea              rax, [rip + .LPAT$2_α_13_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n6_match_alternate_as
.LPAT$2_α_13_40:                                                              jmp   n11_match_defer_β
.LPAT$2_α_13_41:                                                              jmp   n10_match_defer_β
.LPAT$2_α_13_42:                                                              jmp   n9_match_lit_β
n6_match_alternate_as:  mov              r11, 3;                              jmp   PAT$2_γ
n6_match_alternate_β:   mov              r11, 3
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n6_match_alternate_af:  mov              r11, 3
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.LPAT$2_α_13_19:                                                              jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n6_match_alternate_af
                        add              r14d, 1;                             jmp   n8_match_defer_α
n7_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:       mov              r11, 5
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .LPAT$2_α_16_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_16_11
.LPAT$2_α_16_13:        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        cmp              al, 8;                               jne   .LPAT$2_α_16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_16_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 88];            jmp   .LPAT$2_α_16_10
.LPAT$2_α_16_9:         cmp              al, 88;                              jne   .LPAT$2_α_16_21
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
                        test             rax, rax;                            je    .LPAT$2_α_16_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_16_10
.LPAT$2_α_16_21:        xor              eax, eax
.LPAT$2_α_16_10:        test             rax, rax;                            je    .LPAT$2_α_16_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.LPAT$2_α_16_15:
.LPAT$2_α_16_11:        test             rax, rax;                            jz    .LPAT$2_α_16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_16_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_16_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_16_4:                                                               jmp   n9_match_lit_α
.LPAT$2_α_16_5:                                                               jmp   n7_match_lit_β
.LPAT$2_α_16_0:         push             r14
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
                        test             eax, eax;                            js    n7_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_16_6]
                        push             rcx
                        push             rax;                                 jmp   n9_match_lit_α
.LPAT$2_α_16_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n7_match_lit_β
n8_match_defer_β:       mov              r11, 5
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_16_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_16_12
                                                                              jmp   rax
.LPAT$2_β_16_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n8_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n8_match_defer_β
                        add              r14d, 1;                             jmp   n6_match_alternate_s2
n9_match_lit_β:         mov              r11, 6
                        sub              r14d, 1;                             jmp   n8_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_defer_α:      mov              r11, 7
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_19_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_19_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$2_α_19_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$2_α_19_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$2_α_19_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_19_18
.LPAT$2_α_19_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_19_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_19_16:
.LPAT$2_α_19_18:        test             rax, rax;                            jz    .LPAT$2_α_19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_19_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_19_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_19_4:                                                               jmp   n6_match_alternate_s1
.LPAT$2_α_19_5:                                                               jmp   n6_match_alternate_af
.LPAT$2_α_19_0:         push             r14
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_19_6]
                        push             rcx
                        push             rax;                                 jmp   n6_match_alternate_s1
.LPAT$2_α_19_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n6_match_alternate_af
n10_match_defer_β:      mov              r11, 7
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_19_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_19_12
                                                                              jmp   rax
.LPAT$2_β_19_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_20_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_20_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$2_α_20_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$2_α_20_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$2_α_20_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_20_18
.LPAT$2_α_20_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_20_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_20_16:
.LPAT$2_α_20_18:        test             rax, rax;                            jz    .LPAT$2_α_20_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_20_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_20_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_20_4:                                                               jmp   n6_match_alternate_s0
.LPAT$2_α_20_5:                                                               jmp   n6_match_alternate_af
.LPAT$2_α_20_0:         push             r14
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
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_20_6]
                        push             rcx
                        push             rax;                                 jmp   n6_match_alternate_s0
.LPAT$2_α_20_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n6_match_alternate_af
n11_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_20_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_20_12
                                                                              jmp   rax
.LPAT$2_β_20_12:                                                              jmp   qword ptr [rsp]
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n21_match_alternate_α:  mov              r11, 9
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .LPAT$3_α_26_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n24_match_defer_α
.LPAT$3_α_26_21:        lea              rax, [rip + .LPAT$3_α_26_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n22_match_any_α
n21_match_alternate_s0: mov              r11, 9
                        lea              rax, [rip + .LPAT$3_α_26_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n21_match_alternate_as
n21_match_alternate_s1: mov              r11, 9
                        lea              rax, [rip + .LPAT$3_α_26_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n21_match_alternate_as
.LPAT$3_α_26_40:                                                              jmp   n24_match_defer_β
.LPAT$3_α_26_41:                                                              jmp   n23_match_defer_β
n21_match_alternate_as: mov              r11, 9;                              jmp   PAT$3_γ
n21_match_alternate_β:  mov              r11, 9
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n21_match_alternate_af: mov              r11, 9
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.LPAT$3_α_26_19:                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_match_any_α:        mov              r11, 10
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n21_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .LPAT$3_α_28_0
                        cmp              esi, 45;                             je    .LPAT$3_α_28_0
                                                                              jmp   n21_match_alternate_af
.LPAT$3_α_28_0:         add              r14d, 1;                             jmp   n23_match_defer_α
n22_match_any_β:        mov              r11, 10
                        sub              r14d, 1;                             jmp   n21_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 11
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .LPAT$3_α_29_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_29_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .LPAT$3_α_29_10
.LPAT$3_α_29_9:         cmp              al, 88;                              jne   .LPAT$3_α_29_21
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
                        test             rax, rax;                            je    .LPAT$3_α_29_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$3_α_29_10
.LPAT$3_α_29_21:        xor              eax, eax
.LPAT$3_α_29_10:        test             rax, rax;                            jz    .LPAT$3_α_29_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_29_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_29_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_29_4:         mov              rsp, rbp
                        pop              rbp;                                 jmp   n21_match_alternate_s1
.LPAT$3_α_29_5:         mov              rsp, rbp
                        pop              rbp;                                 jmp   n22_match_any_β
.LPAT$3_α_29_0:         push             r14
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
                        test             eax, eax;                            js    n22_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$3_α_29_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_alternate_s1
.LPAT$3_α_29_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n22_match_any_β
n23_match_defer_β:      mov              r11, 11
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n22_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_defer_α:      mov              r11, 12
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$3_α_30_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$3_α_30_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$3_α_30_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$3_α_30_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$3_α_30_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_30_18
.LPAT$3_α_30_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$3_α_30_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$3_α_30_16:
.LPAT$3_α_30_18:        test             rax, rax;                            jz    .LPAT$3_α_30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_30_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_30_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_30_4:                                                               jmp   n21_match_alternate_s0
.LPAT$3_α_30_5:                                                               jmp   n21_match_alternate_af
.LPAT$3_α_30_0:         push             r14
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
                        test             eax, eax;                            js    n21_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$3_α_30_6]
                        push             rcx
                        push             rax;                                 jmp   n21_match_alternate_s0
.LPAT$3_α_30_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n21_match_alternate_af
n24_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$3_β_30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$3_β_30_12
                                                                              jmp   rax
.LPAT$3_β_30_12:                                                              jmp   qword ptr [rsp]
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
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_35_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_35_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$4_α_35_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$4_α_35_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$4_α_35_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_35_18
.LPAT$4_α_35_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_35_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_35_16:
.LPAT$4_α_35_18:        test             rax, rax;                            jz    .LPAT$4_α_35_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_35_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_35_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_35_4:                                                               jmp   n32_match_arbno_α
.LPAT$4_α_35_5:         add              rsp, 16;                             jmp   PAT$4_ω
.LPAT$4_α_35_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$4_α_35_240
                        add              rsp, 16;                             jmp   PAT$4_ω
.LPAT$4_α_35_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_35_6]
                        push             rcx
                        push             rax;                                 jmp   n32_match_arbno_α
.LPAT$4_α_35_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$4_ω
n31_match_defer_β:      mov              r11, 13
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_35_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_35_12
                                                                              jmp   rax
.LPAT$4_β_35_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_arbno_α:      mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n32_match_arbno_β:      mov              r11, 14
                        mov              r12, qword ptr [rbp + -40];          jmp   n33_match_any_α
n32_match_arbno_as:     mov              r11, 14
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n33_match_any_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$4_γ
n32_match_arbno_af:     mov              r11, 14
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n34_match_defer_β
                                                                              jmp   n31_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_any_α:        mov              r11, 15
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n32_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 42;                             je    .LPAT$4_α_39_0
                        cmp              esi, 47;                             je    .LPAT$4_α_39_0
                                                                              jmp   n32_match_arbno_af
.LPAT$4_α_39_0:         add              r14d, 1;                             jmp   n34_match_defer_α
n33_match_any_β:        mov              r11, 15
                        sub              r14d, 1;                             jmp   n32_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n34_match_defer_α:      mov              r11, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_40_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_40_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$4_α_40_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$4_α_40_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$4_α_40_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_40_18
.LPAT$4_α_40_17:        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .LPAT$4_α_40_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_40_16:
.LPAT$4_α_40_18:        test             rax, rax;                            jz    .LPAT$4_α_40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_40_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_40_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_40_4:                                                               jmp   n32_match_arbno_as
.LPAT$4_α_40_5:                                                               jmp   n33_match_any_β
.LPAT$4_α_40_0:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n33_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_40_6]
                        push             rcx
                        push             rax;                                 jmp   n32_match_arbno_as
.LPAT$4_α_40_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n33_match_any_β
n34_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_40_12
                                                                              jmp   rax
.LPAT$4_β_40_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n32_match_arbno_β
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
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n41_match_defer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_45_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_45_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$5_α_45_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$5_α_45_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$5_α_45_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_45_18
.LPAT$5_α_45_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_45_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_45_16:
.LPAT$5_α_45_18:        test             rax, rax;                            jz    .LPAT$5_α_45_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_45_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_45_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_45_4:                                                               jmp   n42_match_arbno_α
.LPAT$5_α_45_5:         add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_45_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$5_α_45_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_45_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$5_α_45_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_arbno_α
.LPAT$5_α_45_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n41_match_defer_β:      mov              r11, 17
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_45_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_45_12
                                                                              jmp   rax
.LPAT$5_β_45_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n42_match_arbno_α:      mov              r11, 18
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n42_match_arbno_β:      mov              r11, 18
                        mov              r12, qword ptr [rbp + -40];          jmp   n43_match_any_α
n42_match_arbno_as:     mov              r11, 18
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n43_match_any_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   PAT$5_γ
n42_match_arbno_af:     mov              r11, 18
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n44_match_defer_β
                                                                              jmp   n41_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_any_α:        mov              r11, 19
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n42_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .LPAT$5_α_49_0
                        cmp              esi, 45;                             je    .LPAT$5_α_49_0
                                                                              jmp   n42_match_arbno_af
.LPAT$5_α_49_0:         add              r14d, 1;                             jmp   n44_match_defer_α
n43_match_any_β:        mov              r11, 19
                        sub              r14d, 1;                             jmp   n42_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n44_match_defer_α:      mov              r11, 20
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_50_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_50_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$5_α_50_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$5_α_50_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$5_α_50_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_50_18
.LPAT$5_α_50_17:        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .LPAT$5_α_50_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_50_16:
.LPAT$5_α_50_18:        test             rax, rax;                            jz    .LPAT$5_α_50_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_50_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_50_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_50_4:                                                               jmp   n42_match_arbno_as
.LPAT$5_α_50_5:                                                               jmp   n43_match_any_β
.LPAT$5_α_50_0:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n43_match_any_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$5_α_50_6]
                        push             rcx
                        push             rax;                                 jmp   n42_match_arbno_as
.LPAT$5_α_50_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n43_match_any_β
n44_match_defer_β:      mov              r11, 20
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_50_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_50_12
                                                                              jmp   rax
.LPAT$5_β_50_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n42_match_arbno_β
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n51_match_pos_α:        mov              r11, 21
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$6_ω
                                                                              jmp   n52_match_arbno_α
n51_match_pos_β:        mov              r11, 21;                             jmp   PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_match_arbno_α:      mov              r11, 22
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n53_match_rpos_α
n52_match_arbno_β:      mov              r11, 22
                        mov              r12, qword ptr [rbp + -40];          jmp   n54_match_defer_α
n52_match_arbno_as:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n54_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n53_match_rpos_α
n52_match_arbno_af:     mov              r11, 22
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n51_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_rpos_α:       mov              r11, 23
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n52_match_arbno_β
                                                                              jmp   PAT$6_γ
n53_match_rpos_β:       mov              r11, 23;                             jmp   n52_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n54_match_defer_α:      mov              r11, 24
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$6_α_60_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$6_α_60_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$6_α_60_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$6_α_60_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$6_α_60_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$6_α_60_18
.LPAT$6_α_60_17:        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             rax, rax;                            je    .LPAT$6_α_60_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$6_α_60_16:
.LPAT$6_α_60_18:        test             rax, rax;                            jz    .LPAT$6_α_60_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$6_α_60_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$6_α_60_4]
                        push             rcx;                                 jmp   rax
.LPAT$6_α_60_4:                                                               jmp   n55_match_defer_α
.LPAT$6_α_60_5:                                                               jmp   n52_match_arbno_af
.LPAT$6_α_60_0:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n52_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$6_α_60_6]
                        push             rcx
                        push             rax;                                 jmp   n55_match_defer_α
.LPAT$6_α_60_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n52_match_arbno_af
n54_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$6_β_60_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$6_β_60_12
                                                                              jmp   rax
.LPAT$6_β_60_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n55_match_defer_α:      mov              r11, 25
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$6_α_61_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$6_α_61_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$6_α_61_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$6_α_61_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$6_α_61_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$6_α_61_18
.LPAT$6_α_61_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$6_α_61_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$6_α_61_16:
.LPAT$6_α_61_18:        test             rax, rax;                            jz    .LPAT$6_α_61_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$6_α_61_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$6_α_61_4]
                        push             rcx;                                 jmp   rax
.LPAT$6_α_61_4:                                                               jmp   n52_match_arbno_as
.LPAT$6_α_61_5:                                                               jmp   n54_match_defer_β
.LPAT$6_α_61_0:         push             r14
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
                        test             eax, eax;                            js    n54_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$6_α_61_6]
                        push             rcx
                        push             rax;                                 jmp   n52_match_arbno_as
.LPAT$6_α_61_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n54_match_defer_β
n55_match_defer_β:      mov              r11, 25
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$6_β_61_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$6_β_61_12
                                                                              jmp   rax
.LPAT$6_β_61_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$6_β:
                                                                              jmp   n53_match_rpos_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 18
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 18
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
.Lgvan13:               .string          "PAT$4$V1"
.Lgvan14:               .string          "PAT$5$V0"
.Lgvan15:               .string          "PAT$5$V1"
.Lgvan16:               .string          "PAT$6$V0"
.Lgvan17:               .string          "PAT$6$V1"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         V              =  ANY('abcdefghijklmnopqrstuvwxyz')
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 26
                        mov              r10, 1;                              jmp   n63_lit_string_α
n62_statement_begin_β:  mov              r11, 26;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Lmain_α_160_0:         .quad            .Lmain_α_160_0_s
.Lmain_α_160_0_s:       .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             sub              rsp, 16
                        mov              r11, 28
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd162:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd162]
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
                        cmp              al, 104;                             jne   .Lmain_α_161_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
.Lmain_α_161_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_α
n64_call_β:             mov              r11, 28
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 30
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n67_statement_begin_α
#=======================================================================================================================
#         I              =  SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 31
                        mov              r10, 2;                              jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 31;                             jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_call_α
.Lmain_α_168_0:         .quad            .Lmain_α_168_0_s
.Lmain_α_168_0_s:       .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        mov              r11, 33
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd170:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd170]
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
                        cmp              al, 104;                             jne   .Lmain_α_169_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
.Lmain_α_169_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_assign_α
n69_call_β:             mov              r11, 33
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n67_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # I
                        mov              qword ptr [r9 + 24], rdx;            jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 35
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         A              =  FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 36
                        mov              r10, 3;                              jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 36;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 0]              # V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 16]             # I
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_assign_α
n75_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 168], rdx;           jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_lit_string_α
n77_lit_string_β:       mov              r11, 41
                        add              rsp, 16;                             jmp   n75_var_β
.Lmain_α_180_0:         .quad            .Lmain_α_180_0_s
.Lmain_α_180_0_s:       .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_call_α
n78_lit_string_β:       mov              r11, 42
                        add              rsp, 16;                             jmp   n77_lit_string_β
.Lmain_α_181_0:         .quad            .Lmain_α_181_0_s
.Lmain_α_181_0_s:       .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        mov              r11, 43
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
.Lrkfnzd183:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd183]
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
                        cmp              al, 104;                             jne   .Lmain_α_182_240
                        add              rsp, 16;                             jmp   n78_lit_string_β
.Lmain_α_182_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_assign_α
n79_call_β:             mov              r11, 43
                        add              rsp, 16;                             jmp   n78_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # A
                        mov              qword ptr [r9 + 40], rdx;            jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 45
                        mov              r10, 3
                        add              rsp, 80;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         F              =  FENCE(A | ANY('+-') *F)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 46
                        mov              r10, 4;                              jmp   n83_var_α
n82_statement_begin_β:  mov              r11, 46;                             jmp   n90_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 47
                        mov              rax, qword ptr [r9 + 32]             # A
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 184], rdx;           jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 49
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_lit_string_α
n85_lit_string_β:       mov              r11, 49
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lmain_α_191_0:         .quad            .Lmain_α_191_0_s
.Lmain_α_191_0_s:       .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_call_α
n86_lit_string_β:       mov              r11, 50
                        add              rsp, 16;                             jmp   n85_lit_string_β
.Lmain_α_192_0:         .quad            .Lmain_α_192_0_s
.Lmain_α_192_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             sub              rsp, 16
                        mov              r11, 51
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
.Lrkfnzd194:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd194]
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
                        cmp              al, 104;                             jne   .Lmain_α_193_240
                        add              rsp, 16;                             jmp   n86_lit_string_β
.Lmain_α_193_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_assign_α
n87_call_β:             mov              r11, 51
                        add              rsp, 16;                             jmp   n86_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # F
                        mov              qword ptr [r9 + 56], rdx;            jmp   n89_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 53
                        mov              r10, 4
                        add              rsp, 64;                             jmp   n90_statement_begin_α
#=======================================================================================================================
#         T              =  F ARBNO(ANY('*/') F)
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:  mov              r11, 54
                        mov              r10, 5;                              jmp   n91_var_α
n90_statement_begin_β:  mov              r11, 54;                             jmp   n100_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:           mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 200], rdx;           jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 48]             # F
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_assign_α
n93_var_β:              mov              r11, 57
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 216], rdx;           jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_lit_string_α
n95_lit_string_β:       mov              r11, 59
                        add              rsp, 16;                             jmp   n93_var_β
.Lmain_α_204_0:         .quad            .Lmain_α_204_0_s
.Lmain_α_204_0_s:       .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_call_α
n96_lit_string_β:       mov              r11, 60
                        add              rsp, 16;                             jmp   n95_lit_string_β
.Lmain_α_205_0:         .quad            .Lmain_α_205_0_s
.Lmain_α_205_0_s:       .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 61
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
.Lrkfnzd207:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd207]
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
                        cmp              al, 104;                             jne   .Lmain_α_206_240
                        add              rsp, 16;                             jmp   n96_lit_string_β
.Lmain_α_206_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_assign_α
n97_call_β:             mov              r11, 61
                        add              rsp, 16;                             jmp   n96_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # T
                        mov              qword ptr [r9 + 72], rdx;            jmp   n99_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 63
                        mov              r10, 5
                        add              rsp, 80;                             jmp   n100_statement_begin_α
#=======================================================================================================================
#         X              =  T ARBNO(ANY('+-') T)
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_begin_α: mov              r11, 64
                        mov              r10, 6;                              jmp   n101_var_α
n100_statement_begin_β: mov              r11, 64;                             jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 232], rdx;           jmp   n103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 64]             # T
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
n103_var_β:             mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$5$V1
                        mov              qword ptr [r9 + 248], rdx;           jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_lit_string_α
n105_lit_string_β:      mov              r11, 69
                        add              rsp, 16;                             jmp   n103_var_β
.Lmain_α_217_0:         .quad            .Lmain_α_217_0_s
.Lmain_α_217_0_s:       .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_call_α
n106_lit_string_β:      mov              r11, 70
                        add              rsp, 16;                             jmp   n105_lit_string_β
.Lmain_α_218_0:         .quad            .Lmain_α_218_0_s
.Lmain_α_218_0_s:       .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            sub              rsp, 16
                        mov              r11, 71
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
                        cmp              al, 104;                             jne   .Lmain_α_219_240
                        add              rsp, 16;                             jmp   n106_lit_string_β
.Lmain_α_219_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_assign_α
n107_call_β:            mov              r11, 71
                        add              rsp, 16;                             jmp   n106_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # X
                        mov              qword ptr [r9 + 88], rdx;            jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 73
                        mov              r10, 6
                        add              rsp, 80;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         eol            =  CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 74
                        mov              r10, 7;                              jmp   n111_lit_integer_α
n110_statement_begin_β: mov              r11, 74;                             jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_call_α
.Lmain_α_226_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        mov              r11, 76
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd76:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd76]
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
                        cmp              al, 104;                             jne   .Lmain_α_227_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Lmain_α_227_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_assign_α
n112_call_β:            mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # eol
                        mov              qword ptr [r9 + 104], rdx;           jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 78
                        mov              r10, 7
                        add              rsp, 32;                             jmp   n115_statement_begin_α
#=======================================================================================================================
#         C              =  POS(0) ARBNO(X eol) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 79
                        mov              r10, 8;                              jmp   n116_var_α
n115_statement_begin_β: mov              r11, 79;                             jmp   n125_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 80]             # X
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$6$V0
                        mov              qword ptr [r9 + 264], rdx;           jmp   n118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 96]             # eol
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
n118_var_β:             mov              r11, 82
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$6$V1
                        mov              qword ptr [r9 + 280], rdx;           jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_lit_string_α
n120_lit_string_β:      mov              r11, 84
                        add              rsp, 16;                             jmp   n118_var_β
.Lmain_α_237_0:         .quad            .Lmain_α_237_0_s
.Lmain_α_237_0_s:       .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_call_α
n121_lit_string_β:      mov              r11, 85
                        add              rsp, 16;                             jmp   n120_lit_string_β
.Lmain_α_238_0:         .quad            .Lmain_α_238_0_s
.Lmain_α_238_0_s:       .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            sub              rsp, 16
                        mov              r11, 86
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
.Lrkfnzd240:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd240]
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
                        cmp              al, 104;                             jne   .Lmain_α_239_240
                        add              rsp, 16;                             jmp   n121_lit_string_β
.Lmain_α_239_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
n122_call_β:            mov              r11, 86
                        add              rsp, 16;                             jmp   n121_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # C
                        mov              qword ptr [r9 + 120], rdx;           jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 88
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n125_statement_begin_α
#=======================================================================================================================
#         &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α: mov              r11, 89
                        mov              r10, 9;                              jmp   n126_lit_integer_α
n125_statement_begin_β: mov              r11, 89;                             jmp   n129_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_kw_assign_snobol4_α
.Lmain_α_246_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n127_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 91
                        mov              rdi, qword ptr [rip + .Lmain_α_247_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_247_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n125_statement_begin_β
.Lmain_α_247_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_statement_end_α
.Lmain_α_247_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 92
                        mov              r10, 9
                        add              rsp, 32;                             jmp   n129_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 93
                        mov              r10, 10;                             jmp   n130_lit_name_α
n129_statement_begin_β: mov              r11, 93;                             jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_name_α:        sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_252_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_lit_integer_α
.Lmain_α_252_0:         .quad            .Lmain_α_252_0_s
.Lmain_α_252_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_lit_string_α
n131_lit_integer_β:     mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Lmain_α_253_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_call_α
n132_lit_string_β:      mov              r11, 96
                        add              rsp, 16;                             jmp   n131_lit_integer_β
.Lmain_α_254_0:         .quad            .Lmain_α_254_0_s
.Lmain_α_254_0_s:       .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            sub              rsp, 16
                        mov              r11, 97
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
.Lbynamefnzd97:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd97]
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
                        cmp              al, 104;                             jne   .Lmain_α_255_240
                        add              rsp, 16;                             jmp   n132_lit_string_β
.Lmain_α_255_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_statement_end_α
n133_call_β:            mov              r11, 97
                        add              rsp, 16;                             jmp   n132_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 98
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         src            =  INPUT                          :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α: mov              r11, 99
                        mov              r10, 11;                             jmp   n136_var_α
n135_statement_begin_β: mov              r11, 99;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rip + .Lmain_α_260_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_260_240
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lmain_α_260_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_assign_α
.Lmain_α_260_0:         .quad            .Lmain_α_260_0_s
.Lmain_α_260_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # src
                        mov              qword ptr [r9 + 136], rdx;           jmp   n138_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 102
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         src            C                                 :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 103
                        mov              r10, 12;                             jmp   n140_var_α
n139_statement_begin_β: mov              r11, 103;                            jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 112]            # C
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_assign_α
n141_var_β:             mov              r11, 105
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:          mov              r11, 106
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_268_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_match_begin_α
n142_assign_β:          mov              r11, 106;                            jmp   n141_var_β
.Lmain_α_268_0:         .quad            .Lmain_α_268_0_s
.Lmain_α_268_0_s:       .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n143_match_begin_α:     mov              r11, 107
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
.Lmain_α_270_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_270_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n144_match_defer_α
n143_match_begin_β:     mov              r11, 107
.Lmain_α_270_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_270_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_270_1
                                                                              jmp   .Lmain_α_270_0
.Lmain_β_270_1:
n143_match_begin_af:    mov              r11, 107
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
                        pop              rbp;                                 jmp   n142_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_defer_α:     mov              r11, 108
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S11]
                        cmp              rax, rdx;                            jne   .Lmain_α_271_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_271_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_271_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_271_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_271_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_271_0
.Lmain_α_271_31:        mov              edx, -1;                             jmp   .Lmain_α_271_0
.Lmain_α_271_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S11]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_271_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_271_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_271_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_271_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_271_23
.Lmain_α_271_22:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]
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
.Lmain_α_271_23:        test             rax, rax;                            jz    .Lmain_α_271_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_271_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_271_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_271_4:                                                               jmp   n145_match_end_α
.Lmain_α_271_5:                                                               jmp   n143_match_begin_β
.Lmain_α_271_0:         mov              eax, edx
                        test             eax, eax;                            js    n143_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_271_6]
                        push             rcx
                        push             rax;                                 jmp   n145_match_end_α
.Lmain_α_271_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n143_match_begin_β
n144_match_defer_β:     mov              r11, 108
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_271_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_271_12
                                                                              jmp   rax
.Lmain_β_271_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n145_match_end_α:       mov              r11, 109
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
                        test             rax, rax;                            je    .Lmain_α_273_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n143_match_begin_af
.Lmain_α_273_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n146_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 110
                        mov              r10, 12
                        add              rsp, 32;                             jmp   n147_statement_begin_α
#=======================================================================================================================
#         OUTPUT         =  'matched bytes=' SIZE(src)      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 111
                        mov              r10, 13;                             jmp   n148_lit_string_α
n147_statement_begin_β: mov              r11, 111;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lmain_α_278_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_var_α
.Lmain_α_278_0:         .quad            .Lmain_α_278_0_s
.Lmain_α_278_0_s:       .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 128]            # src
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_call_α
n149_var_β:             mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            sub              rsp, 16
                        mov              r11, 114
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd281:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd281]
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
                        cmp              al, 104;                             jne   .Lmain_α_280_240
                        add              rsp, 16;                             jmp   n149_var_β
.Lmain_α_280_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_binop_α
n150_call_β:            mov              r11, 114
                        add              rsp, 16;                             jmp   n149_var_β
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              r11, 115
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              r11, 116
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_283_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_statement_end_α
.Lmain_α_283_0:         .quad            .Lmain_α_283_0_s
.Lmain_α_283_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 117
                        mov              r10, 13
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# fail    OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 118
                        mov              r10, 14;                             jmp   n155_lit_string_α
n154_statement_begin_β: mov              r11, 118;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lmain_α_288_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_assign_α
.Lmain_α_288_0:         .quad            .Lmain_α_288_0_s
.Lmain_α_288_0_s:       .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 120
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_289_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_statement_end_α
.Lmain_α_289_0:         .quad            .Lmain_α_289_0_s
.Lmain_α_289_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 121
                        mov              r10, 14
                        add              rsp, 16;                             jmp   main_γ
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
                        .long            112
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
.S0:                    .string          "X"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V0"
.S3:                    .string          "F"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PAT$4$V0"
.S6:                    .string          "PAT$4$V1"
.S7:                    .string          "PAT$5$V0"
.S8:                    .string          "PAT$5$V1"
.S9:                    .string          "PAT$6$V0"
.S10:                   .string          "PAT$6$V1"
.S11:                   .string          "PATV$0"
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
