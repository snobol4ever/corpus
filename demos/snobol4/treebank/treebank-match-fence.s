                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/treebank/treebank-match-fence.sno"
                        .file            2 "<included>"
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
                        .type            n0_match_span_bx, @function
n0_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_span_α:        sub              rsp, 16
                        mov              r11, 1
                        movsxd           rcx, r14d
.Lmatch_span_α_2_0:     cmp              ecx, r15d;                           jge   .Lmatch_span_α_2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_2_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_2_10
                                                                              jmp   .Lmatch_span_α_2_1
.Lmatch_span_α_2_10:    add              ecx, 1;                              jmp   .Lmatch_span_α_2_0
.Lmatch_span_α_2_1:     cmp              ecx, r14d;                           jg    .Lmatch_span_α_2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_span_α_2_240:   mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   PAT$0_γ
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_span_bx, .-n0_match_span_bx
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
                        .type            n3_match_notany_bx, @function
n3_match_notany_bx:
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
                        .size            n3_match_notany_bx, .-n3_match_notany_bx
                        .type            n4_match_break_bx, @function
n4_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_break_α:       sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_break_α_7_0:    cmp              ecx, r15d;                           jl    .Lmatch_break_α_7_240
                        add              rsp, 16;                             jmp   n3_match_notany_β
.Lmatch_break_α_7_240:  movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lmatch_break_α_7_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_7_0
.Lmatch_break_α_7_1:    mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n4_match_break_β:       mov              r11, 3
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   n3_match_notany_β
                        .size            n4_match_break_bx, .-n4_match_break_bx
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n8_match_lit_bx, @function
n8_match_lit_bx:
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
                        .size            n8_match_lit_bx, .-n8_match_lit_bx
                        .type            n9_match_defer_bx, @function
n9_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_defer_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_19_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_19_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_19_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_19_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_19_18
.Lmatch_defer_α_19_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_19_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_19_16:
.Lmatch_defer_α_19_18:  test             rax, rax;                            jz    .Lmatch_defer_α_19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_19_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_19_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_19_4:                                                         jmp   n10_match_arbno_α
.Lmatch_defer_α_19_5:   add              rsp, 16;                             jmp   n8_match_lit_β
.Lmatch_defer_α_19_0:   push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_19_240
                        add              rsp, 16;                             jmp   n8_match_lit_β
.Lmatch_defer_α_19_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_19_6]
                        push             rcx
                        push             rax;                                 jmp   n10_match_arbno_α
.Lmatch_defer_α_19_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n8_match_lit_β
n9_match_defer_β:       mov              r11, 5
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_19_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_19_12
                                                                              jmp   rax
.Lmatch_defer_β_19_12:                                                        jmp   qword ptr [rsp]
                        .size            n9_match_defer_bx, .-n9_match_defer_bx
                        .type            n10_match_arbno_bx, @function
n10_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_arbno_α:      mov              r11, 6
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n11_match_lit_α
n10_match_arbno_β:      mov              r11, 6
                        mov              r12, qword ptr [rbp + -40];          jmp   n12_match_defer_α
.Lmatch_arbno_γ_10_as:  mov              r11, 6
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n13_match_fence1_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n11_match_lit_α
.Lmatch_arbno_γ_10_af:  mov              r11, 6
.Lmatch_arbno_ω_10_af:  mov              r11, 6
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n9_match_defer_β
                        .size            n10_match_arbno_bx, .-n10_match_arbno_bx
                        .type            n11_match_lit_bx, @function
n11_match_lit_bx:
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
                        .size            n11_match_lit_bx, .-n11_match_lit_bx
                        .type            n12_match_defer_bx, @function
n12_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:      mov              r11, 8
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_24_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_24_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_24_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_24_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_24_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_24_18
.Lmatch_defer_α_24_17:  mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .Lmatch_defer_α_24_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_24_16:
.Lmatch_defer_α_24_18:  test             rax, rax;                            jz    .Lmatch_defer_α_24_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_24_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_24_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_24_4:                                                         jmp   n13_match_fence1_α
.Lmatch_defer_α_24_5:                                                         jmp   .Lmatch_arbno_ω_10_af
.Lmatch_defer_α_24_0:   push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_10_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_24_6]
                        push             rcx
                        push             rax;                                 jmp   n13_match_fence1_α
.Lmatch_defer_α_24_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_10_af
n12_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_24_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_24_12
                                                                              jmp   rax
.Lmatch_defer_β_24_12:                                                        jmp   qword ptr [rsp]
                        .size            n12_match_defer_bx, .-n12_match_defer_bx
                        .type            n13_match_fence1_bx, @function
n13_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_fence1_α:     mov              r11, 9
                        mov              qword ptr [rbp + -64], rsp;          jmp   n14_match_alternate_α
.Lmatch_fence1_γ_13_as: mov              r11, 9
                        mov              rsp, qword ptr [rbp + -64];          jmp   .Lmatch_arbno_γ_10_as
.Lmatch_fence1_γ_13_af: mov              r11, 9
.Lmatch_fence1_ω_13_af: mov              r11, 9
n13_match_fence1_β:     mov              r11, 9
                        mov              rsp, qword ptr [rbp + -64];          jmp   .Lmatch_arbno_ω_10_af
                        .size            n13_match_fence1_bx, .-n13_match_fence1_bx
                        .type            n14_match_alternate_bx, @function
n14_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_alternate_α:  mov              r11, 10
                        mov              dword ptr [rbp + -96], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_28_21]
                        mov              qword ptr [rbp + -80], rax;          jmp   n16_match_defer_α
.Lmatch_alternate_α_28_21:
                        lea              rax, [rip + .Lmatch_alternate_α_28_19]
                        mov              qword ptr [rbp + -80], rax;          jmp   n15_match_defer_α
.Lmatch_alternate_γ_14_s0:
                        mov              r11, 10
                        lea              rax, [rip + .Lmatch_alternate_α_28_40]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_14_as
.Lmatch_alternate_γ_14_s1:
                        mov              r11, 10
                        lea              rax, [rip + .Lmatch_alternate_α_28_41]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_14_as
.Lmatch_alternate_α_28_40:
                                                                              jmp   n16_match_defer_β
.Lmatch_alternate_α_28_41:
                                                                              jmp   n15_match_defer_β
.Lmatch_alternate_γ_14_as:
                        mov              r11, 10;                             jmp   .Lmatch_fence1_γ_13_as
n14_match_alternate_β:  mov              r11, 10
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_γ_14_af:
                        mov              r11, 10
.Lmatch_alternate_ω_14_af:
                        mov              r11, 10
                        mov              r14d, dword ptr [rbp + -96]
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_α_28_19:
                                                                              jmp   .Lmatch_fence1_ω_13_af
                        .size            n14_match_alternate_bx, .-n14_match_alternate_bx
                        .type            n15_match_defer_bx, @function
n15_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_29_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_29_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_29_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_29_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_29_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_29_18
.Lmatch_defer_α_29_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_29_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_29_16:
.Lmatch_defer_α_29_18:  test             rax, rax;                            jz    .Lmatch_defer_α_29_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_29_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_29_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_29_4:                                                         jmp   .Lmatch_alternate_γ_14_s1
.Lmatch_defer_α_29_5:                                                         jmp   .Lmatch_alternate_ω_14_af
.Lmatch_defer_α_29_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_14_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_29_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_14_s1
.Lmatch_defer_α_29_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_14_af
n15_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_29_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_29_12
                                                                              jmp   rax
.Lmatch_defer_β_29_12:                                                        jmp   qword ptr [rsp]
                        .size            n15_match_defer_bx, .-n15_match_defer_bx
                        .type            n16_match_defer_bx, @function
n16_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_defer_α:      mov              r11, 12
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_30_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_30_11
.Lmatch_defer_α_30_13:  mov              rax, qword ptr [r9 + 32]             # group
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_30_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_30_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lmatch_defer_α_30_10
.Lmatch_defer_α_30_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_30_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_30_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_30_10
.Lmatch_defer_α_30_21:  xor              eax, eax
.Lmatch_defer_α_30_10:  test             rax, rax;                            je    .Lmatch_defer_α_30_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_30_15:
.Lmatch_defer_α_30_11:  test             rax, rax;                            jz    .Lmatch_defer_α_30_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_30_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_30_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_30_4:                                                         jmp   .Lmatch_alternate_γ_14_s0
.Lmatch_defer_α_30_5:                                                         jmp   .Lmatch_alternate_ω_14_af
.Lmatch_defer_α_30_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_14_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_30_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_14_s0
.Lmatch_defer_α_30_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_14_af
n16_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_30_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_30_12
                                                                              jmp   rax
.Lmatch_defer_β_30_12:                                                        jmp   qword ptr [rsp]
                        .size            n16_match_defer_bx, .-n16_match_defer_bx
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
                        .type            n31_match_pos_bx, @function
n31_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_match_pos_α:        mov              r11, 13
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$3_ω
                                                                              jmp   n32_match_arbno_α
n31_match_pos_β:        mov              r11, 13;                             jmp   PAT$3_ω
                        .size            n31_match_pos_bx, .-n31_match_pos_bx
                        .type            n32_match_arbno_bx, @function
n32_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_match_arbno_α:      mov              r11, 14
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n33_match_rpos_α
n32_match_arbno_β:      mov              r11, 14
                        mov              r12, qword ptr [rbp + -40];          jmp   n34_match_arbno_α
.Lmatch_arbno_γ_32_as:  mov              r11, 14
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n36_match_fence0_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n33_match_rpos_α
.Lmatch_arbno_γ_32_af:  mov              r11, 14
.Lmatch_arbno_ω_32_af:  mov              r11, 14
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n31_match_pos_β
                        .size            n32_match_arbno_bx, .-n32_match_arbno_bx
                        .type            n33_match_rpos_bx, @function
n33_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_match_rpos_α:       mov              r11, 15
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n32_match_arbno_β
                                                                              jmp   PAT$3_γ
                        .size            n33_match_rpos_bx, .-n33_match_rpos_bx
                        .type            n34_match_arbno_bx, @function
n34_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_arbno_α:      mov              r11, 16
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n35_match_defer_α
n34_match_arbno_β:      mov              r11, 16
                        mov              r12, qword ptr [rbp + -56];          jmp   n37_match_defer_α
.Lmatch_arbno_γ_34_as:  mov              r11, 16
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n38_match_fence0_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n35_match_defer_α
.Lmatch_arbno_γ_34_af:  mov              r11, 16
.Lmatch_arbno_ω_34_af:  mov              r11, 16
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   .Lmatch_arbno_ω_32_af
                        .size            n34_match_arbno_bx, .-n34_match_arbno_bx
                        .type            n35_match_defer_bx, @function
n35_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_defer_α:      mov              r11, 17
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_45_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_45_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_45_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_45_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_45_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_45_18
.Lmatch_defer_α_45_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_45_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_45_16:
.Lmatch_defer_α_45_18:  test             rax, rax;                            jz    .Lmatch_defer_α_45_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_45_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_45_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_45_4:                                                         jmp   n36_match_fence0_α
.Lmatch_defer_α_45_5:                                                         jmp   n34_match_arbno_β
.Lmatch_defer_α_45_0:   push             r14
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
                        test             eax, eax;                            js    n34_match_arbno_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_45_6]
                        push             rcx
                        push             rax;                                 jmp   n36_match_fence0_α
.Lmatch_defer_α_45_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n34_match_arbno_β
n35_match_defer_β:      mov              r11, 17
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_45_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_45_12
                                                                              jmp   rax
.Lmatch_defer_β_45_12:                                                        jmp   qword ptr [rsp]
                        .size            n35_match_defer_bx, .-n35_match_defer_bx
                        .type            n36_match_fence0_bx, @function
n36_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_match_fence0_α:     mov              r11, 18;                             jmp   .Lmatch_arbno_γ_32_as
n36_match_fence0_β:     mov              r11, 18;                             jmp   .Lmatch_arbno_ω_32_af
                        .size            n36_match_fence0_bx, .-n36_match_fence0_bx
                        .type            n37_match_defer_bx, @function
n37_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:      mov              r11, 19
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_48_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_48_11
.Lmatch_defer_α_48_13:  mov              rax, qword ptr [r9 + 32]             # group
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_48_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_48_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lmatch_defer_α_48_10
.Lmatch_defer_α_48_9:   cmp              al, 88;                              jne   .Lmatch_defer_α_48_21
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
                        test             rax, rax;                            je    .Lmatch_defer_α_48_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_48_10
.Lmatch_defer_α_48_21:  xor              eax, eax
.Lmatch_defer_α_48_10:  test             rax, rax;                            je    .Lmatch_defer_α_48_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lmatch_defer_α_48_15:
.Lmatch_defer_α_48_11:  test             rax, rax;                            jz    .Lmatch_defer_α_48_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_48_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_48_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_48_4:                                                         jmp   n38_match_fence0_α
.Lmatch_defer_α_48_5:                                                         jmp   .Lmatch_arbno_ω_34_af
.Lmatch_defer_α_48_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_34_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_48_6]
                        push             rcx
                        push             rax;                                 jmp   n38_match_fence0_α
.Lmatch_defer_α_48_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_34_af
n37_match_defer_β:      mov              r11, 19
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_48_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_48_12
                                                                              jmp   rax
.Lmatch_defer_β_48_12:                                                        jmp   qword ptr [rsp]
                        .size            n37_match_defer_bx, .-n37_match_defer_bx
                        .type            n38_match_fence0_bx, @function
n38_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_match_fence0_α:     mov              r11, 20;                             jmp   .Lmatch_arbno_γ_34_as
n38_match_fence0_β:     mov              r11, 20;                             jmp   .Lmatch_arbno_ω_34_af
                        .size            n38_match_fence0_bx, .-n38_match_fence0_bx
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
                        .globl           main
main:
                        sub              rsp, 65544
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
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
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
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#=======================================================================================================================
#         &TRIM       =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_integer_α
.Llit_integer_α_119_0:  .quad            18446744073709551615
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_lit_string_α
.Llit_integer_α_120_0:  .quad            0
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 41
                        mov              rax, qword ptr [rip + .Llit_string_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
.Llit_string_α_121_0:   .quad            .Llit_string_α_121_0_s
.Llit_string_α_121_0_s: .string          "snobol4/treebank/treebank-match-fence.sno"
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
                        mov              r11, 24
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
.Lcall_α_rkfnzd123:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd123]
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
                        cmp              al, 104;                             jne   .Lcall_α_122_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n55_statement_begin_α
.Lcall_α_122_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_statement_begin_α
n54_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n55_statement_begin_α
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 25
                        mov              r10, 1;                              jmp   n56_lit_integer_α
n55_statement_begin_β:  mov              r11, 25
                        add              rsp, 64;                             jmp   n59_statement_begin_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_kw_assign_snobol4_α
.Llit_integer_α_126_0:  .quad            0
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_kw_assign_snobol4_bx, @function
n57_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_127_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_127_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Lkw_assign_snobol4_α_127_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_statement_end_α
.Lkw_assign_snobol4_α_127_0:
                        .quad            1
                        .size            n57_kw_assign_snobol4_bx, .-n57_kw_assign_snobol4_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 28
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n59_statement_begin_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#=======================================================================================================================
#         delim       =   SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n59_statement_begin_α:  mov              r11, 29
                        mov              r10, 2;                              jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 29;                             jmp   n64_statement_begin_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_call_α
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          "PAT$0"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 31
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd134:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd134]
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
                        cmp              al, 104;                             jne   .Lcall_α_133_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
.Lcall_α_133_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_assign_α
n61_call_β:             mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # delim
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
                        mov              rdi, qword ptr [rip + .Lassign_α_135_0]
                        .section         .rodata
.Lassign_α_135_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_135_1_s]
                        mov              r8, 2
                        mov              r9, 2
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
                        pop              rax;                                 jmp   n63_statement_end_α
.Lassign_α_135_0:       .quad            .Lassign_α_135_0_s
.Lassign_α_135_0_s:     .string          "delim"
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 33
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n64_statement_begin_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#=======================================================================================================================
#         word        =   NOTANY('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n64_statement_begin_α:  mov              r11, 34
                        mov              r10, 3;                              jmp   n65_lit_string_α
n64_statement_begin_β:  mov              r11, 34;                             jmp   n69_statement_begin_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_call_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "PAT$1"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             sub              rsp, 16
                        mov              r11, 36
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd142:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd142]
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
                        cmp              al, 104;                             jne   .Lcall_α_141_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Lcall_α_141_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
n66_call_β:             mov              r11, 36
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # word
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
                        mov              rdi, qword ptr [rip + .Lassign_α_143_0]
                        .section         .rodata
.Lassign_α_143_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_143_1_s]
                        mov              r8, 3
                        mov              r9, 3
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
                        pop              rax;                                 jmp   n68_statement_end_α
.Lassign_α_143_0:       .quad            .Lassign_α_143_0_s
.Lassign_α_143_0_s:     .string          "word"
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 38
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n69_statement_begin_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#=======================================================================================================================
#         group       =   '('
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n69_statement_begin_α:  mov              r11, 39
                        mov              r10, 4;                              jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 39;                             jmp   n81_statement_begin_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 16]             # word
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_var_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 41
                        mov              rax, qword ptr [r9 + 16]             # word
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_var_α
n71_var_β:              mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 0]              # delim
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_var_β:              mov              r11, 42
                        add              rsp, 16;                             jmp   n71_var_β
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 80], rax             # PAT$2$V0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_151_0]
                        .section         .rodata
.Lassign_α_151_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_151_1_s]
                        mov              r8, 5
                        mov              r9, 4
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
                        pop              rax;                                 jmp   n74_assign_α
.Lassign_α_151_0:       .quad            .Lassign_α_151_0_s
.Lassign_α_151_0_s:     .string          "PAT$2$V0"
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 96], rax             # PAT$2$V1
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
                        mov              rdi, qword ptr [rip + .Lassign_α_152_0]
                        .section         .rodata
.Lassign_α_152_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_152_1_s]
                        mov              r8, 5
                        mov              r9, 4
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
                        pop              rax;                                 jmp   n75_assign_α
.Lassign_α_152_0:       .quad            .Lassign_α_152_0_s
.Lassign_α_152_0_s:     .string          "PAT$2$V1"
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # PAT$2$V2
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
                        mov              rdi, qword ptr [rip + .Lassign_α_153_0]
                        .section         .rodata
.Lassign_α_153_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_153_1_s]
                        mov              r8, 5
                        mov              r9, 4
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
                        pop              rax;                                 jmp   n76_lit_string_α
.Lassign_α_153_0:       .quad            .Lassign_α_153_0_s
.Lassign_α_153_0_s:     .string          "PAT$2$V2"
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_lit_string_bx, @function
n76_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_154_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_lit_string_α
n76_lit_string_β:       mov              r11, 46
                        add              rsp, 16;                             jmp   n72_var_β
.Llit_string_α_154_0:   .quad            .Llit_string_α_154_0_s
.Llit_string_α_154_0_s: .string          "PAT$2"
                        .size            n76_lit_string_bx, .-n76_lit_string_bx
                        .type            n77_lit_string_bx, @function
n77_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_call_α
n77_lit_string_β:       mov              r11, 47
                        add              rsp, 16;                             jmp   n76_lit_string_β
.Llit_string_α_155_0:   .quad            .Llit_string_α_155_0_s
.Llit_string_α_155_0_s: .string          "3"
                        .size            n77_lit_string_bx, .-n77_lit_string_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             sub              rsp, 16
                        mov              r11, 48
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
.Lcall_α_rkfnzd157:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd157]
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
                        cmp              al, 104;                             jne   .Lcall_α_156_240
                        add              rsp, 16;                             jmp   n77_lit_string_β
.Lcall_α_156_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
n78_call_β:             mov              r11, 48
                        add              rsp, 16;                             jmp   n77_lit_string_β
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 49
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # group
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
                        mov              rdi, qword ptr [rip + .Lassign_α_158_0]
                        .section         .rodata
.Lassign_α_158_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_158_1_s]
                        mov              r8, 5
                        mov              r9, 4
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
                        pop              rax;                                 jmp   n80_statement_end_α
.Lassign_α_158_0:       .quad            .Lassign_α_158_0_s
.Lassign_α_158_0_s:     .string          "group"
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 50
                        mov              r10, 4
                        add              rsp, 96;                             jmp   n81_statement_begin_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_statement_begin_bx, @function
n81_statement_begin_bx:
#=======================================================================================================================
#         treebank    =   POS(0) ARBNO(ARBNO(*group FENCE) delim FENCE) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n81_statement_begin_α:  mov              r11, 51
                        mov              r10, 5;                              jmp   n82_var_α
n81_statement_begin_β:  mov              r11, 51;                             jmp   n89_statement_begin_α
                        .size            n81_statement_begin_bx, .-n81_statement_begin_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 0]              # delim
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_assign_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # PAT$3$V0
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
                        mov              rdi, qword ptr [rip + .Lassign_α_164_0]
                        .section         .rodata
.Lassign_α_164_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_164_1_s]
                        mov              r8, 9
                        mov              r9, 5
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
                        pop              rax;                                 jmp   n84_lit_string_α
.Lassign_α_164_0:       .quad            .Lassign_α_164_0_s
.Lassign_α_164_0_s:     .string          "PAT$3$V0"
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_165_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_string_α
n84_lit_string_β:       mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Llit_string_α_165_0:   .quad            .Llit_string_α_165_0_s
.Llit_string_α_165_0_s: .string          "PAT$3"
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_α
n85_lit_string_β:       mov              r11, 55
                        add              rsp, 16;                             jmp   n84_lit_string_β
.Llit_string_α_166_0:   .quad            .Llit_string_α_166_0_s
.Llit_string_α_166_0_s: .string          "1"
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
                        mov              r11, 56
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
.Lcall_α_rkfnzd168:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd168]
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
                        cmp              al, 104;                             jne   .Lcall_α_167_240
                        add              rsp, 16;                             jmp   n85_lit_string_β
.Lcall_α_167_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_assign_α
n86_call_β:             mov              r11, 56
                        add              rsp, 16;                             jmp   n85_lit_string_β
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 57
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # treebank
                        mov              qword ptr [r9 + 56], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_169_0]
                        .section         .rodata
.Lassign_α_169_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_169_1_s]
                        mov              r8, 9
                        mov              r9, 5
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
                        pop              rax;                                 jmp   n88_statement_end_α
.Lassign_α_169_0:       .quad            .Lassign_α_169_0_s
.Lassign_α_169_0_s:     .string          "treebank"
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 58
                        mov              r10, 5
                        add              rsp, 64;                             jmp   n89_statement_begin_α
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n89_statement_begin_α:  mov              r11, 59
                        mov              r10, 6;                              jmp   n90_lit_name_α
n89_statement_begin_β:  mov              r11, 59;                             jmp   n95_statement_begin_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_lit_name_bx, @function
n90_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_name_α:         sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_174_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
.Llit_name_α_174_0:     .quad            .Llit_name_α_174_0_s
.Llit_name_α_174_0_s:   .string          "INPUT"
                        .size            n90_lit_name_bx, .-n90_lit_name_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_lit_string_α
n91_lit_integer_β:      mov              r11, 61
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_integer_α_175_0:  .quad            9
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_call_α
n92_lit_string_β:       mov              r11, 62
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "[-f0 -r4194304]"
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        mov              r11, 63
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
.Lcall_α_bynamefnzd63:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd63]
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
                        cmp              al, 104;                             jne   .Lcall_α_177_240
                        add              rsp, 16;                             jmp   n92_lit_string_β
.Lcall_α_177_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_statement_end_α
n93_call_β:             mov              r11, 63
                        add              rsp, 16;                             jmp   n92_lit_string_β
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 64
                        mov              r10, 6
                        add              rsp, 64;                             jmp   n95_statement_begin_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
#=======================================================================================================================
#         src         =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n95_statement_begin_α:  mov              r11, 65
                        mov              r10, 7;                              jmp   n96_var_α
n95_statement_begin_β:  mov              r11, 65;                             jmp   n114_statement_begin_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rdi, qword ptr [rip + .Lvar_α_182_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_182_240
                        add              rsp, 16;                             jmp   n95_statement_begin_β
.Lvar_α_182_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_assign_α
.Lvar_α_182_0:          .quad            .Lvar_α_182_0_s
.Lvar_α_182_0_s:        .string          "INPUT"
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # src
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
                        mov              rdi, qword ptr [rip + .Lassign_α_183_0]
                        .section         .rodata
.Lassign_α_183_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_183_1_s]
                        mov              r8, 11
                        mov              r9, 7
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
                        pop              rax;                                 jmp   n98_statement_end_α
.Lassign_α_183_0:       .quad            .Lassign_α_183_0_s
.Lassign_α_183_0_s:     .string          "src"
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 68
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n99_statement_begin_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
#=======================================================================================================================
#         src         ?   treebank  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n99_statement_begin_α:  mov              r11, 69
                        mov              r10, 8;                              jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 69;                             jmp   n114_statement_begin_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # src
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_var_α
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 71
                        mov              rax, qword ptr [r9 + 48]             # treebank
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_assign_α
n101_var_β:             mov              r11, 71
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n114_statement_begin_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 72
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
                        mov              rdi, qword ptr [rip + .Lassign_α_190_0]
                        .section         .rodata
.Lassign_α_190_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_190_1_s]
                        mov              r8, 12
                        mov              r9, 8
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
                        mov              rdi, qword ptr [rip + .Lassign_α_190_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n103_match_begin_α
n102_assign_β:          mov              r11, 72;                             jmp   n101_var_β
.Lassign_α_190_0:       .quad            .Lassign_α_190_0_s
.Lassign_α_190_0_s:     .string          "PATV$0"
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_match_begin_bx, @function
n103_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_match_begin_α:     mov              r11, 73
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
.Lmatch_begin_α_192_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_192_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n104_match_defer_α
n103_match_begin_β:     mov              r11, 73
.Lmatch_begin_α_192_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_192_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_192_1
                                                                              jmp   .Lmatch_begin_α_192_0
.Lmatch_begin_β_192_1:
.Lmatch_begin_γ_103_af: mov              r11, 73
.Lmatch_begin_ω_103_af: mov              r11, 73
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
                        pop              rbp;                                 jmp   n102_assign_β
                        .size            n103_match_begin_bx, .-n103_match_begin_bx
                        .type            n104_match_defer_bx, @function
n104_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_match_defer_α:     mov              r11, 74
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S5]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_193_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_193_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_193_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_193_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_193_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_193_23
                                                                              jmp   .Lmatch_defer_α_193_22
.Lmatch_defer_α_193_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_193_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_193_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_193_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_193_0
.Lmatch_defer_α_193_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_193_0
.Lmatch_defer_α_193_22: push             r14
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
.Lmatch_defer_α_193_23: test             rax, rax;                            jz    .Lmatch_defer_α_193_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_193_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_193_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_193_4:                                                        jmp   n105_match_end_α
.Lmatch_defer_α_193_5:                                                        jmp   n103_match_begin_β
.Lmatch_defer_α_193_0:  mov              eax, edx
                        test             eax, eax;                            js    n103_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_193_6]
                        push             rcx
                        push             rax;                                 jmp   n105_match_end_α
.Lmatch_defer_α_193_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n103_match_begin_β
n104_match_defer_β:     mov              r11, 74
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_193_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_193_12
                                                                              jmp   rax
.Lmatch_defer_β_193_12:                                                       jmp   qword ptr [rsp]
                        .size            n104_match_defer_bx, .-n104_match_defer_bx
                        .type            n105_match_end_bx, @function
n105_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_match_end_α:       mov              r11, 75
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
                        test             rax, rax;                            je    .Lmatch_end_α_195_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_103_af
.Lmatch_end_α_195_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n106_statement_end_α
                        .size            n105_match_end_bx, .-n105_match_end_bx
                        .type            n106_statement_end_bx, @function
n106_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 76
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n107_statement_begin_α
                        .size            n106_statement_end_bx, .-n106_statement_end_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT      =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n107_statement_begin_α: mov              r11, 77
                        mov              r10, 9;                              jmp   n108_lit_string_α
n107_statement_begin_β: mov              r11, 77;                             jmp   main_γ
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_lit_string_bx, @function
n108_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_var_α
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "matched bytes="
                        .size            n108_lit_string_bx, .-n108_lit_string_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 64]             # src
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_call_α
n109_var_β:             mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            sub              rsp, 16
                        mov              r11, 80
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd203:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd203]
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
                        cmp              al, 104;                             jne   .Lcall_α_202_240
                        add              rsp, 16;                             jmp   n109_var_β
.Lcall_α_202_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_binop_α
n110_call_β:            mov              r11, 80
                        add              rsp, 16;                             jmp   n109_var_β
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_binop_bx, @function
n111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 81
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_assign_α
                        .size            n111_binop_bx, .-n111_binop_bx
                        .type            n112_assign_bx, @function
n112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 82
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
                        mov              rdi, qword ptr [rip + .Lassign_α_205_0]
                        .section         .rodata
.Lassign_α_205_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_205_1_s]
                        mov              r8, 13
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
                        mov              rdi, qword ptr [rip + .Lassign_α_205_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_statement_end_α
.Lassign_α_205_0:       .quad            .Lassign_α_205_0_s
.Lassign_α_205_0_s:     .string          "OUTPUT"
                        .size            n112_assign_bx, .-n112_assign_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 83
                        mov              r10, 9
                        add              rsp, 64;                             jmp   main_γ
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_statement_begin_bx, @function
n114_statement_begin_bx:
#=======================================================================================================================
# error   OUTPUT      =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n114_statement_begin_α: mov              r11, 84
                        mov              r10, 10;                             jmp   n115_lit_string_α
n114_statement_begin_β: mov              r11, 84;                             jmp   main_γ
                        .size            n114_statement_begin_bx, .-n114_statement_begin_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_assign_α
.Llit_string_α_210_0:   .quad            .Llit_string_α_210_0_s
.Llit_string_α_210_0_s: .string          "Pattern match failed"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_assign_bx, @function
n116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 86
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
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        .section         .rodata
.Lassign_α_211_1_s:     .string          "snobol4/treebank/treebank-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_211_1_s]
                        mov              r8, 14
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
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_211_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_statement_end_α
.Lassign_α_211_0:       .quad            .Lassign_α_211_0_s
.Lassign_α_211_0_s:     .string          "OUTPUT"
                        .size            n116_assign_bx, .-n116_assign_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 87
                        mov              r10, 10
                        add              rsp, 16;                             jmp   main_γ
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_goto_bx, @function
n118_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_α:            mov              r11, 88;                             jmp   n114_statement_begin_α
n118_goto_β:            mov              r11, 88;                             jmp   main_ω
                        .size            n118_goto_bx, .-n118_goto_bx
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
                        .long            256
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
                        .long            304
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
.S1:                    .string          "PAT$2$V2"
.S2:                    .string          "PAT$2$V1"
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
