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
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx2_0:                 cmp              ecx, r15d;                           jge   .Lx2_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx2_1
                        add              ecx, 1;                              jmp   .Lx2_0
.Lx2_1:                 cmp              ecx, r14d;                           jg    .Lx2_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx2_240:               mov              dword ptr [rbp + -60], r14d
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
                        sub              rsp, 104
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 2
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx7_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n5_match_span_α
.Lx7_21:                lea              rax, [rip + .Lx7_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_lit_α
n3_match_alternate_s0:  mov              r11, 2
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
n3_match_alternate_s1:  mov              r11, 2
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
.Lx7_40:                                                                      jmp   n5_match_span_β
.Lx7_41:                                                                      jmp   n4_match_lit_β
n3_match_alternate_as:  mov              r11, 2;                              jmp   PAT$1_γ
n3_match_alternate_β:   mov              r11, 2
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n3_match_alternate_af:  mov              r11, 2
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx7_19:                                                                      jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120;                            jne   n3_match_alternate_af
                        add              r14d, 1;                             jmp   n3_match_alternate_s1
n4_match_lit_β:         mov              r11, 3
                        sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:        mov              r11, 4
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx11_0:                cmp              ecx, r15d;                           jge   .Lx11_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx11_1
                        add              ecx, 1;                              jmp   .Lx11_0
.Lx11_1:                cmp              ecx, r14d;                           jle   n3_match_alternate_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n3_match_alternate_s0
n5_match_span_β:        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -60];         jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n3_match_alternate_β
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
n12_match_alternate_α:  mov              r11, 5
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n17_match_span_α
.Lx19_21:               lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n14_match_lit_α
n12_match_alternate_s0: mov              r11, 5
                        lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_alternate_as
n12_match_alternate_s1: mov              r11, 5
                        lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n12_match_alternate_as
.Lx19_40:                                                                     jmp   n17_match_span_β
.Lx19_41:                                                                     jmp   n13_goto_β
n12_match_alternate_as: mov              r11, 5;                              jmp   PAT$2_γ
n12_match_alternate_β:  mov              r11, 5
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n12_match_alternate_af: mov              r11, 5
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx19_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_goto_α:             mov              r11, 6;                              jmp   n12_match_alternate_af
n13_goto_β:             mov              r11, 6;                              jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n12_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n12_match_alternate_af
                        add              r14d, 1;                             jmp   n15_match_defer_α
n14_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_defer_α:      mov              r11, 8
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx23_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx23_11
.Lx23_13:               mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx23_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx23_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx23_10
.Lx23_9:                cmp              al, 88;                              jne   .Lx23_21
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
                        test             rax, rax;                            je    .Lx23_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx23_10
.Lx23_21:               xor              eax, eax
.Lx23_10:               test             rax, rax;                            je    .Lx23_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx23_15:
.Lx23_11:               test             rax, rax;                            jz    .Lx23_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx23_5]
                        push             rcx
                        lea              rcx, [rip + .Lx23_4]
                        push             rcx;                                 jmp   rax
.Lx23_4:                                                                      jmp   n16_match_lit_α
.Lx23_5:                                                                      jmp   n14_match_lit_β
.Lx23_0:                push             r14
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
                        test             eax, eax;                            js    n14_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx23_6]
                        push             rcx
                        push             rax;                                 jmp   n16_match_lit_α
.Lx23_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n14_match_lit_β
n15_match_defer_β:      mov              r11, 8
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx23_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx23_12
                                                                              jmp   rax
.Lx23_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:        mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n15_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n15_match_defer_β
                        add              r14d, 1;                             jmp   n12_match_alternate_s1
n16_match_lit_β:        mov              r11, 9
                        sub              r14d, 1;                             jmp   n15_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_span_α:       sub              rsp, 16
                        mov              r11, 10
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx27_0:                cmp              ecx, r15d;                           jge   .Lx27_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx27_1
                        add              ecx, 1;                              jmp   .Lx27_0
.Lx27_1:                cmp              ecx, r14d;                           jg    .Lx27_240
                        add              rsp, 16;                             jmp   n12_match_alternate_af
.Lx27_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n12_match_alternate_s0
n17_match_span_β:       mov              r11, 10
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n12_match_alternate_β
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
                        sub              rsp, 56
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n28_match_lit_α:        mov              r11, 11
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   PAT$3_ω
                        add              r14d, 1;                             jmp   n29_match_defer_α
n28_match_lit_β:        mov              r11, 11
                        sub              r14d, 1;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:      sub              rsp, 16
                        mov              r11, 12
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx36_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx36_11
.Lx36_13:               mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx36_9
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
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx36_10
.Lx36_9:                cmp              al, 88;                              jne   .Lx36_21
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
                        test             rax, rax;                            je    .Lx36_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx36_10
.Lx36_21:               xor              eax, eax
.Lx36_10:               test             rax, rax;                            je    .Lx36_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx36_15:
.Lx36_11:               test             rax, rax;                            jz    .Lx36_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx36_5]
                        push             rcx
                        lea              rcx, [rip + .Lx36_4]
                        push             rcx;                                 jmp   rax
.Lx36_4:                                                                      jmp   n30_match_arbno_α
.Lx36_5:                add              rsp, 16;                             jmp   n28_match_lit_β
.Lx36_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx36_240
                        add              rsp, 16;                             jmp   n28_match_lit_β
.Lx36_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx36_6]
                        push             rcx
                        push             rax;                                 jmp   n30_match_arbno_α
.Lx36_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n28_match_lit_β
n29_match_defer_β:      mov              r11, 12
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx36_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx36_12
                                                                              jmp   rax
.Lx36_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:      mov              r11, 13
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n31_match_lit_α
n30_match_arbno_β:      mov              r11, 13;                             jmp   n32_match_lit_α
n30_match_arbno_as:     mov              r11, 13
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n32_match_lit_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n31_match_lit_α
n30_match_arbno_af:     mov              r11, 13
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n33_match_defer_β
                                                                              jmp   n29_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:        mov              r11, 14
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n30_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n30_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$3_γ
n31_match_lit_β:        mov              r11, 14
                        sub              r14d, 1;                             jmp   n30_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:        mov              r11, 15
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n30_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n30_match_arbno_af
                        add              r14d, 1;                             jmp   n33_match_defer_α
n32_match_lit_β:        mov              r11, 15
                        sub              r14d, 1;                             jmp   n30_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_defer_α:      mov              r11, 16
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx43_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx43_11
.Lx43_13:               mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx43_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx43_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx43_10
.Lx43_9:                cmp              al, 88;                              jne   .Lx43_21
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
                        test             rax, rax;                            je    .Lx43_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx43_10
.Lx43_21:               xor              eax, eax
.Lx43_10:               test             rax, rax;                            je    .Lx43_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lx43_15:
.Lx43_11:               test             rax, rax;                            jz    .Lx43_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx43_5]
                        push             rcx
                        lea              rcx, [rip + .Lx43_4]
                        push             rcx;                                 jmp   rax
.Lx43_4:                                                                      jmp   n30_match_arbno_as
.Lx43_5:                                                                      jmp   n32_match_lit_β
.Lx43_0:                push             r14
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
                        test             eax, eax;                            js    n32_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx43_6]
                        push             rcx
                        push             rax;                                 jmp   n30_match_arbno_as
.Lx43_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n32_match_lit_β
n33_match_defer_β:      mov              r11, 16
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx43_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx43_12
                                                                              jmp   rax
.Lx43_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n31_match_lit_β
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
                        mov              edi, 12
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 12
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ITEM"
.Lgvan1:                .string          "ITEM2"
.Lgvan2:                .string          "NEST"
.Lgvan3:                .string          "LISTP"
.Lgvan4:                .string          "S1"
.Lgvan5:                .string          "S2"
.Lgvan6:                .string          "S3"
.Lgvan7:                .string          "S4"
.Lgvan8:                .string          "S5"
.Lgvan9:                .string          "S6"
.Lgvan10:               .string          "S7"
.Lgvan11:               .string          "S8"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         ITEM  = SPAN("0123456789")
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 17
                        mov              r10, 1;                              jmp   n45_lit_string_α
n44_statement_begin_β:  mov              r11, 17;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd275:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd275]
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
                        cmp              al, 104;                             jne   .Lx274_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx274_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ITEM
                        mov              qword ptr [r9 + 8], rdx;             jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 21
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         ITEM2 = SPAN("0123456789") | "x"
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 22
                        mov              r10, 2;                              jmp   n50_lit_string_α
n49_statement_begin_β:  mov              r11, 22;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
                        mov              r11, 24
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd283:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd283]
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
                        cmp              al, 104;                             jne   .Lx282_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lx282_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_assign_α
n51_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # ITEM2
                        mov              qword ptr [r9 + 24], rdx;            jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 26
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         NEST  = SPAN("0123456789") | "(" *NEST ")"
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 27
                        mov              r10, 3;                              jmp   n55_lit_string_α
n54_statement_begin_β:  mov              r11, 27;                             jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             sub              rsp, 16
                        mov              r11, 29
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd291:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd291]
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
                        cmp              al, 104;                             jne   .Lx290_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Lx290_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_assign_α
n56_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # NEST
                        mov              qword ptr [r9 + 40], rdx;            jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 31
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n59_statement_begin_α
#=======================================================================================================================
#         LISTP = "(" *ITEM ARBNO("," *ITEM) ")"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 32
                        mov              r10, 4;                              jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 32;                             jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_call_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 34
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd299:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd299]
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
                        cmp              al, 104;                             jne   .Lx298_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
.Lx298_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_assign_α
n61_call_β:             mov              r11, 34
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # LISTP
                        mov              qword ptr [r9 + 56], rdx;            jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 36
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n64_statement_begin_α
#=======================================================================================================================
#         S1 = "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 37
                        mov              r10, 5;                              jmp   n65_lit_string_α
n64_statement_begin_β:  mov              r11, 37;                             jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_assign_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "(1,22,333)"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # S1
                        mov              qword ptr [r9 + 72], rdx;            jmp   n67_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 40
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n68_statement_begin_α
#=======================================================================================================================
#         S2 = "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 41
                        mov              r10, 6;                              jmp   n69_lit_string_α
n68_statement_begin_β:  mov              r11, 41;                             jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "(7)"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # S2
                        mov              qword ptr [r9 + 88], rdx;            jmp   n71_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 44
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n72_statement_begin_α
#=======================================================================================================================
#         S3 = "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 45
                        mov              r10, 7;                              jmp   n73_lit_string_α
n72_statement_begin_β:  mov              r11, 45;                             jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_assign_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "(1,,2)"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S3
                        mov              qword ptr [r9 + 104], rdx;           jmp   n75_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 48
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n76_statement_begin_α
#=======================================================================================================================
#         S4 = "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 49
                        mov              r10, 8;                              jmp   n77_lit_string_α
n76_statement_begin_β:  mov              r11, 49;                             jmp   n80_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_assign_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "(11,22)"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # S4
                        mov              qword ptr [r9 + 120], rdx;           jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 52
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n80_statement_begin_α
#=======================================================================================================================
#         S5 = "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 53
                        mov              r10, 9;                              jmp   n81_lit_string_α
n80_statement_begin_β:  mov              r11, 53;                             jmp   n84_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_assign_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "a1,2,3z"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # S5
                        mov              qword ptr [r9 + 136], rdx;           jmp   n83_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 56
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n84_statement_begin_α
#=======================================================================================================================
#         S6 = "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 57
                        mov              r10, 10;                             jmp   n85_lit_string_α
n84_statement_begin_β:  mov              r11, 57;                             jmp   n88_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "(4,5)"
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # S6
                        mov              qword ptr [r9 + 152], rdx;           jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 60
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n88_statement_begin_α
#=======================================================================================================================
#         S7 = "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 61
                        mov              r10, 11;                             jmp   n89_lit_string_α
n88_statement_begin_β:  mov              r11, 61;                             jmp   n92_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_assign_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "(1,(2),3)"
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              r11, 63
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # S7
                        mov              qword ptr [r9 + 168], rdx;           jmp   n91_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 64
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n92_statement_begin_α
#=======================================================================================================================
#         S8 = "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 65
                        mov              r10, 12;                             jmp   n93_lit_string_α
n92_statement_begin_β:  mov              r11, 65;                             jmp   n96_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_assign_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "(1,2,3,4,5,6,7,8,9,10,11,12)"
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # S8
                        mov              qword ptr [r9 + 184], rdx;           jmp   n95_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:    mov              r11, 68
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n96_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)   :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 69
                        mov              r10, 13;                             jmp   n97_var_α
n96_statement_begin_β:  mov              r11, 69;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # S1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_match_begin_α:      mov              r11, 71
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx355_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx355_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n99_match_pos_α
n98_match_begin_β:      mov              r11, 71
.Lx355_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx355_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx355_1
                                                                              jmp   .Lx355_0
.Lx355_1:
n98_match_begin_af:     mov              r11, 71
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
                        add              rsp, 16;                             jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_match_pos_α:        mov              r11, 72
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n98_match_begin_β
                                                                              jmp   n100_match_lit_α
n99_match_pos_β:        mov              r11, 72;                             jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_lit_α:       mov              r11, 73
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n98_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n98_match_begin_β
                        add              r14d, 1;                             jmp   n101_match_defer_α
n100_match_lit_β:       mov              r11, 73
                        sub              r14d, 1;                             jmp   n98_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_defer_α:     sub              rsp, 16
                        mov              r11, 74
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx359_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx359_11
.Lx359_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx359_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx359_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx359_10
.Lx359_9:               cmp              al, 88;                              jne   .Lx359_21
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
                        test             rax, rax;                            je    .Lx359_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx359_10
.Lx359_21:              xor              eax, eax
.Lx359_10:              test             rax, rax;                            je    .Lx359_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lx359_15:
.Lx359_11:              test             rax, rax;                            jz    .Lx359_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx359_5]
                        push             rcx
                        lea              rcx, [rip + .Lx359_4]
                        push             rcx;                                 jmp   rax
.Lx359_4:                                                                     jmp   n102_match_arbno_α
.Lx359_5:               add              rsp, 16;                             jmp   n100_match_lit_β
.Lx359_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx359_240
                        add              rsp, 16;                             jmp   n100_match_lit_β
.Lx359_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx359_6]
                        push             rcx
                        push             rax;                                 jmp   n102_match_arbno_α
.Lx359_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n100_match_lit_β
n101_match_defer_β:     mov              r11, 74
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx359_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx359_12
                                                                              jmp   rax
.Lx359_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n102_match_arbno_α:     mov              r11, 75
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n103_match_lit_α
n102_match_arbno_β:     mov              r11, 75;                             jmp   n108_match_lit_α
n102_match_arbno_as:    mov              r11, 75
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n108_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n103_match_lit_α
n102_match_arbno_af:    mov              r11, 75
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n101_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n103_match_lit_α:       mov              r11, 76
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n102_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n102_match_arbno_β
                        add              r14d, 1;                             jmp   n104_match_rpos_α
n103_match_lit_β:       mov              r11, 76
                        sub              r14d, 1;                             jmp   n102_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_rpos_α:      mov              r11, 77
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n103_match_lit_β
                                                                              jmp   n105_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n105_match_end_α:       mov              r11, 78
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
                        test             rax, rax;                            je    .Lx366_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n98_match_begin_af
.Lx366_13:              add              rsp, 16
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
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 79
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 5
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   main_γ
n107_lit_string_β:      mov              r11, 80;                             jmp   main_ω
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n108_match_lit_α:       mov              r11, 81
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n102_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n102_match_arbno_af
                        add              r14d, 1;                             jmp   n109_match_defer_α
n108_match_lit_β:       mov              r11, 81
                        sub              r14d, 1;                             jmp   n102_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n109_match_defer_α:     mov              r11, 82
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx372_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx372_11
.Lx372_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx372_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx372_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx372_10
.Lx372_9:               cmp              al, 88;                              jne   .Lx372_21
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
                        test             rax, rax;                            je    .Lx372_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx372_10
.Lx372_21:              xor              eax, eax
.Lx372_10:              test             rax, rax;                            je    .Lx372_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lx372_15:
.Lx372_11:              test             rax, rax;                            jz    .Lx372_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx372_5]
                        push             rcx
                        lea              rcx, [rip + .Lx372_4]
                        push             rcx;                                 jmp   rax
.Lx372_4:                                                                     jmp   n102_match_arbno_as
.Lx372_5:                                                                     jmp   n108_match_lit_β
.Lx372_0:               push             r14
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
                        test             eax, eax;                            js    n108_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx372_6]
                        push             rcx
                        push             rax;                                 jmp   n102_match_arbno_as
.Lx372_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n108_match_lit_β
n109_match_defer_β:     mov              r11, 82
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx372_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx372_12
                                                                              jmp   rax
.Lx372_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 83
                        mov              r10, 14;                             jmp   n111_lit_string_α
n110_statement_begin_β: mov              r11, 83;                             jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_assign_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 85
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_statement_end_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 86
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 87
                        mov              r10, 15;                             jmp   n115_lit_string_α
n114_statement_begin_β: mov              r11, 87;                             jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_assign_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              r11, 89
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_statement_end_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 90
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 91
                        mov              r10, 16;                             jmp   n119_var_α
n118_statement_begin_β: mov              r11, 91;                             jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 92
                        mov              rax, qword ptr [r9 + 80]             # S2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_match_begin_α:     mov              r11, 93
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx389_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx389_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n121_match_pos_α
n120_match_begin_β:     mov              r11, 93
.Lx389_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx389_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx389_1
                                                                              jmp   .Lx389_0
.Lx389_1:
n120_match_begin_af:    mov              r11, 93
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
                        add              rsp, 16;                             jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n121_match_pos_α:       mov              r11, 94
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n120_match_begin_β
                                                                              jmp   n122_match_lit_α
n121_match_pos_β:       mov              r11, 94;                             jmp   n120_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n122_match_lit_α:       mov              r11, 95
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n120_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n120_match_begin_β
                        add              r14d, 1;                             jmp   n123_match_defer_α
n122_match_lit_β:       mov              r11, 95
                        sub              r14d, 1;                             jmp   n120_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_defer_α:     sub              rsp, 16
                        mov              r11, 96
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx393_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx393_11
.Lx393_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx393_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx393_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx393_10
.Lx393_9:               cmp              al, 88;                              jne   .Lx393_21
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
                        test             rax, rax;                            je    .Lx393_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx393_10
.Lx393_21:              xor              eax, eax
.Lx393_10:              test             rax, rax;                            je    .Lx393_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lx393_15:
.Lx393_11:              test             rax, rax;                            jz    .Lx393_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx393_5]
                        push             rcx
                        lea              rcx, [rip + .Lx393_4]
                        push             rcx;                                 jmp   rax
.Lx393_4:                                                                     jmp   n124_match_arbno_α
.Lx393_5:               add              rsp, 16;                             jmp   n122_match_lit_β
.Lx393_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx393_240
                        add              rsp, 16;                             jmp   n122_match_lit_β
.Lx393_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx393_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_arbno_α
.Lx393_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n122_match_lit_β
n123_match_defer_β:     mov              r11, 96
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx393_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx393_12
                                                                              jmp   rax
.Lx393_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n124_match_arbno_α:     mov              r11, 97
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n125_match_lit_α
n124_match_arbno_β:     mov              r11, 97;                             jmp   n130_match_lit_α
n124_match_arbno_as:    mov              r11, 97
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n130_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n125_match_lit_α
n124_match_arbno_af:    mov              r11, 97
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n123_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n125_match_lit_α:       mov              r11, 98
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n124_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n124_match_arbno_β
                        add              r14d, 1;                             jmp   n126_match_rpos_α
n125_match_lit_β:       mov              r11, 98
                        sub              r14d, 1;                             jmp   n124_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_rpos_α:      mov              r11, 99
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n125_match_lit_β
                                                                              jmp   n127_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n127_match_end_α:       mov              r11, 100
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
                        test             rax, rax;                            je    .Lx400_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n120_match_begin_af
.Lx400_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n128_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 101
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 5
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   main_γ
n129_lit_string_β:      mov              r11, 102;                            jmp   main_ω
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n130_match_lit_α:       mov              r11, 103
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n124_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n124_match_arbno_af
                        add              r14d, 1;                             jmp   n131_match_defer_α
n130_match_lit_β:       mov              r11, 103
                        sub              r14d, 1;                             jmp   n124_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n131_match_defer_α:     mov              r11, 104
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx406_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx406_11
.Lx406_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx406_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx406_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx406_10
.Lx406_9:               cmp              al, 88;                              jne   .Lx406_21
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
                        test             rax, rax;                            je    .Lx406_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx406_10
.Lx406_21:              xor              eax, eax
.Lx406_10:              test             rax, rax;                            je    .Lx406_15
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rdx
.Lx406_15:
.Lx406_11:              test             rax, rax;                            jz    .Lx406_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx406_5]
                        push             rcx
                        lea              rcx, [rip + .Lx406_4]
                        push             rcx;                                 jmp   rax
.Lx406_4:                                                                     jmp   n124_match_arbno_as
.Lx406_5:                                                                     jmp   n130_match_lit_β
.Lx406_0:               push             r14
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
                        test             eax, eax;                            js    n130_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx406_6]
                        push             rcx
                        push             rax;                                 jmp   n124_match_arbno_as
.Lx406_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n130_match_lit_β
n131_match_defer_β:     mov              r11, 104
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx406_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx406_12
                                                                              jmp   rax
.Lx406_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α: mov              r11, 105
                        mov              r10, 17;                             jmp   n133_lit_string_α
n132_statement_begin_β: mov              r11, 105;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_assign_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:          mov              r11, 107
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_statement_end_α
.Lx410_0:               .quad            .Lx410_0_s
.Lx410_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 108
                        mov              r10, 17
                        add              rsp, 16;                             jmp   n140_statement_begin_α
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 109
                        mov              r10, 18;                             jmp   n137_lit_string_α
n136_statement_begin_β: mov              r11, 109;                            jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n138_assign_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              r11, 111
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_statement_end_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   mov              r11, 112
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n140_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 113
                        mov              r10, 19;                             jmp   n141_var_α
n140_statement_begin_β: mov              r11, 113;                            jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 96]             # S3
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_match_begin_α:     mov              r11, 115
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx423_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx423_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n143_match_pos_α
n142_match_begin_β:     mov              r11, 115
.Lx423_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx423_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx423_1
                                                                              jmp   .Lx423_0
.Lx423_1:
n142_match_begin_af:    mov              r11, 115
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
                        add              rsp, 16;                             jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_match_pos_α:       mov              r11, 116
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n142_match_begin_β
                                                                              jmp   n144_match_lit_α
n143_match_pos_β:       mov              r11, 116;                            jmp   n142_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_lit_α:       mov              r11, 117
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n142_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n142_match_begin_β
                        add              r14d, 1;                             jmp   n145_match_defer_α
n144_match_lit_β:       mov              r11, 117
                        sub              r14d, 1;                             jmp   n142_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_match_defer_α:     sub              rsp, 16
                        mov              r11, 118
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx427_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx427_11
.Lx427_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx427_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx427_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx427_10
.Lx427_9:               cmp              al, 88;                              jne   .Lx427_21
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
                        test             rax, rax;                            je    .Lx427_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx427_10
.Lx427_21:              xor              eax, eax
.Lx427_10:              test             rax, rax;                            je    .Lx427_15
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rdx
.Lx427_15:
.Lx427_11:              test             rax, rax;                            jz    .Lx427_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx427_5]
                        push             rcx
                        lea              rcx, [rip + .Lx427_4]
                        push             rcx;                                 jmp   rax
.Lx427_4:                                                                     jmp   n146_match_arbno_α
.Lx427_5:               add              rsp, 16;                             jmp   n144_match_lit_β
.Lx427_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx427_240
                        add              rsp, 16;                             jmp   n144_match_lit_β
.Lx427_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx427_6]
                        push             rcx
                        push             rax;                                 jmp   n146_match_arbno_α
.Lx427_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n144_match_lit_β
n145_match_defer_β:     mov              r11, 118
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx427_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx427_12
                                                                              jmp   rax
.Lx427_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n146_match_arbno_α:     mov              r11, 119
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n147_match_lit_α
n146_match_arbno_β:     mov              r11, 119;                            jmp   n152_match_lit_α
n146_match_arbno_as:    mov              r11, 119
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n152_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n147_match_lit_α
n146_match_arbno_af:    mov              r11, 119
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n145_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_lit_α:       mov              r11, 120
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n146_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n146_match_arbno_β
                        add              r14d, 1;                             jmp   n148_match_rpos_α
n147_match_lit_β:       mov              r11, 120
                        sub              r14d, 1;                             jmp   n146_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n148_match_rpos_α:      mov              r11, 121
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n147_match_lit_β
                                                                              jmp   n149_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n149_match_end_α:       mov              r11, 122
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
                        test             rax, rax;                            je    .Lx434_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n142_match_begin_af
.Lx434_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 123
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 5
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   main_γ
n151_lit_string_β:      mov              r11, 124;                            jmp   main_ω
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n152_match_lit_α:       mov              r11, 125
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n146_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n146_match_arbno_af
                        add              r14d, 1;                             jmp   n153_match_defer_α
n152_match_lit_β:       mov              r11, 125
                        sub              r14d, 1;                             jmp   n146_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n153_match_defer_α:     mov              r11, 126
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx440_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx440_11
.Lx440_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx440_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx440_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx440_10
.Lx440_9:               cmp              al, 88;                              jne   .Lx440_21
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
                        test             rax, rax;                            je    .Lx440_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx440_10
.Lx440_21:              xor              eax, eax
.Lx440_10:              test             rax, rax;                            je    .Lx440_15
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rdx
.Lx440_15:
.Lx440_11:              test             rax, rax;                            jz    .Lx440_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx440_5]
                        push             rcx
                        lea              rcx, [rip + .Lx440_4]
                        push             rcx;                                 jmp   rax
.Lx440_4:                                                                     jmp   n146_match_arbno_as
.Lx440_5:                                                                     jmp   n152_match_lit_β
.Lx440_0:               push             r14
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
                        test             eax, eax;                            js    n152_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx440_6]
                        push             rcx
                        push             rax;                                 jmp   n146_match_arbno_as
.Lx440_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_lit_β
n153_match_defer_β:     mov              r11, 126
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx440_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx440_12
                                                                              jmp   rax
.Lx440_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 127
                        mov              r10, 20;                             jmp   n155_lit_string_α
n154_statement_begin_β: mov              r11, 127;                            jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_assign_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 129
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_statement_end_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 130
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n162_statement_begin_α
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α: mov              r11, 131
                        mov              r10, 21;                             jmp   n159_lit_string_α
n158_statement_begin_β: mov              r11, 131;                            jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_assign_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:          mov              r11, 133
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_statement_end_α
.Lx450_0:               .quad            .Lx450_0_s
.Lx450_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 134
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n162_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) "(" *ITEM ARBNO("," *ITEM) "," *ITEM ")" RPOS(0)  :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 135
                        mov              r10, 22;                             jmp   n163_var_α
n162_statement_begin_β: mov              r11, 135;                            jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 136
                        mov              rax, qword ptr [r9 + 112]            # S4
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n164_match_begin_α:     mov              r11, 137
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx457_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx457_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n165_match_pos_α
n164_match_begin_β:     mov              r11, 137
.Lx457_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx457_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx457_1
                                                                              jmp   .Lx457_0
.Lx457_1:
n164_match_begin_af:    mov              r11, 137
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
                        add              rsp, 16;                             jmp   n182_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n165_match_pos_α:       mov              r11, 138
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n164_match_begin_β
                                                                              jmp   n166_match_lit_α
n165_match_pos_β:       mov              r11, 138;                            jmp   n164_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n166_match_lit_α:       mov              r11, 139
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n164_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n164_match_begin_β
                        add              r14d, 1;                             jmp   n167_match_defer_α
n166_match_lit_β:       mov              r11, 139
                        sub              r14d, 1;                             jmp   n164_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n167_match_defer_α:     sub              rsp, 16
                        mov              r11, 140
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx461_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx461_11
.Lx461_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx461_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx461_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx461_10
.Lx461_9:               cmp              al, 88;                              jne   .Lx461_21
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
                        test             rax, rax;                            je    .Lx461_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx461_10
.Lx461_21:              xor              eax, eax
.Lx461_10:              test             rax, rax;                            je    .Lx461_15
                        lea              rsi, [rip + g_sno_defer_cells+72]
                        mov              qword ptr [rsi + 0], rdx
.Lx461_15:
.Lx461_11:              test             rax, rax;                            jz    .Lx461_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx461_5]
                        push             rcx
                        lea              rcx, [rip + .Lx461_4]
                        push             rcx;                                 jmp   rax
.Lx461_4:                                                                     jmp   n168_match_arbno_α
.Lx461_5:               add              rsp, 16;                             jmp   n166_match_lit_β
.Lx461_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx461_240
                        add              rsp, 16;                             jmp   n166_match_lit_β
.Lx461_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx461_6]
                        push             rcx
                        push             rax;                                 jmp   n168_match_arbno_α
.Lx461_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n166_match_lit_β
n167_match_defer_β:     mov              r11, 140
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx461_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx461_12
                                                                              jmp   rax
.Lx461_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n168_match_arbno_α:     mov              r11, 141
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n169_match_lit_α
n168_match_arbno_β:     mov              r11, 141;                            jmp   n176_match_lit_α
n168_match_arbno_as:    mov              r11, 141
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n176_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n169_match_lit_α
n168_match_arbno_af:    mov              r11, 141
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n167_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n169_match_lit_α:       mov              r11, 142
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n168_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n168_match_arbno_β
                        add              r14d, 1;                             jmp   n170_match_defer_α
n169_match_lit_β:       mov              r11, 142
                        sub              r14d, 1;                             jmp   n168_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n170_match_defer_α:     sub              rsp, 16
                        mov              r11, 143
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx466_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx466_11
.Lx466_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx466_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx466_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx466_10
.Lx466_9:               cmp              al, 88;                              jne   .Lx466_21
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
                        test             rax, rax;                            je    .Lx466_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx466_10
.Lx466_21:              xor              eax, eax
.Lx466_10:              test             rax, rax;                            je    .Lx466_15
                        lea              rsi, [rip + g_sno_defer_cells+80]
                        mov              qword ptr [rsi + 0], rdx
.Lx466_15:
.Lx466_11:              test             rax, rax;                            jz    .Lx466_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx466_5]
                        push             rcx
                        lea              rcx, [rip + .Lx466_4]
                        push             rcx;                                 jmp   rax
.Lx466_4:                                                                     jmp   n171_match_lit_α
.Lx466_5:               add              rsp, 16;                             jmp   n169_match_lit_β
.Lx466_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx466_240
                        add              rsp, 16;                             jmp   n169_match_lit_β
.Lx466_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx466_6]
                        push             rcx
                        push             rax;                                 jmp   n171_match_lit_α
.Lx466_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n169_match_lit_β
n170_match_defer_β:     mov              r11, 143
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx466_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx466_12
                                                                              jmp   rax
.Lx466_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n171_match_lit_α:       mov              r11, 144
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n170_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n170_match_defer_β
                        add              r14d, 1;                             jmp   n172_match_rpos_α
n171_match_lit_β:       mov              r11, 144
                        sub              r14d, 1;                             jmp   n170_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n172_match_rpos_α:      mov              r11, 145
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n171_match_lit_β
                                                                              jmp   n173_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n173_match_end_α:       mov              r11, 146
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
                        test             rax, rax;                            je    .Lx471_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n164_match_begin_af
.Lx471_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 147
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   main_γ
n175_lit_string_β:      mov              r11, 148;                            jmp   main_ω
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n176_match_lit_α:       mov              r11, 149
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n168_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n168_match_arbno_af
                        add              r14d, 1;                             jmp   n177_match_defer_α
n176_match_lit_β:       mov              r11, 149
                        sub              r14d, 1;                             jmp   n168_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n177_match_defer_α:     mov              r11, 150
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx477_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx477_11
.Lx477_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx477_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx477_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx477_10
.Lx477_9:               cmp              al, 88;                              jne   .Lx477_21
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
                        test             rax, rax;                            je    .Lx477_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx477_10
.Lx477_21:              xor              eax, eax
.Lx477_10:              test             rax, rax;                            je    .Lx477_15
                        lea              rsi, [rip + g_sno_defer_cells+88]
                        mov              qword ptr [rsi + 0], rdx
.Lx477_15:
.Lx477_11:              test             rax, rax;                            jz    .Lx477_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx477_5]
                        push             rcx
                        lea              rcx, [rip + .Lx477_4]
                        push             rcx;                                 jmp   rax
.Lx477_4:                                                                     jmp   n168_match_arbno_as
.Lx477_5:                                                                     jmp   n176_match_lit_β
.Lx477_0:               push             r14
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
                        test             eax, eax;                            js    n176_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx477_6]
                        push             rcx
                        push             rax;                                 jmp   n168_match_arbno_as
.Lx477_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n176_match_lit_β
n177_match_defer_β:     mov              r11, 150
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx477_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx477_12
                                                                              jmp   rax
.Lx477_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 151
                        mov              r10, 23;                             jmp   n179_lit_string_α
n178_statement_begin_β: mov              r11, 151;                            jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_assign_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              r11, 153
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_statement_end_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 154
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n186_statement_begin_α
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 155
                        mov              r10, 24;                             jmp   n183_lit_string_α
n182_statement_begin_β: mov              r11, 155;                            jmp   n186_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_assign_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 157
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_statement_end_α
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 158
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n186_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) "a" *ITEM2 ARBNO("," *ITEM2) "z" RPOS(0)  :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 159
                        mov              r10, 25;                             jmp   n187_var_α
n186_statement_begin_β: mov              r11, 159;                            jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 128]            # S5
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_match_begin_α:     mov              r11, 161
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx494_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx494_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n189_match_pos_α
n188_match_begin_β:     mov              r11, 161
.Lx494_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx494_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx494_1
                                                                              jmp   .Lx494_0
.Lx494_1:
n188_match_begin_af:    mov              r11, 161
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
                        add              rsp, 16;                             jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_match_pos_α:       mov              r11, 162
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n188_match_begin_β
                                                                              jmp   n190_match_lit_α
n189_match_pos_β:       mov              r11, 162;                            jmp   n188_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_match_lit_α:       mov              r11, 163
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n188_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n188_match_begin_β
                        add              r14d, 1;                             jmp   n191_match_defer_α
n190_match_lit_β:       mov              r11, 163
                        sub              r14d, 1;                             jmp   n188_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n191_match_defer_α:     sub              rsp, 16
                        mov              r11, 164
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx498_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx498_11
.Lx498_13:              mov              rax, qword ptr [r9 + 16]             # ITEM2
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx498_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx498_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx498_10
.Lx498_9:               cmp              al, 88;                              jne   .Lx498_21
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
                        test             rax, rax;                            je    .Lx498_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx498_10
.Lx498_21:              xor              eax, eax
.Lx498_10:              test             rax, rax;                            je    .Lx498_15
                        lea              rsi, [rip + g_sno_defer_cells+96]
                        mov              qword ptr [rsi + 0], rdx
.Lx498_15:
.Lx498_11:              test             rax, rax;                            jz    .Lx498_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx498_5]
                        push             rcx
                        lea              rcx, [rip + .Lx498_4]
                        push             rcx;                                 jmp   rax
.Lx498_4:                                                                     jmp   n192_match_arbno_α
.Lx498_5:               add              rsp, 16;                             jmp   n190_match_lit_β
.Lx498_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                        test             eax, eax;                            jns   .Lx498_240
                        add              rsp, 16;                             jmp   n190_match_lit_β
.Lx498_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx498_6]
                        push             rcx
                        push             rax;                                 jmp   n192_match_arbno_α
.Lx498_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n190_match_lit_β
n191_match_defer_β:     mov              r11, 164
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx498_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx498_12
                                                                              jmp   rax
.Lx498_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n192_match_arbno_α:     mov              r11, 165
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n193_match_lit_α
n192_match_arbno_β:     mov              r11, 165;                            jmp   n198_match_lit_α
n192_match_arbno_as:    mov              r11, 165
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n198_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n193_match_lit_α
n192_match_arbno_af:    mov              r11, 165
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n191_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n193_match_lit_α:       mov              r11, 166
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n192_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 122;                            jne   n192_match_arbno_β
                        add              r14d, 1;                             jmp   n194_match_rpos_α
n193_match_lit_β:       mov              r11, 166
                        sub              r14d, 1;                             jmp   n192_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n194_match_rpos_α:      mov              r11, 167
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n193_match_lit_β
                                                                              jmp   n195_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n195_match_end_α:       mov              r11, 168
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
                        test             rax, rax;                            je    .Lx505_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n188_match_begin_af
.Lx505_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n196_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   mov              r11, 169
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 5
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   main_γ
n197_lit_string_β:      mov              r11, 170;                            jmp   main_ω
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n198_match_lit_α:       mov              r11, 171
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n192_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n192_match_arbno_af
                        add              r14d, 1;                             jmp   n199_match_defer_α
n198_match_lit_β:       mov              r11, 171
                        sub              r14d, 1;                             jmp   n192_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n199_match_defer_α:     mov              r11, 172
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx511_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx511_11
.Lx511_13:              mov              rax, qword ptr [r9 + 16]             # ITEM2
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx511_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx511_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx511_10
.Lx511_9:               cmp              al, 88;                              jne   .Lx511_21
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
                        test             rax, rax;                            je    .Lx511_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx511_10
.Lx511_21:              xor              eax, eax
.Lx511_10:              test             rax, rax;                            je    .Lx511_15
                        lea              rsi, [rip + g_sno_defer_cells+104]
                        mov              qword ptr [rsi + 0], rdx
.Lx511_15:
.Lx511_11:              test             rax, rax;                            jz    .Lx511_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx511_5]
                        push             rcx
                        lea              rcx, [rip + .Lx511_4]
                        push             rcx;                                 jmp   rax
.Lx511_4:                                                                     jmp   n192_match_arbno_as
.Lx511_5:                                                                     jmp   n198_match_lit_β
.Lx511_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
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
                        test             eax, eax;                            js    n198_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx511_6]
                        push             rcx
                        push             rax;                                 jmp   n192_match_arbno_as
.Lx511_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n198_match_lit_β
n199_match_defer_β:     mov              r11, 172
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx511_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx511_12
                                                                              jmp   rax
.Lx511_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α: mov              r11, 173
                        mov              r10, 26;                             jmp   n201_lit_string_α
n200_statement_begin_β: mov              r11, 173;                            jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_assign_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 175
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_statement_end_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 176
                        mov              r10, 26
                        add              rsp, 16;                             jmp   n208_statement_begin_α
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 177
                        mov              r10, 27;                             jmp   n205_lit_string_α
n204_statement_begin_β: mov              r11, 177;                            jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_assign_α
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_α:          mov              r11, 179
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_statement_end_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 180
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n208_statement_begin_α
#=======================================================================================================================
# N5      S6 POS(0) LISTP RPOS(0)         :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 181
                        mov              r10, 28;                             jmp   n209_var_α
n208_statement_begin_β: mov              r11, 181;                            jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 144]            # S6
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_var_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 48]             # LISTP
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_assign_α
n210_var_β:             mov              r11, 183
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 184
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_match_begin_α
n211_assign_β:          mov              r11, 184;                            jmp   n210_var_β
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n212_match_begin_α:     mov              r11, 185
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
.Lx530_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx530_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n213_match_pos_α
n212_match_begin_β:     mov              r11, 185
.Lx530_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx530_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx530_1
                                                                              jmp   .Lx530_0
.Lx530_1:
n212_match_begin_af:    mov              r11, 185
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
                        pop              rbp;                                 jmp   n211_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n213_match_pos_α:       mov              r11, 186
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n212_match_begin_β
                                                                              jmp   n214_match_defer_α
n213_match_pos_β:       mov              r11, 186;                            jmp   n212_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_match_defer_α:     mov              r11, 187
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S3]
                        cmp              rax, rdx;                            jne   .Lx532_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lx532_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lx532_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lx532_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lx532_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lx532_0
.Lx532_31:              mov              edx, -1;                             jmp   .Lx532_0
.Lx532_30:              push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
                        test             rax, rax;                            jz    .Lx532_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx532_5]
                        push             rcx
                        lea              rcx, [rip + .Lx532_4]
                        push             rcx;                                 jmp   rax
.Lx532_4:                                                                     jmp   n215_match_rpos_α
.Lx532_5:                                                                     jmp   n212_match_begin_β
.Lx532_0:               mov              eax, edx
                        test             eax, eax;                            js    n212_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx532_6]
                        push             rcx
                        push             rax;                                 jmp   n215_match_rpos_α
.Lx532_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n212_match_begin_β
n214_match_defer_β:     mov              r11, 187
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx532_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx532_12
                                                                              jmp   rax
.Lx532_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n215_match_rpos_α:      mov              r11, 188
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n214_match_defer_β
                                                                              jmp   n216_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n216_match_end_α:       mov              r11, 189
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
                        test             rax, rax;                            je    .Lx535_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n212_match_begin_af
.Lx535_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 190
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n218_statement_begin_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 191
                        mov              r10, 29;                             jmp   n219_lit_string_α
n218_statement_begin_β: mov              r11, 191;                            jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              r11, 192
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_assign_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 193
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_statement_end_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 194
                        mov              r10, 29
                        add              rsp, 16;                             jmp   n226_statement_begin_α
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 195
                        mov              r10, 30;                             jmp   n223_lit_string_α
n222_statement_begin_β: mov              r11, 195;                            jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_assign_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              r11, 197
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_statement_end_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   mov              r11, 198
                        mov              r10, 30
                        add              rsp, 16;                             jmp   n226_statement_begin_α
#=======================================================================================================================
# N6      S7 POS(0) "(" *NEST ARBNO("," *NEST) ")" RPOS(0)  :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α: mov              r11, 199
                        mov              r10, 31;                             jmp   n227_var_α
n226_statement_begin_β: mov              r11, 199;                            jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 160]            # S7
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n228_match_begin_α:     mov              r11, 201
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx554_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx554_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n229_match_pos_α
n228_match_begin_β:     mov              r11, 201
.Lx554_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx554_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx554_1
                                                                              jmp   .Lx554_0
.Lx554_1:
n228_match_begin_af:    mov              r11, 201
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
                        add              rsp, 16;                             jmp   n243_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n229_match_pos_α:       mov              r11, 202
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n228_match_begin_β
                                                                              jmp   n230_match_lit_α
n229_match_pos_β:       mov              r11, 202;                            jmp   n228_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n230_match_lit_α:       mov              r11, 203
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n228_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n228_match_begin_β
                        add              r14d, 1;                             jmp   n231_match_defer_α
n230_match_lit_β:       mov              r11, 203
                        sub              r14d, 1;                             jmp   n228_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n231_match_defer_α:     sub              rsp, 16
                        mov              r11, 204
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx558_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx558_11
.Lx558_13:              mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx558_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx558_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx558_10
.Lx558_9:               cmp              al, 88;                              jne   .Lx558_21
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
                        test             rax, rax;                            je    .Lx558_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx558_10
.Lx558_21:              xor              eax, eax
.Lx558_10:              test             rax, rax;                            je    .Lx558_15
                        lea              rsi, [rip + g_sno_defer_cells+112]
                        mov              qword ptr [rsi + 0], rdx
.Lx558_15:
.Lx558_11:              test             rax, rax;                            jz    .Lx558_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx558_5]
                        push             rcx
                        lea              rcx, [rip + .Lx558_4]
                        push             rcx;                                 jmp   rax
.Lx558_4:                                                                     jmp   n232_match_arbno_α
.Lx558_5:               add              rsp, 16;                             jmp   n230_match_lit_β
.Lx558_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx558_240
                        add              rsp, 16;                             jmp   n230_match_lit_β
.Lx558_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx558_6]
                        push             rcx
                        push             rax;                                 jmp   n232_match_arbno_α
.Lx558_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n230_match_lit_β
n231_match_defer_β:     mov              r11, 204
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx558_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx558_12
                                                                              jmp   rax
.Lx558_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n232_match_arbno_α:     mov              r11, 205
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n233_match_lit_α
n232_match_arbno_β:     mov              r11, 205;                            jmp   n237_match_lit_α
n232_match_arbno_as:    mov              r11, 205
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n237_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n233_match_lit_α
n232_match_arbno_af:    mov              r11, 205
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n238_match_defer_β
                                                                              jmp   n231_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n233_match_lit_α:       mov              r11, 206
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n232_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n232_match_arbno_β
                        add              r14d, 1;                             jmp   n234_match_rpos_α
n233_match_lit_β:       mov              r11, 206
                        sub              r14d, 1;                             jmp   n232_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n234_match_rpos_α:      mov              r11, 207
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n233_match_lit_β
                                                                              jmp   n235_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n235_match_end_α:       mov              r11, 208
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
                        test             rax, rax;                            je    .Lx565_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n228_match_begin_af
.Lx565_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n236_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   mov              r11, 209
                        mov              r10, 31
                        add              rsp, 16;                             jmp   n239_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n237_match_lit_α:       mov              r11, 210
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n232_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n232_match_arbno_af
                        add              r14d, 1;                             jmp   n238_match_defer_α
n237_match_lit_β:       mov              r11, 210
                        sub              r14d, 1;                             jmp   n232_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n238_match_defer_α:     mov              r11, 211
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx570_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx570_11
.Lx570_13:              mov              rax, qword ptr [r9 + 32]             # NEST
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx570_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx570_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx570_10
.Lx570_9:               cmp              al, 88;                              jne   .Lx570_21
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
                        test             rax, rax;                            je    .Lx570_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx570_10
.Lx570_21:              xor              eax, eax
.Lx570_10:              test             rax, rax;                            je    .Lx570_15
                        lea              rsi, [rip + g_sno_defer_cells+120]
                        mov              qword ptr [rsi + 0], rdx
.Lx570_15:
.Lx570_11:              test             rax, rax;                            jz    .Lx570_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx570_5]
                        push             rcx
                        lea              rcx, [rip + .Lx570_4]
                        push             rcx;                                 jmp   rax
.Lx570_4:                                                                     jmp   n232_match_arbno_as
.Lx570_5:                                                                     jmp   n237_match_lit_β
.Lx570_0:               push             r14
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
                        test             eax, eax;                            js    n237_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx570_6]
                        push             rcx
                        push             rax;                                 jmp   n232_match_arbno_as
.Lx570_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n237_match_lit_β
n238_match_defer_β:     mov              r11, 211
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx570_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx570_12
                                                                              jmp   rax
.Lx570_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"             :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 212
                        mov              r10, 32;                             jmp   n240_lit_string_α
n239_statement_begin_β: mov              r11, 212;                            jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_assign_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              r11, 214
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n242_statement_end_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   mov              r11, 215
                        mov              r10, 32
                        add              rsp, 16;                             jmp   n247_statement_begin_α
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_begin_α: mov              r11, 216
                        mov              r10, 33;                             jmp   n244_lit_string_α
n243_statement_begin_β: mov              r11, 216;                            jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_assign_α
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              r11, 218
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_statement_end_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 219
                        mov              r10, 33
                        add              rsp, 16;                             jmp   n247_statement_begin_α
#=======================================================================================================================
# N7      S8 POS(0) "(" *ITEM ARBNO("," *ITEM) ")" RPOS(0)  :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 220
                        mov              r10, 34;                             jmp   n248_var_α
n247_statement_begin_β: mov              r11, 220;                            jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 176]            # S8
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_match_begin_α:     mov              r11, 222
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx587_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx587_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n250_match_pos_α
n249_match_begin_β:     mov              r11, 222
.Lx587_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx587_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx587_1
                                                                              jmp   .Lx587_0
.Lx587_1:
n249_match_begin_af:    mov              r11, 222
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
                        add              rsp, 16;                             jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_match_pos_α:       mov              r11, 223
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n249_match_begin_β
                                                                              jmp   n251_match_lit_α
n250_match_pos_β:       mov              r11, 223;                            jmp   n249_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_match_lit_α:       mov              r11, 224
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n249_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40;                             jne   n249_match_begin_β
                        add              r14d, 1;                             jmp   n252_match_defer_α
n251_match_lit_β:       mov              r11, 224
                        sub              r14d, 1;                             jmp   n249_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n252_match_defer_α:     sub              rsp, 16
                        mov              r11, 225
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx591_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx591_11
.Lx591_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx591_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx591_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx591_10
.Lx591_9:               cmp              al, 88;                              jne   .Lx591_21
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
                        test             rax, rax;                            je    .Lx591_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx591_10
.Lx591_21:              xor              eax, eax
.Lx591_10:              test             rax, rax;                            je    .Lx591_15
                        lea              rsi, [rip + g_sno_defer_cells+128]
                        mov              qword ptr [rsi + 0], rdx
.Lx591_15:
.Lx591_11:              test             rax, rax;                            jz    .Lx591_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx591_5]
                        push             rcx
                        lea              rcx, [rip + .Lx591_4]
                        push             rcx;                                 jmp   rax
.Lx591_4:                                                                     jmp   n253_match_arbno_α
.Lx591_5:               add              rsp, 16;                             jmp   n251_match_lit_β
.Lx591_0:               push             r14
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
                        test             eax, eax;                            jns   .Lx591_240
                        add              rsp, 16;                             jmp   n251_match_lit_β
.Lx591_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx591_6]
                        push             rcx
                        push             rax;                                 jmp   n253_match_arbno_α
.Lx591_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n251_match_lit_β
n252_match_defer_β:     mov              r11, 225
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx591_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx591_12
                                                                              jmp   rax
.Lx591_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n253_match_arbno_α:     mov              r11, 226
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n254_match_lit_α
n253_match_arbno_β:     mov              r11, 226;                            jmp   n259_match_lit_α
n253_match_arbno_as:    mov              r11, 226
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n259_match_lit_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n254_match_lit_α
n253_match_arbno_af:    mov              r11, 226
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n252_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n254_match_lit_α:       mov              r11, 227
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n253_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41;                             jne   n253_match_arbno_β
                        add              r14d, 1;                             jmp   n255_match_rpos_α
n254_match_lit_β:       mov              r11, 227
                        sub              r14d, 1;                             jmp   n253_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n255_match_rpos_α:      mov              r11, 228
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n254_match_lit_β
                                                                              jmp   n256_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_match_end_α:       mov              r11, 229
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
                        test             rax, rax;                            je    .Lx598_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n249_match_begin_af
.Lx598_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n257_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:   mov              r11, 230
                        mov              r10, 34
                        add              rsp, 16;                             jmp   n261_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 5
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   main_γ
n258_lit_string_β:      mov              r11, 231;                            jmp   main_ω
.Lx601_0:               .quad            .Lx601_0_s
.Lx601_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n259_match_lit_α:       mov              r11, 232
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n253_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n253_match_arbno_af
                        add              r14d, 1;                             jmp   n260_match_defer_α
n259_match_lit_β:       mov              r11, 232
                        sub              r14d, 1;                             jmp   n253_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n260_match_defer_α:     mov              r11, 233
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx604_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx604_11
.Lx604_13:              mov              rax, qword ptr [r9 + 0]              # ITEM
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx604_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx604_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx604_10
.Lx604_9:               cmp              al, 88;                              jne   .Lx604_21
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
                        test             rax, rax;                            je    .Lx604_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx604_10
.Lx604_21:              xor              eax, eax
.Lx604_10:              test             rax, rax;                            je    .Lx604_15
                        lea              rsi, [rip + g_sno_defer_cells+136]
                        mov              qword ptr [rsi + 0], rdx
.Lx604_15:
.Lx604_11:              test             rax, rax;                            jz    .Lx604_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx604_5]
                        push             rcx
                        lea              rcx, [rip + .Lx604_4]
                        push             rcx;                                 jmp   rax
.Lx604_4:                                                                     jmp   n253_match_arbno_as
.Lx604_5:                                                                     jmp   n259_match_lit_β
.Lx604_0:               push             r14
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
                        test             eax, eax;                            js    n259_match_lit_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx604_6]
                        push             rcx
                        push             rax;                                 jmp   n253_match_arbno_as
.Lx604_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n259_match_lit_β
n260_match_defer_β:     mov              r11, 233
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx604_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx604_12
                                                                              jmp   rax
.Lx604_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"             :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_begin_α: mov              r11, 234
                        mov              r10, 35;                             jmp   n262_lit_string_α
n261_statement_begin_β: mov              r11, 234;                            jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              r11, 235
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_assign_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              r11, 236
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_statement_end_α
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   mov              r11, 237
                        mov              r10, 35
                        add              rsp, 16;                             jmp   n269_statement_begin_α
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α: mov              r11, 238
                        mov              r10, 36;                             jmp   n266_lit_string_α
n265_statement_begin_β: mov              r11, 238;                            jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              r11, 239
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_assign_α
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              r11, 240
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_statement_end_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 241
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n269_statement_begin_α
#=======================================================================================================================
# N8  <stmt 37, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α: mov              r11, 242
                        mov              r10, 37;                             jmp   n270_statement_end_α
n269_statement_begin_β: mov              r11, 242;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 243
                        mov              r10, 37;                             jmp   main_γ
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
                        .long            96
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
                        .long            96
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
                        .long            176
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
.S0:                    .string          "NEST"
.S1:                    .string          "ITEM"
.S2:                    .string          "ITEM2"
.S3:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
