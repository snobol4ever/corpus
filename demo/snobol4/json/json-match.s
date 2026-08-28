                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$0:
EXPR$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_define_α:            mov              r11, 1;                              jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              r11, 2
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # EXPR$0
                        mov              qword ptr [r9 + 184], rdx
                        add              rsp, 16;                             jmp   EXPR$0_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_β:
                                                                              jmp   EXPR$0_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$1:
EXPR$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n7_define_α:            mov              r11, 4;                              jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               sub              rsp, 16
                        mov              r11, 5
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # EXPR$1
                        mov              qword ptr [r9 + 200], rdx
                        add              rsp, 16;                             jmp   EXPR$1_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_β:
                                                                              jmp   EXPR$1_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$2:
EXPR$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n14_define_α:           mov              r11, 7;                              jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              r11, 8
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # EXPR$2
                        mov              qword ptr [r9 + 216], rdx
                        add              rsp, 16;                             jmp   EXPR$2_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2_β:
                                                                              jmp   EXPR$2_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$3:
EXPR$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n21_define_α:           mov              r11, 10;                             jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 112]            # jvalue
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # EXPR$3
                        mov              qword ptr [r9 + 232], rdx
                        add              rsp, 16;                             jmp   EXPR$3_γ
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3_β:
                                                                              jmp   EXPR$3_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3_ω:
                                                                              jmp   qword ptr [rsp + 8]
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
n28_match_lit_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$0_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 92;                             jne   PAT$0_ω
                        add              r14d, 1;                             jmp   n29_match_alternate_α
n28_match_lit_β:        mov              r11, 13
                        sub              r14d, 1;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_match_alternate_α:  mov              r11, 14
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .LPAT$0_α_39_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n35_match_any_α
.LPAT$0_α_39_21:        lea              rax, [rip + .LPAT$0_α_39_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n30_match_lit_α
n29_match_alternate_s0: mov              r11, 14
                        lea              rax, [rip + .LPAT$0_α_39_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n29_match_alternate_as
n29_match_alternate_s1: mov              r11, 14
                        lea              rax, [rip + .LPAT$0_α_39_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n29_match_alternate_as
.LPAT$0_α_39_40:                                                              jmp   n35_match_any_β
.LPAT$0_α_39_41:                                                              jmp   n34_match_any_β
n29_match_alternate_as: mov              r11, 14;                             jmp   PAT$0_γ
n29_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n29_match_alternate_af: mov              r11, 14
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.LPAT$0_α_39_19:                                                              jmp   n28_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:        mov              r11, 15
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n29_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117;                            jne   n29_match_alternate_af
                        add              r14d, 1;                             jmp   n31_match_any_α
n30_match_lit_β:        mov              r11, 15
                        sub              r14d, 1;                             jmp   n29_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_any_α:        mov              r11, 16
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n30_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n30_match_lit_β
                        add              r14d, 1;                             jmp   n32_match_any_α
n31_match_any_β:        mov              r11, 16
                        sub              r14d, 1;                             jmp   n30_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_any_α:        mov              r11, 17
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n31_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n31_match_any_β
                        add              r14d, 1;                             jmp   n33_match_any_α
n32_match_any_β:        mov              r11, 17
                        sub              r14d, 1;                             jmp   n31_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_any_α:        mov              r11, 18
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n32_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n32_match_any_β
                        add              r14d, 1;                             jmp   n34_match_any_α
n33_match_any_β:        mov              r11, 18
                        sub              r14d, 1;                             jmp   n32_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_any_α:        mov              r11, 19
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n33_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n33_match_any_β
                        add              r14d, 1;                             jmp   n29_match_alternate_s1
n34_match_any_β:        mov              r11, 19
                        sub              r14d, 1;                             jmp   n33_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 20
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n29_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0;               je    n29_match_alternate_af
                        add              r14d, 1;                             jmp   n29_match_alternate_s0
n35_match_any_β:        mov              r11, 20
                        sub              r14d, 1;                             jmp   n29_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n29_match_alternate_β
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
n52_match_break_α:      sub              rsp, 16
                        mov              r11, 21
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.LPAT$1_α_54_0:         cmp              ecx, r15d;                           jl    .LPAT$1_α_54_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.LPAT$1_α_54_240:       movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .LPAT$1_α_54_1
                        add              ecx, 1;                              jmp   .LPAT$1_α_54_0
.LPAT$1_α_54_1:         mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n52_match_break_β:      mov              r11, 21
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n52_match_break_β
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
n55_match_lit_α:        mov              r11, 22
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n56_match_defer_α
n55_match_lit_β:        mov              r11, 22
                        sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_match_defer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_63_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_63_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$2_α_63_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$2_α_63_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$2_α_63_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_63_18
.LPAT$2_α_63_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_63_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_63_16:
.LPAT$2_α_63_18:        test             rax, rax;                            jz    .LPAT$2_α_63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_63_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_63_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_63_4:                                                               jmp   n57_match_arbno_α
.LPAT$2_α_63_5:         add              rsp, 16;                             jmp   n55_match_lit_β
.LPAT$2_α_63_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$2_α_63_240
                        add              rsp, 16;                             jmp   n55_match_lit_β
.LPAT$2_α_63_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_63_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_α
.LPAT$2_α_63_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n55_match_lit_β
n56_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_63_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_63_12
                                                                              jmp   rax
.LPAT$2_β_63_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n57_match_arbno_α:      mov              r11, 24
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
n57_match_arbno_β:      mov              r11, 24
                        mov              r12, qword ptr [rbp + -40];          jmp   n59_match_defer_α
n57_match_arbno_as:     mov              r11, 24
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n59_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
n57_match_arbno_af:     mov              r11, 24
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n56_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_lit_α:        mov              r11, 25
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n57_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   n57_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$2_γ
n58_match_lit_β:        mov              r11, 25
                        sub              r14d, 1;                             jmp   n57_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_68_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_68_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$2_α_68_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$2_α_68_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$2_α_68_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_68_18
.LPAT$2_α_68_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_68_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_68_16:
.LPAT$2_α_68_18:        test             rax, rax;                            jz    .LPAT$2_α_68_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_68_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_68_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_68_4:                                                               jmp   n60_match_defer_α
.LPAT$2_α_68_5:                                                               jmp   n57_match_arbno_af
.LPAT$2_α_68_0:         push             r14
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
                        test             eax, eax;                            js    n57_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_68_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_defer_α
.LPAT$2_α_68_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n57_match_arbno_af
n59_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_68_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_68_12
                                                                              jmp   rax
.LPAT$2_β_68_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 27
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_69_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_69_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$2_α_69_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$2_α_69_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$2_α_69_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_69_18
.LPAT$2_α_69_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_69_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_69_16:
.LPAT$2_α_69_18:        test             rax, rax;                            jz    .LPAT$2_α_69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_69_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_69_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_69_4:                                                               jmp   n57_match_arbno_as
.LPAT$2_α_69_5:                                                               jmp   n59_match_defer_β
.LPAT$2_α_69_0:         push             r14
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
                        test             eax, eax;                            js    n59_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_69_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_as
.LPAT$2_α_69_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_defer_β
n60_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_69_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_69_12
                                                                              jmp   rax
.LPAT$2_β_69_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n58_match_lit_β
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
                        sub              rsp, 328
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n70_match_alternate_α:  mov              r11, 28
                        mov              dword ptr [rbp + -64], r14d
                        lea              rax, [rip + .LPAT$3_α_91_21]
                        mov              qword ptr [rbp + -48], rax;          jmp   n89_match_lit_α
.LPAT$3_α_91_21:        lea              rax, [rip + .LPAT$3_α_91_19]
                        mov              qword ptr [rbp + -48], rax;          jmp   n88_match_lit_α
n70_match_alternate_s0: mov              r11, 28
                        lea              rax, [rip + .LPAT$3_α_91_40]
                        mov              qword ptr [rbp + -56], rax;          jmp   n70_match_alternate_as
n70_match_alternate_s1: mov              r11, 28
                        lea              rax, [rip + .LPAT$3_α_91_41]
                        mov              qword ptr [rbp + -56], rax;          jmp   n70_match_alternate_as
.LPAT$3_α_91_40:                                                              jmp   n89_match_lit_β
.LPAT$3_α_91_41:                                                              jmp   n88_match_lit_β
n70_match_alternate_as: mov              r11, 28;                             jmp   n71_match_alternate_α
n70_match_alternate_β:  mov              r11, 28
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
n70_match_alternate_af: mov              r11, 28
                        mov              r14d, dword ptr [rbp + -64]
                        mov              rax, qword ptr [rbp + -48];          jmp   rax
.LPAT$3_α_91_19:                                                              jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  mov              r11, 29
                        mov              dword ptr [rbp + -96], r14d
                        lea              rax, [rip + .LPAT$3_α_93_21]
                        mov              qword ptr [rbp + -80], rax;          jmp   n87_match_lit_α
.LPAT$3_α_93_21:        lea              rax, [rip + .LPAT$3_α_93_19]
                        mov              qword ptr [rbp + -80], rax;          jmp   n83_match_any_α
n71_match_alternate_s0: mov              r11, 29
                        lea              rax, [rip + .LPAT$3_α_93_40]
                        mov              qword ptr [rbp + -88], rax;          jmp   n71_match_alternate_as
n71_match_alternate_s1: mov              r11, 29
                        lea              rax, [rip + .LPAT$3_α_93_41]
                        mov              qword ptr [rbp + -88], rax;          jmp   n71_match_alternate_as
.LPAT$3_α_93_40:                                                              jmp   n87_match_lit_β
.LPAT$3_α_93_41:                                                              jmp   n84_match_alternate_β
n71_match_alternate_as: mov              r11, 29;                             jmp   n72_match_alternate_α
n71_match_alternate_β:  mov              r11, 29
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
n71_match_alternate_af: mov              r11, 29
                        mov              r14d, dword ptr [rbp + -96]
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
.LPAT$3_α_93_19:                                                              jmp   n70_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_alternate_α:  mov              r11, 30
                        mov              dword ptr [rbp + -192], r14d
                        lea              rax, [rip + .LPAT$3_α_95_21]
                        mov              qword ptr [rbp + -176], rax;         jmp   n81_match_lit_α
.LPAT$3_α_95_21:        lea              rax, [rip + .LPAT$3_α_95_19]
                        mov              qword ptr [rbp + -176], rax;         jmp   n80_match_lit_α
n72_match_alternate_s0: mov              r11, 30
                        lea              rax, [rip + .LPAT$3_α_95_40]
                        mov              qword ptr [rbp + -184], rax;         jmp   n72_match_alternate_as
n72_match_alternate_s1: mov              r11, 30
                        lea              rax, [rip + .LPAT$3_α_95_41]
                        mov              qword ptr [rbp + -184], rax;         jmp   n72_match_alternate_as
.LPAT$3_α_95_40:                                                              jmp   n82_match_span_β
.LPAT$3_α_95_41:                                                              jmp   n80_match_lit_β
n72_match_alternate_as: mov              r11, 30;                             jmp   n73_match_alternate_α
n72_match_alternate_β:  mov              r11, 30
                        mov              rax, qword ptr [rbp + -184];         jmp   rax
n72_match_alternate_af: mov              r11, 30
                        mov              r14d, dword ptr [rbp + -192]
                        mov              rax, qword ptr [rbp + -176];         jmp   rax
.LPAT$3_α_95_19:                                                              jmp   n71_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_alternate_α:  mov              r11, 31
                        mov              dword ptr [rbp + -256], r14d
                        lea              rax, [rip + .LPAT$3_α_97_21]
                        mov              qword ptr [rbp + -240], rax;         jmp   n75_match_any_α
.LPAT$3_α_97_21:        lea              rax, [rip + .LPAT$3_α_97_19]
                        mov              qword ptr [rbp + -240], rax;         jmp   n74_match_lit_α
n73_match_alternate_s0: mov              r11, 31
                        lea              rax, [rip + .LPAT$3_α_97_40]
                        mov              qword ptr [rbp + -248], rax;         jmp   n73_match_alternate_as
n73_match_alternate_s1: mov              r11, 31
                        lea              rax, [rip + .LPAT$3_α_97_41]
                        mov              qword ptr [rbp + -248], rax;         jmp   n73_match_alternate_as
.LPAT$3_α_97_40:                                                              jmp   n77_match_span_β
.LPAT$3_α_97_41:                                                              jmp   n74_match_lit_β
n73_match_alternate_as: mov              r11, 31;                             jmp   PAT$3_γ
n73_match_alternate_β:  mov              r11, 31
                        mov              rax, qword ptr [rbp + -248];         jmp   rax
n73_match_alternate_af: mov              r11, 31
                        mov              r14d, dword ptr [rbp + -256]
                        mov              rax, qword ptr [rbp + -240];         jmp   rax
.LPAT$3_α_97_19:                                                              jmp   n72_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:        mov              r11, 32;                             jmp   n73_match_alternate_s1
n74_match_lit_β:        mov              r11, 32;                             jmp   n73_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n75_match_any_α:        mov              r11, 33
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n73_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .LPAT$3_α_101_0
                        cmp              esi, 69;                             je    .LPAT$3_α_101_0
                                                                              jmp   n73_match_alternate_af
.LPAT$3_α_101_0:        add              r14d, 1;                             jmp   n76_match_alternate_α
n75_match_any_β:        mov              r11, 33
                        sub              r14d, 1;                             jmp   n73_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n76_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -288], r14d
                        lea              rax, [rip + .LPAT$3_α_103_21]
                        mov              qword ptr [rbp + -272], rax;         jmp   n79_match_any_α
.LPAT$3_α_103_21:       lea              rax, [rip + .LPAT$3_α_103_19]
                        mov              qword ptr [rbp + -272], rax;         jmp   n78_match_lit_α
n76_match_alternate_s0: mov              r11, 34
                        lea              rax, [rip + .LPAT$3_α_103_40]
                        mov              qword ptr [rbp + -280], rax;         jmp   n76_match_alternate_as
n76_match_alternate_s1: mov              r11, 34
                        lea              rax, [rip + .LPAT$3_α_103_41]
                        mov              qword ptr [rbp + -280], rax;         jmp   n76_match_alternate_as
.LPAT$3_α_103_40:                                                             jmp   n79_match_any_β
.LPAT$3_α_103_41:                                                             jmp   n78_match_lit_β
n76_match_alternate_as: mov              r11, 34;                             jmp   n77_match_span_α
n76_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -280];         jmp   rax
n76_match_alternate_af: mov              r11, 34
                        mov              r14d, dword ptr [rbp + -288]
                        mov              rax, qword ptr [rbp + -272];         jmp   rax
.LPAT$3_α_103_19:                                                             jmp   n75_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_span_α:       mov              r11, 35
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_105_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_105_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_105_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_105_0
.LPAT$3_α_105_1:        cmp              ecx, r14d;                           jle   n76_match_alternate_β
                        mov              dword ptr [rbp + -316], r14d
                        mov              r14d, ecx;                           jmp   n73_match_alternate_s0
n77_match_span_β:       mov              r11, 35
                        mov              r14d, dword ptr [rbp + -316];        jmp   n76_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:        mov              r11, 36;                             jmp   n76_match_alternate_s1
n78_match_lit_β:        mov              r11, 36;                             jmp   n76_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n79_match_any_α:        mov              r11, 37
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n76_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .LPAT$3_α_109_0
                        cmp              esi, 45;                             je    .LPAT$3_α_109_0
                                                                              jmp   n76_match_alternate_af
.LPAT$3_α_109_0:        add              r14d, 1;                             jmp   n76_match_alternate_s0
n79_match_any_β:        mov              r11, 37
                        sub              r14d, 1;                             jmp   n76_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n80_match_lit_α:        mov              r11, 38;                             jmp   n72_match_alternate_s1
n80_match_lit_β:        mov              r11, 38;                             jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n81_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n72_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n72_match_alternate_af
                        add              r14d, 1;                             jmp   n82_match_span_α
n81_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   n72_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n82_match_span_α:       mov              r11, 40
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_115_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_115_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_115_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_115_0
.LPAT$3_α_115_1:        cmp              ecx, r14d;                           jle   n81_match_lit_β
                        mov              dword ptr [rbp + -220], r14d
                        mov              r14d, ecx;                           jmp   n72_match_alternate_s0
n82_match_span_β:       mov              r11, 40
                        mov              r14d, dword ptr [rbp + -220];        jmp   n81_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n83_match_any_α:        mov              r11, 41
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n71_match_alternate_af
                        add              r14d, 1;                             jmp   n84_match_alternate_α
n83_match_any_β:        mov              r11, 41
                        sub              r14d, 1;                             jmp   n71_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n84_match_alternate_α:  mov              r11, 42
                        mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .LPAT$3_α_119_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n86_match_span_α
.LPAT$3_α_119_21:       lea              rax, [rip + .LPAT$3_α_119_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n85_match_lit_α
n84_match_alternate_s0: mov              r11, 42
                        lea              rax, [rip + .LPAT$3_α_119_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   n84_match_alternate_as
n84_match_alternate_s1: mov              r11, 42
                        lea              rax, [rip + .LPAT$3_α_119_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   n84_match_alternate_as
.LPAT$3_α_119_40:                                                             jmp   n86_match_span_β
.LPAT$3_α_119_41:                                                             jmp   n85_match_lit_β
n84_match_alternate_as: mov              r11, 42;                             jmp   n71_match_alternate_s1
n84_match_alternate_β:  mov              r11, 42
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
n84_match_alternate_af: mov              r11, 42
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.LPAT$3_α_119_19:                                                             jmp   n83_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_lit_α:        mov              r11, 43;                             jmp   n84_match_alternate_s1
n85_match_lit_β:        mov              r11, 43;                             jmp   n84_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n86_match_span_α:       mov              r11, 44
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_123_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_123_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_123_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_123_0
.LPAT$3_α_123_1:        cmp              ecx, r14d;                           jle   n84_match_alternate_af
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n84_match_alternate_s0
n86_match_span_β:       mov              r11, 44
                        mov              r14d, dword ptr [rbp + -156];        jmp   n84_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:        mov              r11, 45
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n71_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n71_match_alternate_af
                        add              r14d, 1;                             jmp   n71_match_alternate_s0
n87_match_lit_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   n71_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 46;                             jmp   n70_match_alternate_s1
n88_match_lit_β:        mov              r11, 46;                             jmp   n70_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n89_match_lit_α:        mov              r11, 47
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n70_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n70_match_alternate_af
                        add              r14d, 1;                             jmp   n70_match_alternate_s0
n89_match_lit_β:        mov              r11, 47
                        sub              r14d, 1;                             jmp   n70_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n73_match_alternate_β
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n130_match_alternate_α: mov              r11, 48
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .LPAT$4_α_139_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n137_match_defer_α
.LPAT$4_α_139_21:       lea              rax, [rip + .LPAT$4_α_139_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n136_match_defer_α
.LPAT$4_α_139_22:       lea              rax, [rip + .LPAT$4_α_139_23]
                        mov              qword ptr [rbp + -56], rax;          jmp   n135_match_defer_α
.LPAT$4_α_139_23:       lea              rax, [rip + .LPAT$4_α_139_24]
                        mov              qword ptr [rbp + -56], rax;          jmp   n134_match_defer_α
.LPAT$4_α_139_24:       lea              rax, [rip + .LPAT$4_α_139_25]
                        mov              qword ptr [rbp + -56], rax;          jmp   n133_match_lit_α
.LPAT$4_α_139_25:       lea              rax, [rip + .LPAT$4_α_139_26]
                        mov              qword ptr [rbp + -56], rax;          jmp   n132_match_lit_α
.LPAT$4_α_139_26:       lea              rax, [rip + .LPAT$4_α_139_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n131_match_lit_α
n130_match_alternate_s0:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s1:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s2:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s3:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_43]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s4:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_44]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s5:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_45]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
n130_match_alternate_s6:
                        mov              r11, 48
                        lea              rax, [rip + .LPAT$4_α_139_46]
                        mov              qword ptr [rbp + -64], rax;          jmp   n130_match_alternate_as
.LPAT$4_α_139_40:                                                             jmp   n137_match_defer_β
.LPAT$4_α_139_41:                                                             jmp   n136_match_defer_β
.LPAT$4_α_139_42:                                                             jmp   n135_match_defer_β
.LPAT$4_α_139_43:                                                             jmp   n134_match_defer_β
.LPAT$4_α_139_44:                                                             jmp   n133_match_lit_β
.LPAT$4_α_139_45:                                                             jmp   n132_match_lit_β
.LPAT$4_α_139_46:                                                             jmp   n131_match_lit_β
n130_match_alternate_as:
                        mov              r11, 48;                             jmp   PAT$4_γ
n130_match_alternate_β: mov              r11, 48
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n130_match_alternate_af:
                        mov              r11, 48
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.LPAT$4_α_139_19:                                                             jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_match_lit_α:       mov              r11, 49
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n130_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   n130_match_alternate_af
                        add              r14d, 4;                             jmp   n130_match_alternate_s6
n131_match_lit_β:       mov              r11, 49
                        sub              r14d, 4;                             jmp   n130_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n132_match_lit_α:       mov              r11, 50
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n130_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   n130_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   n130_match_alternate_af
                        add              r14d, 5;                             jmp   n130_match_alternate_s5
n132_match_lit_β:       mov              r11, 50
                        sub              r14d, 5;                             jmp   n130_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n133_match_lit_α:       mov              r11, 51
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n130_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   n130_match_alternate_af
                        add              r14d, 4;                             jmp   n130_match_alternate_s4
n133_match_lit_β:       mov              r11, 51
                        sub              r14d, 4;                             jmp   n130_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n134_match_defer_α:     mov              r11, 52
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_146_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_146_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .LPAT$4_α_146_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .LPAT$4_α_146_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .LPAT$4_α_146_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_146_18
.LPAT$4_α_146_17:       mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
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
                        test             rax, rax;                            je    .LPAT$4_α_146_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_146_16:
.LPAT$4_α_146_18:       test             rax, rax;                            jz    .LPAT$4_α_146_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_146_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_146_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_146_4:                                                              jmp   n130_match_alternate_s3
.LPAT$4_α_146_5:                                                              jmp   n130_match_alternate_af
.LPAT$4_α_146_0:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
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
                        test             eax, eax;                            js    n130_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_146_6]
                        push             rcx
                        push             rax;                                 jmp   n130_match_alternate_s3
.LPAT$4_α_146_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n130_match_alternate_af
n134_match_defer_β:     mov              r11, 52
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_146_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_146_12
                                                                              jmp   rax
.LPAT$4_β_146_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:     mov              r11, 53
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_147_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_147_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$4_α_147_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$4_α_147_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$4_α_147_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_147_18
.LPAT$4_α_147_17:       mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             rax, rax;                            je    .LPAT$4_α_147_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_147_16:
.LPAT$4_α_147_18:       test             rax, rax;                            jz    .LPAT$4_α_147_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_147_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_147_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_147_4:                                                              jmp   n130_match_alternate_s2
.LPAT$4_α_147_5:                                                              jmp   n130_match_alternate_af
.LPAT$4_α_147_0:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n130_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_147_6]
                        push             rcx
                        push             rax;                                 jmp   n130_match_alternate_s2
.LPAT$4_α_147_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n130_match_alternate_af
n135_match_defer_β:     mov              r11, 53
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_147_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_147_12
                                                                              jmp   rax
.LPAT$4_β_147_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              r11, 54
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_148_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_148_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$4_α_148_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$4_α_148_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$4_α_148_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_148_18
.LPAT$4_α_148_17:       mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             rax, rax;                            je    .LPAT$4_α_148_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_148_16:
.LPAT$4_α_148_18:       test             rax, rax;                            jz    .LPAT$4_α_148_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_148_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_148_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_148_4:                                                              jmp   n130_match_alternate_s1
.LPAT$4_α_148_5:                                                              jmp   n130_match_alternate_af
.LPAT$4_α_148_0:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n130_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_148_6]
                        push             rcx
                        push             rax;                                 jmp   n130_match_alternate_s1
.LPAT$4_α_148_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n130_match_alternate_af
n136_match_defer_β:     mov              r11, 54
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_148_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_148_12
                                                                              jmp   rax
.LPAT$4_β_148_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n137_match_defer_α:     mov              r11, 55
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_149_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_149_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$4_α_149_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$4_α_149_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$4_α_149_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_149_18
.LPAT$4_α_149_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_149_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_149_16:
.LPAT$4_α_149_18:       test             rax, rax;                            jz    .LPAT$4_α_149_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_149_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_149_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_149_4:                                                              jmp   n130_match_alternate_s0
.LPAT$4_α_149_5:                                                              jmp   n130_match_alternate_af
.LPAT$4_α_149_0:        push             r14
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
                        test             eax, eax;                            js    n130_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_149_6]
                        push             rcx
                        push             rax;                                 jmp   n130_match_alternate_s0
.LPAT$4_α_149_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n130_match_alternate_af
n137_match_defer_β:     mov              r11, 55
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_149_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_149_12
                                                                              jmp   rax
.LPAT$4_β_149_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n130_match_alternate_β
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n150_match_pos_α:       mov              r11, 56
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$5_ω
                                                                              jmp   n151_match_defer_α
n150_match_pos_β:       mov              r11, 56;                             jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:     sub              rsp, 16
                        mov              r11, 57
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_154_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_154_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$5_α_154_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$5_α_154_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$5_α_154_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_154_18
.LPAT$5_α_154_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_154_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_154_16:
.LPAT$5_α_154_18:       test             rax, rax;                            jz    .LPAT$5_α_154_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_154_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_154_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_154_4:                                                              jmp   n152_match_rpos_α
.LPAT$5_α_154_5:        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_154_0:        push             r14
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
                        test             eax, eax;                            jns   .LPAT$5_α_154_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_154_240:      mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$5_α_154_6]
                        push             rcx
                        push             rax;                                 jmp   n152_match_rpos_α
.LPAT$5_α_154_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n151_match_defer_β:     mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_154_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_154_12
                                                                              jmp   rax
.LPAT$5_β_154_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n152_match_rpos_α:      mov              r11, 58
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n151_match_defer_β
                                                                              jmp   PAT$5_γ
n152_match_rpos_β:      mov              r11, 58;                             jmp   n151_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n152_match_rpos_β
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 23
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 23
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "jescape"
.Lgvan1:                .string          "jchunk"
.Lgvan2:                .string          "jstring"
.Lgvan3:                .string          "jnumber"
.Lgvan4:                .string          "jmember"
.Lgvan5:                .string          "jobject"
.Lgvan6:                .string          "jarray"
.Lgvan7:                .string          "jvalue"
.Lgvan8:                .string          "jelement"
.Lgvan9:                .string          "json"
.Lgvan10:               .string          "src"
.Lgvan11:               .string          "EXPR$0"
.Lgvan12:               .string          "EXPR$1"
.Lgvan13:               .string          "EXPR$2"
.Lgvan14:               .string          "EXPR$3"
.Lgvan15:               .string          "PAT$2$V0"
.Lgvan16:               .string          "PAT$2$V1"
.Lgvan17:               .string          "PAT$2$V2"
.Lgvan18:               .string          "PAT$4$V0"
.Lgvan19:               .string          "PAT$4$V1"
.Lgvan20:               .string          "PAT$4$V2"
.Lgvan21:               .string          "PAT$4$V3"
.Lgvan22:               .string          "PAT$5$V0"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 59
                        mov              r10, 1;                              jmp   n157_lit_integer_α
n156_statement_begin_β: mov              r11, 59;                             jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_333_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_kw_assign_snobol4_α
.Lmain_α_333_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n158_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 61
                        mov              rdi, qword ptr [rip + .Lmain_α_334_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_334_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
.Lmain_α_334_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_statement_end_α
.Lmain_α_334_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 62
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n160_statement_begin_α
#=======================================================================================================================
#                 $' '           =  SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | ''
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 63
                        mov              r10, 2;                              jmp   n161_lit_string_α
n160_statement_begin_β: mov              r11, 63;                             jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_call_α
.Lmain_α_339_0:         .quad            .Lmain_α_339_0_s
.Lmain_α_339_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            sub              rsp, 16
                        mov              r11, 65
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd341:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd341]
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
                        cmp              al, 104;                             jne   .Lmain_α_340_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Lmain_α_340_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_lit_integer_α
n162_call_β:            mov              r11, 65
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_lit_string_α
n163_lit_integer_β:     mov              r11, 66
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n160_statement_begin_β
.Lmain_α_342_0:         .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_lit_integer_α
n164_lit_string_β:      mov              r11, 67
                        add              rsp, 16;                             jmp   n163_lit_integer_β
.Lmain_α_343_0:         .quad            .Lmain_α_343_0_s
.Lmain_α_343_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
n165_lit_integer_β:     mov              r11, 68
                        add              rsp, 16;                             jmp   n164_lit_string_β
.Lmain_α_344_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 69
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd69:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd69]
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
                        cmp              al, 104;                             jne   .Lmain_α_345_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lmain_α_345_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_binop_α
n166_call_β:            mov              r11, 69
                        add              rsp, 16;                             jmp   n165_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              r11, 70
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_lit_integer_α
n167_binop_β:           mov              r11, 70
                        add              rsp, 32;                             jmp   n165_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_call_α
n168_lit_integer_β:     mov              r11, 71
                        add              rsp, 16;                             jmp   n167_binop_β
.Lmain_α_347_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            sub              rsp, 16
                        mov              r11, 72
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd72:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd72]
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
                        cmp              al, 104;                             jne   .Lmain_α_348_240
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lmain_α_348_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_binop_α
n169_call_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n168_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              r11, 73
                        mov              rdi, qword ptr [rsp + 48]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_lit_integer_α
n170_binop_β:           mov              r11, 73
                        add              rsp, 32;                             jmp   n168_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_350_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_call_α
n171_lit_integer_β:     mov              r11, 74
                        add              rsp, 16;                             jmp   n170_binop_β
.Lmain_α_350_0:         .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            sub              rsp, 16
                        mov              r11, 75
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd75:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd75]
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
                        cmp              al, 104;                             jne   .Lmain_α_351_240
                        add              rsp, 16;                             jmp   n171_lit_integer_β
.Lmain_α_351_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n173_binop_α
n172_call_β:            mov              r11, 75
                        add              rsp, 16;                             jmp   n171_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:           sub              rsp, 16
                        mov              r11, 76
                        mov              rdi, qword ptr [rsp + 48]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_call_α
n173_binop_β:           mov              r11, 76
                        add              rsp, 32;                             jmp   n171_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            sub              rsp, 16
                        mov              r11, 77
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lbynamefnzd77:         .string          "SNO$PBK"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd77]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 458811
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lmain_α_353_240
                        add              rsp, 16;                             jmp   n173_binop_β
.Lmain_α_353_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n175_lit_string_α
n174_call_β:            mov              r11, 77
                        add              rsp, 16;                             jmp   n173_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_call_α
n175_lit_string_β:      mov              r11, 78
                        add              rsp, 32;                             jmp   n173_binop_β
.Lmain_α_354_0:         .quad            .Lmain_α_354_0_s
.Lmain_α_354_0_s:       .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:            sub              rsp, 16
                        mov              r11, 79
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
.Lbynamefnzd79:         .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd79]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589881
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lmain_α_355_240
                        add              rsp, 16;                             jmp   n175_lit_string_β
.Lmain_α_355_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_assign_var_α
n176_call_β:            mov              r11, 79
                        add              rsp, 16;                             jmp   n175_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_var_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 240]           # call
                        mov              rsi, qword ptr [rsp + 248]
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
                        cmp              al, 104;                             jne   .Lmain_α_356_240
                        add              rsp, 32;                             jmp   n175_lit_string_β
.Lmain_α_356_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 81
                        mov              r10, 2
                        add              rsp, 272;                            jmp   n179_statement_begin_α
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 82
                        mov              r10, 3;                              jmp   n180_lit_string_α
n179_statement_begin_β: mov              r11, 82;                             jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_call_α
.Lmain_α_361_0:         .quad            .Lmain_α_361_0_s
.Lmain_α_361_0_s:       .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_α:            sub              rsp, 16
                        mov              r11, 84
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd363:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd363]
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
                        cmp              al, 104;                             jne   .Lmain_α_362_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
.Lmain_α_362_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_assign_α
n181_call_β:            mov              r11, 84
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n179_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              r11, 85
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # jescape
                        mov              qword ptr [r9 + 8], rdx;             jmp   n183_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 86
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n184_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 87
                        mov              r10, 4;                              jmp   n185_lit_string_α
n184_statement_begin_β: mov              r11, 87;                             jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_call_α
.Lmain_α_369_0:         .quad            .Lmain_α_369_0_s
.Lmain_α_369_0_s:       .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            sub              rsp, 16
                        mov              r11, 89
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd371:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd371]
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
                        cmp              al, 104;                             jne   .Lmain_α_370_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
.Lmain_α_370_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_assign_α
n186_call_β:            mov              r11, 89
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jchunk
                        mov              qword ptr [r9 + 24], rdx;            jmp   n188_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 91
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n189_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 92
                        mov              r10, 5;                              jmp   n190_var_α
n189_statement_begin_β: mov              r11, 92;                             jmp   n201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 93
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 248], rdx;           jmp   n192_var_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:             sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 0]              # jescape
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_assign_α
n192_var_β:             mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 264], rdx;           jmp   n194_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_assign_α
n194_var_β:             mov              r11, 97
                        add              rsp, 16;                             jmp   n192_var_β
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:          mov              r11, 98
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 280], rdx;           jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_lit_string_α
n196_lit_string_β:      mov              r11, 99
                        add              rsp, 16;                             jmp   n194_var_β
.Lmain_α_383_0:         .quad            .Lmain_α_383_0_s
.Lmain_α_383_0_s:       .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_call_α
n197_lit_string_β:      mov              r11, 100
                        add              rsp, 16;                             jmp   n196_lit_string_β
.Lmain_α_384_0:         .quad            .Lmain_α_384_0_s
.Lmain_α_384_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        mov              r11, 101
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
.Lrkfnzd386:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd386]
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
                        cmp              al, 104;                             jne   .Lmain_α_385_240
                        add              rsp, 16;                             jmp   n197_lit_string_β
.Lmain_α_385_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_assign_α
n198_call_β:            mov              r11, 101
                        add              rsp, 16;                             jmp   n197_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jstring
                        mov              qword ptr [r9 + 40], rdx;            jmp   n200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:   mov              r11, 103
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n201_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  ('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 104
                        mov              r10, 6;                              jmp   n202_lit_string_α
n201_statement_begin_β: mov              r11, 104;                            jmp   n206_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_call_α
.Lmain_α_392_0:         .quad            .Lmain_α_392_0_s
.Lmain_α_392_0_s:       .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:            sub              rsp, 16
                        mov              r11, 106
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd394:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd394]
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
                        cmp              al, 104;                             jne   .Lmain_α_393_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
.Lmain_α_393_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_assign_α
n203_call_β:            mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jnumber
                        mov              qword ptr [r9 + 56], rdx;            jmp   n205_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   mov              r11, 108
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n206_statement_begin_α
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 109
                        mov              r10, 7;                              jmp   n207_lit_string_α
n206_statement_begin_β: mov              r11, 109;                            jmp   n223_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_call_α
.Lmain_α_400_0:         .quad            .Lmain_α_400_0_s
.Lmain_α_400_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            sub              rsp, 16
                        mov              r11, 111
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd402:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd402]
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
                        cmp              al, 104;                             jne   .Lmain_α_401_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
.Lmain_α_401_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_deref_α
n208_call_β:            mov              r11, 111
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_deref_α:           sub              rsp, 16
                        mov              r11, 112
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_403_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n206_statement_begin_β
.Lmain_α_403_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n210_var_α
n209_deref_β:           mov              r11, 112
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n206_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_binop_α
n210_var_β:             mov              r11, 113
                        add              rsp, 16;                             jmp   n209_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 114
                        mov              rdi, qword ptr [rsp + 32]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_lit_string_α
n211_binop_β:           mov              r11, 114
                        add              rsp, 16;                             jmp   n210_var_β
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_406_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_call_α
n212_lit_string_β:      mov              r11, 115
                        add              rsp, 16;                             jmp   n211_binop_β
.Lmain_α_406_0:         .quad            .Lmain_α_406_0_s
.Lmain_α_406_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            sub              rsp, 16
                        mov              r11, 116
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd408:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd408]
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
                        cmp              al, 104;                             jne   .Lmain_α_407_240
                        add              rsp, 16;                             jmp   n212_lit_string_β
.Lmain_α_407_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_deref_α
n213_call_β:            mov              r11, 116
                        add              rsp, 16;                             jmp   n212_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n214_deref_α:           sub              rsp, 16
                        mov              r11, 117
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_409_240
                        add              rsp, 32;                             jmp   n212_lit_string_β
.Lmain_α_409_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_deref_β:           mov              r11, 117
                        add              rsp, 32;                             jmp   n212_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 118
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_lit_string_α
n215_binop_β:           mov              r11, 118
                        add              rsp, 16;                             jmp   n214_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_411_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_binop_α
n216_lit_string_β:      mov              r11, 119
                        add              rsp, 16;                             jmp   n215_binop_β
.Lmain_α_411_0:         .quad            .Lmain_α_411_0_s
.Lmain_α_411_0_s:       .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              r11, 120
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n218_lit_string_α
n217_binop_β:           mov              r11, 120
                        add              rsp, 16;                             jmp   n216_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_413_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_α
n218_lit_string_β:      mov              r11, 121
                        add              rsp, 16;                             jmp   n217_binop_β
.Lmain_α_413_0:         .quad            .Lmain_α_413_0_s
.Lmain_α_413_0_s:       .string          "EXPR$0"
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:            sub              rsp, 16
                        mov              r11, 122
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd415:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd415]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 655411
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_414_240
                        add              rsp, 16;                             jmp   n218_lit_string_β
.Lmain_α_414_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_binop_α
n219_call_β:            mov              r11, 122
                        add              rsp, 16;                             jmp   n218_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           sub              rsp, 16
                        mov              r11, 123
                        mov              rdi, qword ptr [rsp + 48]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jmember
                        mov              qword ptr [r9 + 72], rdx;            jmp   n222_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 125
                        mov              r10, 7
                        add              rsp, 224;                            jmp   n223_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 126
                        mov              r10, 8;                              jmp   n224_lit_string_α
n223_statement_begin_β: mov              r11, 126;                            jmp   n244_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_var_α
.Lmain_α_422_0:         .quad            .Lmain_α_422_0_s
.Lmain_α_422_0_s:       .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 128
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_lit_string_α
n225_var_β:             mov              r11, 128
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_424_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_call_α
n226_lit_string_β:      mov              r11, 129
                        add              rsp, 16;                             jmp   n225_var_β
.Lmain_α_424_0:         .quad            .Lmain_α_424_0_s
.Lmain_α_424_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            sub              rsp, 16
                        mov              r11, 130
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd426:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd426]
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
                        cmp              al, 104;                             jne   .Lmain_α_425_240
                        add              rsp, 16;                             jmp   n226_lit_string_β
.Lmain_α_425_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_deref_α
n227_call_β:            mov              r11, 130
                        add              rsp, 16;                             jmp   n226_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n228_deref_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_427_240
                        add              rsp, 32;                             jmp   n226_lit_string_β
.Lmain_α_427_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_lit_string_α
n228_deref_β:           mov              r11, 131
                        add              rsp, 32;                             jmp   n226_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_428_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_binop_α
n229_lit_string_β:      mov              r11, 132
                        add              rsp, 16;                             jmp   n228_deref_β
.Lmain_α_428_0:         .quad            .Lmain_α_428_0_s
.Lmain_α_428_0_s:       .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:           sub              rsp, 16
                        mov              r11, 133
                        mov              rdi, qword ptr [rsp + 32]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_var_α
n230_binop_β:           mov              r11, 133
                        add              rsp, 16;                             jmp   n229_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_binop_α
n231_var_β:             mov              r11, 134
                        add              rsp, 16;                             jmp   n230_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 135
                        mov              rdi, qword ptr [rsp + 32]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_call_α
n232_binop_β:           mov              r11, 135
                        add              rsp, 16;                             jmp   n231_var_β
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            sub              rsp, 16
                        mov              r11, 136
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd136:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524343
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_432_240
                        add              rsp, 16;                             jmp   n232_binop_β
.Lmain_α_432_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_binop_α
n233_call_β:            mov              r11, 136
                        add              rsp, 16;                             jmp   n232_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              r11, 137
                        mov              rdi, qword ptr [rsp + 144]           # var
                        mov              rsi, qword ptr [rsp + 152]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_lit_string_α
n234_binop_β:           mov              r11, 137
                        add              rsp, 32;                             jmp   n232_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_434_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_call_α
n235_lit_string_β:      mov              r11, 138
                        add              rsp, 16;                             jmp   n234_binop_β
.Lmain_α_434_0:         .quad            .Lmain_α_434_0_s
.Lmain_α_434_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            sub              rsp, 16
                        mov              r11, 139
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd436:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd436]
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
                        cmp              al, 104;                             jne   .Lmain_α_435_240
                        add              rsp, 16;                             jmp   n235_lit_string_β
.Lmain_α_435_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_deref_α
n236_call_β:            mov              r11, 139
                        add              rsp, 16;                             jmp   n235_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n237_deref_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_437_240
                        add              rsp, 32;                             jmp   n235_lit_string_β
.Lmain_α_437_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_call_α
n237_deref_β:           mov              r11, 140
                        add              rsp, 32;                             jmp   n235_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            sub              rsp, 16
                        mov              r11, 141
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lbynamefnzd141:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd141]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589881
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lmain_α_438_240
                        add              rsp, 16;                             jmp   n237_deref_β
.Lmain_α_438_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_binop_α
n238_call_β:            mov              r11, 141
                        add              rsp, 16;                             jmp   n237_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              rdi, qword ptr [rsp + 240]           # lit_string
                        mov              rsi, qword ptr [rsp + 248]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_lit_string_α
n239_binop_β:           mov              r11, 142
                        add              rsp, 32;                             jmp   n237_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_440_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_binop_α
n240_lit_string_β:      mov              r11, 143
                        add              rsp, 16;                             jmp   n239_binop_β
.Lmain_α_440_0:         .quad            .Lmain_α_440_0_s
.Lmain_α_440_0_s:       .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:           sub              rsp, 16
                        mov              r11, 144
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n242_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jobject
                        mov              qword ptr [r9 + 88], rdx;            jmp   n243_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n243_statement_end_α:   mov              r11, 146
                        mov              r10, 8
                        add              rsp, 288;                            jmp   n244_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_begin_α: mov              r11, 147
                        mov              r10, 9;                              jmp   n245_lit_string_α
n244_statement_begin_β: mov              r11, 147;                            jmp   n267_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_lit_string_α
.Lmain_α_447_0:         .quad            .Lmain_α_447_0_s
.Lmain_α_447_0_s:       .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_448_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n247_call_α
n246_lit_string_β:      mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n244_statement_begin_β
.Lmain_α_448_0:         .quad            .Lmain_α_448_0_s
.Lmain_α_448_0_s:       .string          "EXPR$1"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            sub              rsp, 16
                        mov              r11, 150
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd450:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd450]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 655411
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_449_240
                        add              rsp, 16;                             jmp   n246_lit_string_β
.Lmain_α_449_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_lit_string_α
n247_call_β:            mov              r11, 150
                        add              rsp, 16;                             jmp   n246_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_451_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_call_α
n248_lit_string_β:      mov              r11, 151
                        add              rsp, 32;                             jmp   n246_lit_string_β
.Lmain_α_451_0:         .quad            .Lmain_α_451_0_s
.Lmain_α_451_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 152
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd453:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd453]
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
                        cmp              al, 104;                             jne   .Lmain_α_452_240
                        add              rsp, 16;                             jmp   n248_lit_string_β
.Lmain_α_452_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_deref_α
n249_call_β:            mov              r11, 152
                        add              rsp, 16;                             jmp   n248_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           sub              rsp, 16
                        mov              r11, 153
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_454_240
                        add              rsp, 32;                             jmp   n248_lit_string_β
.Lmain_α_454_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_string_α
n250_deref_β:           mov              r11, 153
                        add              rsp, 32;                             jmp   n248_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_455_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_binop_α
n251_lit_string_β:      mov              r11, 154
                        add              rsp, 16;                             jmp   n250_deref_β
.Lmain_α_455_0:         .quad            .Lmain_α_455_0_s
.Lmain_α_455_0_s:       .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 32]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_lit_string_α
n252_binop_β:           mov              r11, 155
                        add              rsp, 16;                             jmp   n251_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_call_α
n253_lit_string_β:      mov              r11, 156
                        add              rsp, 16;                             jmp   n252_binop_β
.Lmain_α_457_0:         .quad            .Lmain_α_457_0_s
.Lmain_α_457_0_s:       .string          "EXPR$2"
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:            sub              rsp, 16
                        mov              r11, 157
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd459:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd459]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 655411
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_458_240
                        add              rsp, 16;                             jmp   n253_lit_string_β
.Lmain_α_458_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_binop_α
n254_call_β:            mov              r11, 157
                        add              rsp, 16;                             jmp   n253_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:           sub              rsp, 16
                        mov              r11, 158
                        mov              rdi, qword ptr [rsp + 48]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_call_α
n255_binop_β:           mov              r11, 158
                        add              rsp, 32;                             jmp   n253_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            sub              rsp, 16
                        mov              r11, 159
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd159:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd159]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524343
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_461_240
                        add              rsp, 16;                             jmp   n255_binop_β
.Lmain_α_461_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_binop_α
n256_call_β:            mov              r11, 159
                        add              rsp, 16;                             jmp   n255_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 160
                        mov              rdi, qword ptr [rsp + 160]           # call
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_lit_string_α
n257_binop_β:           mov              r11, 160
                        add              rsp, 32;                             jmp   n255_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_463_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_call_α
n258_lit_string_β:      mov              r11, 161
                        add              rsp, 16;                             jmp   n257_binop_β
.Lmain_α_463_0:         .quad            .Lmain_α_463_0_s
.Lmain_α_463_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            sub              rsp, 16
                        mov              r11, 162
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd465:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd465]
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
                        cmp              al, 104;                             jne   .Lmain_α_464_240
                        add              rsp, 16;                             jmp   n258_lit_string_β
.Lmain_α_464_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n260_deref_α
n259_call_β:            mov              r11, 162
                        add              rsp, 16;                             jmp   n258_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n260_deref_α:           sub              rsp, 16
                        mov              r11, 163
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_466_240
                        add              rsp, 32;                             jmp   n258_lit_string_β
.Lmain_α_466_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_call_α
n260_deref_β:           mov              r11, 163
                        add              rsp, 32;                             jmp   n258_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 164
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lbynamefnzd164:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd164]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 589881
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lmain_α_467_240
                        add              rsp, 16;                             jmp   n260_deref_β
.Lmain_α_467_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_binop_α
n261_call_β:            mov              r11, 164
                        add              rsp, 16;                             jmp   n260_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:           sub              rsp, 16
                        mov              r11, 165
                        mov              rdi, qword ptr [rsp + 272]           # lit_string
                        mov              rsi, qword ptr [rsp + 280]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_lit_string_α
n262_binop_β:           mov              r11, 165
                        add              rsp, 32;                             jmp   n260_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_binop_α
n263_lit_string_β:      mov              r11, 166
                        add              rsp, 16;                             jmp   n262_binop_β
.Lmain_α_469_0:         .quad            .Lmain_α_469_0_s
.Lmain_α_469_0_s:       .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 167
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              r11, 168
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jarray
                        mov              qword ptr [r9 + 104], rdx;           jmp   n266_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   mov              r11, 169
                        mov              r10, 9
                        add              rsp, 320;                            jmp   n267_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α: mov              r11, 170
                        mov              r10, 10;                             jmp   n268_var_α
n267_statement_begin_β: mov              r11, 170;                            jmp   n281_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 171
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 296], rdx;           jmp   n270_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             sub              rsp, 16
                        mov              r11, 173
                        mov              rax, qword ptr [r9 + 48]             # jnumber
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_assign_α
n270_var_β:             mov              r11, 173
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n267_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 174
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 312], rdx;           jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 175
                        mov              rax, qword ptr [r9 + 80]             # jobject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_assign_α
n272_var_β:             mov              r11, 175
                        add              rsp, 16;                             jmp   n270_var_β
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 328], rdx;           jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 96]             # jarray
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_assign_α
n274_var_β:             mov              r11, 177
                        add              rsp, 16;                             jmp   n272_var_β
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 344], rdx;           jmp   n276_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_484_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_lit_string_α
n276_lit_string_β:      mov              r11, 179
                        add              rsp, 16;                             jmp   n274_var_β
.Lmain_α_484_0:         .quad            .Lmain_α_484_0_s
.Lmain_α_484_0_s:       .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      sub              rsp, 16
                        mov              r11, 180
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_485_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_call_α
n277_lit_string_β:      mov              r11, 180
                        add              rsp, 16;                             jmp   n276_lit_string_β
.Lmain_α_485_0:         .quad            .Lmain_α_485_0_s
.Lmain_α_485_0_s:       .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            sub              rsp, 16
                        mov              r11, 181
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
.Lrkfnzd487:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd487]
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
                        cmp              al, 104;                             jne   .Lmain_α_486_240
                        add              rsp, 16;                             jmp   n277_lit_string_β
.Lmain_α_486_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_assign_α
n278_call_β:            mov              r11, 181
                        add              rsp, 16;                             jmp   n277_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 182
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jvalue
                        mov              qword ptr [r9 + 120], rdx;           jmp   n280_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 183
                        mov              r10, 10
                        add              rsp, 112;                            jmp   n281_statement_begin_α
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α: mov              r11, 184
                        mov              r10, 11;                             jmp   n282_lit_string_α
n281_statement_begin_β: mov              r11, 184;                            jmp   n294_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      sub              rsp, 16
                        mov              r11, 185
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_493_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_call_α
.Lmain_α_493_0:         .quad            .Lmain_α_493_0_s
.Lmain_α_493_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            sub              rsp, 16
                        mov              r11, 186
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd495:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd495]
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
                        cmp              al, 104;                             jne   .Lmain_α_494_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n281_statement_begin_β
.Lmain_α_494_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_deref_α
n283_call_β:            mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n281_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n284_deref_α:           sub              rsp, 16
                        mov              r11, 187
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_496_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n281_statement_begin_β
.Lmain_α_496_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_lit_string_α
n284_deref_β:           mov              r11, 187
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n281_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_call_α
n285_lit_string_β:      mov              r11, 188
                        add              rsp, 16;                             jmp   n284_deref_β
.Lmain_α_497_0:         .quad            .Lmain_α_497_0_s
.Lmain_α_497_0_s:       .string          "EXPR$3"
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 189
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd499:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd499]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 655411
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_498_240
                        add              rsp, 16;                             jmp   n285_lit_string_β
.Lmain_α_498_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_binop_α
n286_call_β:            mov              r11, 189
                        add              rsp, 16;                             jmp   n285_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              r11, 190
                        mov              rdi, qword ptr [rsp + 48]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_lit_string_α
n287_binop_β:           mov              r11, 190
                        add              rsp, 32;                             jmp   n285_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_501_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_call_α
n288_lit_string_β:      mov              r11, 191
                        add              rsp, 16;                             jmp   n287_binop_β
.Lmain_α_501_0:         .quad            .Lmain_α_501_0_s
.Lmain_α_501_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            sub              rsp, 16
                        mov              r11, 192
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd503:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd503]
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
                        cmp              al, 104;                             jne   .Lmain_α_502_240
                        add              rsp, 16;                             jmp   n288_lit_string_β
.Lmain_α_502_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_deref_α
n289_call_β:            mov              r11, 192
                        add              rsp, 16;                             jmp   n288_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n290_deref_α:           sub              rsp, 16
                        mov              r11, 193
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_504_240
                        add              rsp, 32;                             jmp   n288_lit_string_β
.Lmain_α_504_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_binop_α
n290_deref_β:           mov              r11, 193
                        add              rsp, 32;                             jmp   n288_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              r11, 194
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # deref
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jelement
                        mov              qword ptr [r9 + 136], rdx;           jmp   n293_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_end_α:   mov              r11, 196
                        mov              r10, 11
                        add              rsp, 160;                            jmp   n294_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n294_statement_begin_α: mov              r11, 197
                        mov              r10, 12;                             jmp   n295_var_α
n294_statement_begin_β: mov              r11, 197;                            jmp   n302_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 360], rdx;           jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_513_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n298_lit_string_α
n297_lit_string_β:      mov              r11, 200
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n294_statement_begin_β
.Lmain_α_513_0:         .quad            .Lmain_α_513_0_s
.Lmain_α_513_0_s:       .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      sub              rsp, 16
                        mov              r11, 201
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_514_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_call_α
n298_lit_string_β:      mov              r11, 201
                        add              rsp, 16;                             jmp   n297_lit_string_β
.Lmain_α_514_0:         .quad            .Lmain_α_514_0_s
.Lmain_α_514_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 202
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
.Lrkfnzd516:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd516]
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
                        cmp              al, 104;                             jne   .Lmain_α_515_240
                        add              rsp, 16;                             jmp   n298_lit_string_β
.Lmain_α_515_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_call_β:            mov              r11, 202
                        add              rsp, 16;                             jmp   n298_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # json
                        mov              qword ptr [r9 + 152], rdx;           jmp   n301_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 204
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n302_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n302_statement_begin_α: mov              r11, 205
                        mov              r10, 13;                             jmp   n303_lit_name_α
n302_statement_begin_β: mov              r11, 205;                            jmp   n308_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_name_α:        sub              rsp, 16
                        mov              r11, 206
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n304_lit_integer_α
.Lmain_α_522_0:         .quad            .Lmain_α_522_0_s
.Lmain_α_522_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     sub              rsp, 16
                        mov              r11, 207
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_lit_string_α
n304_lit_integer_β:     mov              r11, 207
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n302_statement_begin_β
.Lmain_α_523_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_call_α
n305_lit_string_β:      mov              r11, 208
                        add              rsp, 16;                             jmp   n304_lit_integer_β
.Lmain_α_524_0:         .quad            .Lmain_α_524_0_s
.Lmain_α_524_0_s:       .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            sub              rsp, 16
                        mov              r11, 209
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
.Lbynamefnzd209:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd209]
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
                        cmp              al, 104;                             jne   .Lmain_α_525_240
                        add              rsp, 16;                             jmp   n305_lit_string_β
.Lmain_α_525_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n307_statement_end_α
n306_call_β:            mov              r11, 209
                        add              rsp, 16;                             jmp   n305_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_end_α:   mov              r11, 210
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n308_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_begin_α: mov              r11, 211
                        mov              r10, 14;                             jmp   n309_var_α
n308_statement_begin_β: mov              r11, 211;                            jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 212
                        mov              rdi, qword ptr [rip + .Lmain_α_530_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_530_240
                        add              rsp, 16;                             jmp   n308_statement_begin_β
.Lmain_α_530_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_assign_α
.Lmain_α_530_0:         .quad            .Lmain_α_530_0_s
.Lmain_α_530_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n310_assign_α:          mov              r11, 213
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # src
                        mov              qword ptr [r9 + 168], rdx;           jmp   n311_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:   mov              r11, 214
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n312_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_begin_α: mov              r11, 215
                        mov              r10, 15;                             jmp   n313_var_α
n312_statement_begin_β: mov              r11, 215;                            jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 217
                        mov              rax, qword ptr [r9 + 144]            # json
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_assign_α
n314_var_β:             mov              r11, 217
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_α:          mov              r11, 218
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_538_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n316_match_begin_α
n315_assign_β:          mov              r11, 218;                            jmp   n314_var_β
.Lmain_α_538_0:         .quad            .Lmain_α_538_0_s
.Lmain_α_538_0_s:       .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n316_match_begin_α:     mov              r11, 219
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
.Lmain_α_540_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_540_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n317_match_defer_α
n316_match_begin_β:     mov              r11, 219
.Lmain_α_540_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_540_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_540_1
                                                                              jmp   .Lmain_α_540_0
.Lmain_β_540_1:
n316_match_begin_af:    mov              r11, 219
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
                        pop              rbp;                                 jmp   n315_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n317_match_defer_α:     mov              r11, 220
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S8]
                        cmp              rax, rdx;                            jne   .Lmain_α_541_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_541_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_541_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_541_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_541_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_541_0
.Lmain_α_541_31:        mov              edx, -1;                             jmp   .Lmain_α_541_0
.Lmain_α_541_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S8]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_541_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_541_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_541_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_541_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_541_23
.Lmain_α_541_22:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
.Lmain_α_541_23:        test             rax, rax;                            jz    .Lmain_α_541_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_541_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_541_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_541_4:                                                               jmp   n318_match_end_α
.Lmain_α_541_5:                                                               jmp   n316_match_begin_β
.Lmain_α_541_0:         mov              eax, edx
                        test             eax, eax;                            js    n316_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_541_6]
                        push             rcx
                        push             rax;                                 jmp   n318_match_end_α
.Lmain_α_541_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n316_match_begin_β
n317_match_defer_β:     mov              r11, 220
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_541_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_541_12
                                                                              jmp   rax
.Lmain_β_541_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n318_match_end_α:       mov              r11, 221
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
                        test             rax, rax;                            je    .Lmain_α_543_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n316_match_begin_af
.Lmain_α_543_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n319_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   mov              r11, 222
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n320_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n320_statement_begin_α: mov              r11, 223
                        mov              r10, 16;                             jmp   n321_lit_string_α
n320_statement_begin_β: mov              r11, 223;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      sub              rsp, 16
                        mov              r11, 224
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lmain_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_var_α
.Lmain_α_548_0:         .quad            .Lmain_α_548_0_s
.Lmain_α_548_0_s:       .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n323_call_α
n322_var_β:             mov              r11, 225
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n320_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        mov              r11, 226
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd551:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd551]
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
                        cmp              al, 104;                             jne   .Lmain_α_550_240
                        add              rsp, 16;                             jmp   n322_var_β
.Lmain_α_550_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_binop_α
n323_call_β:            mov              r11, 226
                        add              rsp, 16;                             jmp   n322_var_β
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_α:           sub              rsp, 16
                        mov              r11, 227
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 228
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_553_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n326_statement_end_α
.Lmain_α_553_0:         .quad            .Lmain_α_553_0_s
.Lmain_α_553_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 229
                        mov              r10, 16
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α: mov              r11, 230
                        mov              r10, 17;                             jmp   n328_lit_string_α
n327_statement_begin_β: mov              r11, 230;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lmain_α_558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_assign_α
.Lmain_α_558_0:         .quad            .Lmain_α_558_0_s
.Lmain_α_558_0_s:       .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 232
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_559_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_statement_end_α
.Lmain_α_559_0:         .quad            .Lmain_α_559_0_s
.Lmain_α_559_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 233
                        mov              r10, 17
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
.Lstartup_pname0:       .string          "EXPR$0"
                        .align           8
.Lstartup_pnames0:
                        .quad            0
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__EXPR$0
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames0
                        .long            0
                        .long            0
                        .long            48
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "EXPR$1"
                        .align           8
.Lstartup_pnames1:
                        .quad            0
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__EXPR$1
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames1
                        .long            0
                        .long            0
                        .long            48
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "EXPR$2"
                        .align           8
.Lstartup_pnames2:
                        .quad            0
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__EXPR$2
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames2
                        .long            0
                        .long            0
                        .long            48
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "EXPR$3"
                        .align           8
.Lstartup_pnames3:
                        .quad            0
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__EXPR$3
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_pnames3
                        .long            0
                        .long            0
                        .long            48
                        .long            17
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__PAT$0
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "PAT$1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "PAT$2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__PAT$2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "PAT$3"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__PAT$3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            288
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "PAT$4"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__PAT$4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            144
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PAT$5"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__PAT$5
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
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$2$V0"
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V2"
.S3:                    .string          "PAT$4$V3"
.S4:                    .string          "PAT$4$V2"
.S5:                    .string          "PAT$4$V1"
.S6:                    .string          "PAT$4$V0"
.S7:                    .string          "PAT$5$V0"
.S8:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
                        .byte            0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0
                        .byte            0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0
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
.C3:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.C4:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
