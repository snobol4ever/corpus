                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
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
n0_match_span_α:        sub              rsp, 16
                        mov              r11, 1
                        movsxd           rcx, r14d
.LPAT$0_α_2_0:          cmp              ecx, r15d;                           jge   .LPAT$0_α_2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .LPAT$0_α_2_10
                        cmp              esi, 10;                             je    .LPAT$0_α_2_10
                                                                              jmp   .LPAT$0_α_2_1
.LPAT$0_α_2_10:         add              ecx, 1;                              jmp   .LPAT$0_α_2_0
.LPAT$0_α_2_1:          cmp              ecx, r14d;                           jg    .LPAT$0_α_2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.LPAT$0_α_2_240:        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$0_γ
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_span_β
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
n3_match_notany_α:      mov              r11, 2
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               jne   PAT$1_ω
                        add              r14d, 1;                             jmp   n4_match_break_α
n3_match_notany_β:      mov              r11, 2
                        sub              r14d, 1;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_break_α:       sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.LPAT$1_α_7_0:          cmp              ecx, r15d;                           jl    .LPAT$1_α_7_240
                        add              rsp, 16;                             jmp   n3_match_notany_β
.LPAT$1_α_7_240:        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .LPAT$1_α_7_1
                        add              ecx, 1;                              jmp   .LPAT$1_α_7_0
.LPAT$1_α_7_1:          mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n4_match_break_β:       mov              r11, 3
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   n3_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n4_match_break_β
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
                        sub              rsp, 88
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n9_match_defer_α
n8_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_18_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_18_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$2_α_18_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$2_α_18_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$2_α_18_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_18_18
.LPAT$2_α_18_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_18_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_18_16:
.LPAT$2_α_18_18:        test             rax, rax;                            jz    .LPAT$2_α_18_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_18_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_18_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_18_4:                                                               jmp   n10_match_arbno_α
.LPAT$2_α_18_5:         add              rsp, 16;                             jmp   n8_match_lit_β
.LPAT$2_α_18_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$2_α_18_240
                        add              rsp, 16;                             jmp   n8_match_lit_β
.LPAT$2_α_18_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_18_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_arbno_α
.LPAT$2_α_18_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n8_match_lit_β
n9_match_defer_β:       mov              r11, 5
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_18_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_18_12
                                                                              jmp   rax
.LPAT$2_β_18_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n10_match_arbno_α:      mov              r11, 6
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n11_match_lit_α
n10_match_arbno_β:      mov              r11, 6
                        mov              r12, qword ptr [rbp + -40];          jmp   n12_match_defer_α
n10_match_arbno_as:     mov              r11, 6
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n12_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n11_match_lit_α
n10_match_arbno_af:     mov              r11, 6
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n9_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n10_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n10_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$2_γ
n11_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n10_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_23_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_23_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$2_α_23_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$2_α_23_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$2_α_23_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_23_18
.LPAT$2_α_23_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_23_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_23_16:
.LPAT$2_α_23_18:        test             rax, rax;                            jz    .LPAT$2_α_23_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_23_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_23_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_23_4:                                                               jmp   n13_match_alternate_α
.LPAT$2_α_23_5:                                                               jmp   n10_match_arbno_af
.LPAT$2_α_23_0:         push             r14
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
                        test             eax, eax;                            js    n10_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_23_6]
                        push             rcx
                        push             rax;                                 jmp   n13_match_alternate_α
.LPAT$2_α_23_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n10_match_arbno_af
n12_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_23_12
                                                                              jmp   rax
.LPAT$2_β_23_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:  mov              r11, 9
                        mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .LPAT$2_α_25_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n15_match_defer_α
.LPAT$2_α_25_21:        lea              rax, [rip + .LPAT$2_α_25_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n14_match_defer_α
n13_match_alternate_s0: mov              r11, 9
                        lea              rax, [rip + .LPAT$2_α_25_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   n13_match_alternate_as
n13_match_alternate_s1: mov              r11, 9
                        lea              rax, [rip + .LPAT$2_α_25_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   n13_match_alternate_as
.LPAT$2_α_25_40:                                                              jmp   n15_match_defer_β
.LPAT$2_α_25_41:                                                              jmp   n14_match_defer_β
n13_match_alternate_as: mov              r11, 9;                              jmp   n10_match_arbno_as
n13_match_alternate_β:  mov              r11, 9
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
n13_match_alternate_af: mov              r11, 9
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.LPAT$2_α_25_19:                                                              jmp   n12_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_defer_α:      mov              r11, 10
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_26_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_26_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$2_α_26_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$2_α_26_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$2_α_26_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_26_18
.LPAT$2_α_26_17:        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .LPAT$2_α_26_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_26_16:
.LPAT$2_α_26_18:        test             rax, rax;                            jz    .LPAT$2_α_26_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_26_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_26_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_26_4:                                                               jmp   n13_match_alternate_s1
.LPAT$2_α_26_5:                                                               jmp   n13_match_alternate_af
.LPAT$2_α_26_0:         push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n13_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_26_6]
                        push             rcx
                        push             rax;                                 jmp   n13_match_alternate_s1
.LPAT$2_α_26_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n13_match_alternate_af
n14_match_defer_β:      mov              r11, 10
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_26_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_26_12
                                                                              jmp   rax
.LPAT$2_β_26_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:      mov              r11, 11
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .LPAT$2_α_27_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_27_11
.LPAT$2_α_27_13:        mov              rax, qword ptr [r9 + 32]             # group
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .LPAT$2_α_27_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_27_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .LPAT$2_α_27_10
.LPAT$2_α_27_9:         cmp              al, 88;                              jne   .LPAT$2_α_27_21
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
                        test             rax, rax;                            je    .LPAT$2_α_27_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$2_α_27_10
.LPAT$2_α_27_21:        xor              eax, eax
.LPAT$2_α_27_10:        test             rax, rax;                            je    .LPAT$2_α_27_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.LPAT$2_α_27_15:
.LPAT$2_α_27_11:        test             rax, rax;                            jz    .LPAT$2_α_27_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_27_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_27_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_27_4:                                                               jmp   n13_match_alternate_s0
.LPAT$2_α_27_5:                                                               jmp   n13_match_alternate_af
.LPAT$2_α_27_0:         push             r14
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
                        test             eax, eax;                            js    n13_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_27_6]
                        push             rcx
                        push             rax;                                 jmp   n13_match_alternate_s0
.LPAT$2_α_27_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n13_match_alternate_af
n15_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_27_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_27_12
                                                                              jmp   rax
.LPAT$2_β_27_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n11_match_lit_β
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
n28_match_pos_α:        mov              r11, 12
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$3_ω
                                                                              jmp   n29_match_arbno_α
n28_match_pos_β:        mov              r11, 12;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_match_arbno_α:      mov              r11, 13
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n30_match_rpos_α
n29_match_arbno_β:      mov              r11, 13
                        mov              r12, qword ptr [rbp + -40];          jmp   n31_match_arbno_α
n29_match_arbno_as:     mov              r11, 13
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n31_match_arbno_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n30_match_rpos_α
n29_match_arbno_af:     mov              r11, 13
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n28_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_rpos_α:       mov              r11, 14
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n29_match_arbno_β
                                                                              jmp   PAT$3_γ
n30_match_rpos_β:       mov              r11, 14;                             jmp   n29_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_arbno_α:      mov              r11, 15
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n32_match_defer_α
n31_match_arbno_β:      mov              r11, 15
                        mov              r12, qword ptr [rbp + -56];          jmp   n33_match_defer_α
n31_match_arbno_as:     mov              r11, 15
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n33_match_defer_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n32_match_defer_α
n31_match_arbno_af:     mov              r11, 15
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n33_match_defer_β
                                                                              jmp   n29_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:      mov              r11, 16
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$3_α_40_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$3_α_40_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$3_α_40_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$3_α_40_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$3_α_40_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_40_18
.LPAT$3_α_40_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$3_α_40_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$3_α_40_16:
.LPAT$3_α_40_18:        test             rax, rax;                            jz    .LPAT$3_α_40_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_40_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_40_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_40_4:                                                               jmp   n29_match_arbno_as
.LPAT$3_α_40_5:                                                               jmp   n31_match_arbno_β
.LPAT$3_α_40_0:         push             r14
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
                        test             eax, eax;                            js    n31_match_arbno_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$3_α_40_6]
                        push             rcx
                        push             rax;                                 jmp   n29_match_arbno_as
.LPAT$3_α_40_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n31_match_arbno_β
n32_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$3_β_40_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$3_β_40_12
                                                                              jmp   rax
.LPAT$3_β_40_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n33_match_defer_α:      mov              r11, 17
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .LPAT$3_α_41_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$3_α_41_11
.LPAT$3_α_41_13:        mov              rax, qword ptr [r9 + 32]             # group
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .LPAT$3_α_41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$3_α_41_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .LPAT$3_α_41_10
.LPAT$3_α_41_9:         cmp              al, 88;                              jne   .LPAT$3_α_41_21
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
                        test             rax, rax;                            je    .LPAT$3_α_41_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .LPAT$3_α_41_10
.LPAT$3_α_41_21:        xor              eax, eax
.LPAT$3_α_41_10:        test             rax, rax;                            je    .LPAT$3_α_41_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.LPAT$3_α_41_15:
.LPAT$3_α_41_11:        test             rax, rax;                            jz    .LPAT$3_α_41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$3_α_41_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$3_α_41_4]
                        push             rcx;                                 jmp   rax
.LPAT$3_α_41_4:                                                               jmp   n31_match_arbno_as
.LPAT$3_α_41_5:                                                               jmp   n31_match_arbno_af
.LPAT$3_α_41_0:         push             r14
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
                        test             eax, eax;                            js    n31_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$3_α_41_6]
                        push             rcx
                        push             rax;                                 jmp   n31_match_arbno_as
.LPAT$3_α_41_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n31_match_arbno_af
n33_match_defer_β:      mov              r11, 17
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$3_β_41_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$3_β_41_12
                                                                              jmp   rax
.LPAT$3_β_41_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n30_match_rpos_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "delim"
.Lgvan1:                .string          "word"
.Lgvan2:                .string          "group"
.Lgvan3:                .string          "treebank"
.Lgvan4:                .string          "src"
.Lgvan5:                .string          "PAT$2$V0"
.Lgvan6:                .string          "PAT$2$V1"
.Lgvan7:                .string          "PAT$2$V2"
.Lgvan8:                .string          "PAT$3$V0"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM       =   0
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 18
                        mov              r10, 1;                              jmp   n43_lit_integer_α
n42_statement_begin_β:  mov              r11, 18;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_kw_assign_snobol4_α
.Lmain_α_107_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 20
                        mov              rdi, qword ptr [rip + .Lmain_α_108_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_108_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lmain_α_108_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_statement_end_α
.Lmain_α_108_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 21
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         delim       =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 22
                        mov              r10, 2;                              jmp   n47_lit_string_α
n46_statement_begin_β:  mov              r11, 22;                             jmp   n51_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_113_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_call_α
.Lmain_α_113_0:         .quad            .Lmain_α_113_0_s
.Lmain_α_113_0_s:       .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             sub              rsp, 16
                        mov              r11, 24
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd115:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd115]
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
                        cmp              al, 104;                             jne   .Lmain_α_114_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Lmain_α_114_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_assign_α
n48_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # delim
                        mov              qword ptr [r9 + 8], rdx;             jmp   n50_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 26
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n51_statement_begin_α
#=======================================================================================================================
#         word        =   NOTANY('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 27
                        mov              r10, 3;                              jmp   n52_lit_string_α
n51_statement_begin_β:  mov              r11, 27;                             jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
.Lmain_α_121_0:         .quad            .Lmain_α_121_0_s
.Lmain_α_121_0_s:       .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             sub              rsp, 16
                        mov              r11, 29
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd123:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd123]
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
                        cmp              al, 104;                             jne   .Lmain_α_122_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Lmain_α_122_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
n53_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # word
                        mov              qword ptr [r9 + 24], rdx;            jmp   n55_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 31
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n56_statement_begin_α
#=======================================================================================================================
#         group       =   '('
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 32
                        mov              r10, 4;                              jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 32;                             jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 16]             # word
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$2$V0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 0]              # delim
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_assign_α
n59_var_β:              mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$2$V1
                        mov              qword ptr [r9 + 104], rdx;           jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 16]             # word
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_assign_α
n61_var_β:              mov              r11, 37
                        add              rsp, 16;                             jmp   n59_var_β
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 120], rdx;           jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_135_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_lit_string_α
n63_lit_string_β:       mov              r11, 39
                        add              rsp, 16;                             jmp   n61_var_β
.Lmain_α_135_0:         .quad            .Lmain_α_135_0_s
.Lmain_α_135_0_s:       .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_136_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_call_α
n64_lit_string_β:       mov              r11, 40
                        add              rsp, 16;                             jmp   n63_lit_string_β
.Lmain_α_136_0:         .quad            .Lmain_α_136_0_s
.Lmain_α_136_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             sub              rsp, 16
                        mov              r11, 41
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
.Lrkfnzd138:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd138]
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
                        cmp              al, 104;                             jne   .Lmain_α_137_240
                        add              rsp, 16;                             jmp   n64_lit_string_β
.Lmain_α_137_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_assign_α
n65_call_β:             mov              r11, 41
                        add              rsp, 16;                             jmp   n64_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # group
                        mov              qword ptr [r9 + 40], rdx;            jmp   n67_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 43
                        mov              r10, 4
                        add              rsp, 96;                             jmp   n68_statement_begin_α
#=======================================================================================================================
#         treebank    =   POS(0) ARBNO(ARBNO(*group) delim) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 44
                        mov              r10, 5;                              jmp   n69_var_α
n68_statement_begin_β:  mov              r11, 44;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 0]              # delim
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PAT$3$V0
                        mov              qword ptr [r9 + 136], rdx;           jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_lit_string_α
n71_lit_string_β:       mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
.Lmain_α_146_0:         .quad            .Lmain_α_146_0_s
.Lmain_α_146_0_s:       .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_call_α
n72_lit_string_β:       mov              r11, 48
                        add              rsp, 16;                             jmp   n71_lit_string_β
.Lmain_α_147_0:         .quad            .Lmain_α_147_0_s
.Lmain_α_147_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             sub              rsp, 16
                        mov              r11, 49
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
.Lrkfnzd149:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd149]
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
                        cmp              al, 104;                             jne   .Lmain_α_148_240
                        add              rsp, 16;                             jmp   n72_lit_string_β
.Lmain_α_148_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_assign_α
n73_call_β:             mov              r11, 49
                        add              rsp, 16;                             jmp   n72_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # treebank
                        mov              qword ptr [r9 + 56], rdx;            jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 51
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 52
                        mov              r10, 6;                              jmp   n77_lit_name_α
n76_statement_begin_β:  mov              r11, 52;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_name_α:         sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_lit_integer_α
.Lmain_α_155_0:         .quad            .Lmain_α_155_0_s
.Lmain_α_155_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_lit_string_α
n78_lit_integer_β:      mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
.Lmain_α_156_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_157_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_call_α
n79_lit_string_β:       mov              r11, 55
                        add              rsp, 16;                             jmp   n78_lit_integer_β
.Lmain_α_157_0:         .quad            .Lmain_α_157_0_s
.Lmain_α_157_0_s:       .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             sub              rsp, 16
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
.Lbynamefnzd56:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd56]
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
                        cmp              al, 104;                             jne   .Lmain_α_158_240
                        add              rsp, 16;                             jmp   n79_lit_string_β
.Lmain_α_158_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n81_statement_end_α
n80_call_β:             mov              r11, 56
                        add              rsp, 16;                             jmp   n79_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 57
                        mov              r10, 6
                        add              rsp, 64;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         src         =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 58
                        mov              r10, 7;                              jmp   n83_var_α
n82_statement_begin_β:  mov              r11, 58;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rdi, qword ptr [rip + .Lmain_α_163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_163_240
                        add              rsp, 16;                             jmp   n82_statement_begin_β
.Lmain_α_163_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_assign_α
.Lmain_α_163_0:         .quad            .Lmain_α_163_0_s
.Lmain_α_163_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # src
                        mov              qword ptr [r9 + 72], rdx;            jmp   n85_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 61
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n86_statement_begin_α
#=======================================================================================================================
#         src         ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 62
                        mov              r10, 8;                              jmp   n87_var_α
n86_statement_begin_β:  mov              r11, 62;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 64]             # src
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 48]             # treebank
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_assign_α
n88_var_β:              mov              r11, 64
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 65
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_171_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_match_begin_α
n89_assign_β:           mov              r11, 65;                             jmp   n88_var_β
.Lmain_α_171_0:         .quad            .Lmain_α_171_0_s
.Lmain_α_171_0_s:       .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n90_match_begin_α:      mov              r11, 66
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
.Lmain_α_173_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_173_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n91_match_defer_α
n90_match_begin_β:      mov              r11, 66
.Lmain_α_173_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_173_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_173_1
                                                                              jmp   .Lmain_α_173_0
.Lmain_β_173_1:
n90_match_begin_af:     mov              r11, 66
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
                        pop              rbp;                                 jmp   n89_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n91_match_defer_α:      mov              r11, 67
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S5]
                        cmp              rax, rdx;                            jne   .Lmain_α_174_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_174_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_174_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_174_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_174_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_174_0
.Lmain_α_174_31:        mov              edx, -1;                             jmp   .Lmain_α_174_0
.Lmain_α_174_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S5]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_174_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_174_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_174_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_174_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_174_23
.Lmain_α_174_22:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
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
.Lmain_α_174_23:        test             rax, rax;                            jz    .Lmain_α_174_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_174_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_174_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_174_4:                                                               jmp   n92_match_end_α
.Lmain_α_174_5:                                                               jmp   n90_match_begin_β
.Lmain_α_174_0:         mov              eax, edx
                        test             eax, eax;                            js    n90_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_174_6]
                        push             rcx
                        push             rax;                                 jmp   n92_match_end_α
.Lmain_α_174_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n90_match_begin_β
n91_match_defer_β:      mov              r11, 67
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_174_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_174_12
                                                                              jmp   rax
.Lmain_β_174_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n92_match_end_α:        mov              r11, 68
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
                        test             rax, rax;                            je    .Lmain_α_176_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n90_match_begin_af
.Lmain_α_176_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n93_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 69
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n94_statement_begin_α
#=======================================================================================================================
#         OUTPUT      =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 70
                        mov              r10, 9;                              jmp   n95_lit_string_α
n94_statement_begin_β:  mov              r11, 70;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lmain_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_var_α
.Lmain_α_181_0:         .quad            .Lmain_α_181_0_s
.Lmain_α_181_0_s:       .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # src
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_call_α
n96_var_β:              mov              r11, 72
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 73
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd184:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd184]
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
                        cmp              al, 104;                             jne   .Lmain_α_183_240
                        add              rsp, 16;                             jmp   n96_var_β
.Lmain_α_183_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_binop_α
n97_call_β:             mov              r11, 73
                        add              rsp, 16;                             jmp   n96_var_β
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              r11, 74
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 75
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_186_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_statement_end_α
.Lmain_α_186_0:         .quad            .Lmain_α_186_0_s
.Lmain_α_186_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 76
                        mov              r10, 9
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT      =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 77
                        mov              r10, 10;                             jmp   n102_lit_string_α
n101_statement_begin_β: mov              r11, 77;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lmain_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_assign_α
.Lmain_α_191_0:         .quad            .Lmain_α_191_0_s
.Lmain_α_191_0_s:       .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 79
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_192_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_statement_end_α
.Lmain_α_192_0:         .quad            .Lmain_α_192_0_s
.Lmain_α_192_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 80
                        mov              r10, 10
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
                        .long            32
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
                        .long            48
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
                        .long            240
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
                        .long            240
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$2$V0"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V2"
.S3:                    .string          "group"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PATV$0"
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
