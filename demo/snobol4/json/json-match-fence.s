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
                        test             rdi, rdi;                            je    .LPAT$2_α_64_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_64_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$2_α_64_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$2_α_64_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$2_α_64_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_64_18
.LPAT$2_α_64_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_64_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_64_16:
.LPAT$2_α_64_18:        test             rax, rax;                            jz    .LPAT$2_α_64_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_64_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_64_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_64_4:                                                               jmp   n57_match_arbno_α
.LPAT$2_α_64_5:         add              rsp, 16;                             jmp   n55_match_lit_β
.LPAT$2_α_64_0:         push             r14
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
                        test             eax, eax;                            jns   .LPAT$2_α_64_240
                        add              rsp, 16;                             jmp   n55_match_lit_β
.LPAT$2_α_64_240:       mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_64_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_α
.LPAT$2_α_64_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n55_match_lit_β
n56_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_64_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_64_12
                                                                              jmp   rax
.LPAT$2_β_64_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n57_match_arbno_α:      mov              r11, 24
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
n57_match_arbno_β:      mov              r11, 24
                        mov              r12, qword ptr [rbp + -40];          jmp   n60_match_defer_α
n57_match_arbno_as:     mov              r11, 24
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n60_match_defer_β
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
                        add              r14d, 1;                             jmp   n59_match_fence0_α
n58_match_lit_β:        mov              r11, 25
                        sub              r14d, 1;                             jmp   n57_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_fence0_α:     mov              r11, 26
                        mov              rsp, rbp
                        sub              rsp, 72;                             jmp   PAT$2_γ
n59_match_fence0_β:     mov              r11, 26;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 27
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_71_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_71_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$2_α_71_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$2_α_71_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$2_α_71_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_71_18
.LPAT$2_α_71_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_71_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_71_16:
.LPAT$2_α_71_18:        test             rax, rax;                            jz    .LPAT$2_α_71_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_71_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_71_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_71_4:                                                               jmp   n61_match_defer_α
.LPAT$2_α_71_5:                                                               jmp   n57_match_arbno_af
.LPAT$2_α_71_0:         push             r14
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
                        lea              rax, [rip + .LPAT$2_α_71_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_defer_α
.LPAT$2_α_71_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n57_match_arbno_af
n60_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_71_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_71_12
                                                                              jmp   rax
.LPAT$2_β_71_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      mov              r11, 28
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$2_α_72_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$2_α_72_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$2_α_72_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$2_α_72_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$2_α_72_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$2_α_72_18
.LPAT$2_α_72_17:        mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$2_α_72_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$2_α_72_16:
.LPAT$2_α_72_18:        test             rax, rax;                            jz    .LPAT$2_α_72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$2_α_72_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$2_α_72_4]
                        push             rcx;                                 jmp   rax
.LPAT$2_α_72_4:                                                               jmp   n57_match_arbno_as
.LPAT$2_α_72_5:                                                               jmp   n60_match_defer_β
.LPAT$2_α_72_0:         push             r14
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
                        test             eax, eax;                            js    n60_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$2_α_72_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_as
.LPAT$2_α_72_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_defer_β
n61_match_defer_β:      mov              r11, 28
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$2_β_72_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$2_β_72_12
                                                                              jmp   rax
.LPAT$2_β_72_12:                                                              jmp   qword ptr [rsp]
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
                        sub              rsp, 408
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n73_match_fence1_α:     mov              r11, 29
                        mov              qword ptr [rbp + -368], rsp
                        sub              rsp, 0;                              jmp   n95_match_alternate_α
n73_match_fence1_as:    mov              r11, 29
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -368];         jmp   n74_match_alternate_α
n73_match_fence1_af:    mov              r11, 29
                        add              rsp, 0
n73_match_fence1_β:     mov              r11, 29
                        mov              rsp, qword ptr [rbp + -368];         jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_match_alternate_α:  mov              r11, 30
                        mov              dword ptr [rbp + -272], r14d
                        lea              rax, [rip + .LPAT$3_α_101_21]
                        mov              qword ptr [rbp + -256], rax;         jmp   n94_match_lit_α
.LPAT$3_α_101_21:       lea              rax, [rip + .LPAT$3_α_101_19]
                        mov              qword ptr [rbp + -256], rax;         jmp   n89_match_any_α
n74_match_alternate_s0: mov              r11, 30
                        lea              rax, [rip + .LPAT$3_α_101_40]
                        mov              qword ptr [rbp + -264], rax;         jmp   n74_match_alternate_as
n74_match_alternate_s1: mov              r11, 30
                        lea              rax, [rip + .LPAT$3_α_101_41]
                        mov              qword ptr [rbp + -264], rax;         jmp   n74_match_alternate_as
.LPAT$3_α_101_40:                                                             jmp   n94_match_lit_β
.LPAT$3_α_101_41:                                                             jmp   n90_match_fence1_β
n74_match_alternate_as: mov              r11, 30;                             jmp   n75_match_fence1_α
n74_match_alternate_β:  mov              r11, 30
                        mov              rax, qword ptr [rbp + -264];         jmp   rax
n74_match_alternate_af: mov              r11, 30
                        mov              r14d, dword ptr [rbp + -272]
                        mov              rax, qword ptr [rbp + -256];         jmp   rax
.LPAT$3_α_101_19:                                                             jmp   n73_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n75_match_fence1_α:     mov              r11, 31
                        mov              qword ptr [rbp + -176], rsp
                        sub              rsp, 0;                              jmp   n85_match_alternate_α
n75_match_fence1_as:    mov              r11, 31
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -176];         jmp   n76_match_fence1_α
n75_match_fence1_af:    mov              r11, 31
                        add              rsp, 0
n75_match_fence1_β:     mov              r11, 31
                        mov              rsp, qword ptr [rbp + -176];         jmp   n74_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n76_match_fence1_α:     mov              r11, 32
                        mov              qword ptr [rbp + -48], rsp
                        sub              rsp, 0;                              jmp   n77_match_alternate_α
n76_match_fence1_as:    mov              r11, 32
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$3_γ
n76_match_fence1_af:    mov              r11, 32
                        add              rsp, 0
n76_match_fence1_β:     mov              r11, 32
                        mov              rsp, qword ptr [rbp + -48];          jmp   n75_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_alternate_α:  mov              r11, 33
                        mov              dword ptr [rbp + -80], r14d
                        lea              rax, [rip + .LPAT$3_α_107_21]
                        mov              qword ptr [rbp + -64], rax;          jmp   n79_match_any_α
.LPAT$3_α_107_21:       lea              rax, [rip + .LPAT$3_α_107_19]
                        mov              qword ptr [rbp + -64], rax;          jmp   n78_match_lit_α
n77_match_alternate_s0: mov              r11, 33
                        lea              rax, [rip + .LPAT$3_α_107_40]
                        mov              qword ptr [rbp + -72], rax;          jmp   n77_match_alternate_as
n77_match_alternate_s1: mov              r11, 33
                        lea              rax, [rip + .LPAT$3_α_107_41]
                        mov              qword ptr [rbp + -72], rax;          jmp   n77_match_alternate_as
.LPAT$3_α_107_40:                                                             jmp   n81_match_span_β
.LPAT$3_α_107_41:                                                             jmp   n78_match_lit_β
n77_match_alternate_as: mov              r11, 33;                             jmp   n76_match_fence1_as
n77_match_alternate_β:  mov              r11, 33
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
n77_match_alternate_af: mov              r11, 33
                        mov              r14d, dword ptr [rbp + -80]
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.LPAT$3_α_107_19:                                                             jmp   n76_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:        mov              r11, 34;                             jmp   n77_match_alternate_s1
n78_match_lit_β:        mov              r11, 34;                             jmp   n77_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n79_match_any_α:        mov              r11, 35
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n77_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .LPAT$3_α_111_0
                        cmp              esi, 69;                             je    .LPAT$3_α_111_0
                                                                              jmp   n77_match_alternate_af
.LPAT$3_α_111_0:        add              r14d, 1;                             jmp   n80_match_fence1_α
n79_match_any_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   n77_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n80_match_fence1_α:     mov              r11, 36
                        mov              qword ptr [rbp + -128], rsp
                        sub              rsp, 0;                              jmp   n82_match_alternate_α
n80_match_fence1_as:    mov              r11, 36
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -128];         jmp   n81_match_span_α
n80_match_fence1_af:    mov              r11, 36
                        add              rsp, 0
n80_match_fence1_β:     mov              r11, 36
                        mov              rsp, qword ptr [rbp + -128];         jmp   n79_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n81_match_span_α:       sub              rsp, 16
                        mov              r11, 37
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_115_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_115_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_115_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_115_0
.LPAT$3_α_115_1:        cmp              ecx, r14d;                           jg    .LPAT$3_α_115_240
                        add              rsp, 16;                             jmp   n80_match_fence1_β
.LPAT$3_α_115_240:      mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   n77_match_alternate_s0
n81_match_span_β:       mov              r11, 37
                        mov              r14d, dword ptr [rbp + -108]
                        add              rsp, 16;                             jmp   n80_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_alternate_α:  mov              r11, 38
                        mov              dword ptr [rbp + -160], r14d
                        lea              rax, [rip + .LPAT$3_α_117_21]
                        mov              qword ptr [rbp + -144], rax;         jmp   n84_match_any_α
.LPAT$3_α_117_21:       lea              rax, [rip + .LPAT$3_α_117_19]
                        mov              qword ptr [rbp + -144], rax;         jmp   n83_match_lit_α
n82_match_alternate_s0: mov              r11, 38
                        lea              rax, [rip + .LPAT$3_α_117_40]
                        mov              qword ptr [rbp + -152], rax;         jmp   n82_match_alternate_as
n82_match_alternate_s1: mov              r11, 38
                        lea              rax, [rip + .LPAT$3_α_117_41]
                        mov              qword ptr [rbp + -152], rax;         jmp   n82_match_alternate_as
.LPAT$3_α_117_40:                                                             jmp   n84_match_any_β
.LPAT$3_α_117_41:                                                             jmp   n83_match_lit_β
n82_match_alternate_as: mov              r11, 38;                             jmp   n80_match_fence1_as
n82_match_alternate_β:  mov              r11, 38
                        mov              rax, qword ptr [rbp + -152];         jmp   rax
n82_match_alternate_af: mov              r11, 38
                        mov              r14d, dword ptr [rbp + -160]
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.LPAT$3_α_117_19:                                                             jmp   n80_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n83_match_lit_α:        mov              r11, 39;                             jmp   n82_match_alternate_s1
n83_match_lit_β:        mov              r11, 39;                             jmp   n82_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n84_match_any_α:        mov              r11, 40
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n82_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .LPAT$3_α_121_0
                        cmp              esi, 45;                             je    .LPAT$3_α_121_0
                                                                              jmp   n82_match_alternate_af
.LPAT$3_α_121_0:        add              r14d, 1;                             jmp   n82_match_alternate_s0
n84_match_any_β:        mov              r11, 40
                        sub              r14d, 1;                             jmp   n82_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n85_match_alternate_α:  mov              r11, 41
                        mov              dword ptr [rbp + -208], r14d
                        lea              rax, [rip + .LPAT$3_α_123_21]
                        mov              qword ptr [rbp + -192], rax;         jmp   n87_match_lit_α
.LPAT$3_α_123_21:       lea              rax, [rip + .LPAT$3_α_123_19]
                        mov              qword ptr [rbp + -192], rax;         jmp   n86_match_lit_α
n85_match_alternate_s0: mov              r11, 41
                        lea              rax, [rip + .LPAT$3_α_123_40]
                        mov              qword ptr [rbp + -200], rax;         jmp   n85_match_alternate_as
n85_match_alternate_s1: mov              r11, 41
                        lea              rax, [rip + .LPAT$3_α_123_41]
                        mov              qword ptr [rbp + -200], rax;         jmp   n85_match_alternate_as
.LPAT$3_α_123_40:                                                             jmp   n88_match_span_β
.LPAT$3_α_123_41:                                                             jmp   n86_match_lit_β
n85_match_alternate_as: mov              r11, 41;                             jmp   n75_match_fence1_as
n85_match_alternate_β:  mov              r11, 41
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
n85_match_alternate_af: mov              r11, 41
                        mov              r14d, dword ptr [rbp + -208]
                        mov              rax, qword ptr [rbp + -192];         jmp   rax
.LPAT$3_α_123_19:                                                             jmp   n75_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n86_match_lit_α:        mov              r11, 42;                             jmp   n85_match_alternate_s1
n86_match_lit_β:        mov              r11, 42;                             jmp   n85_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:        mov              r11, 43
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n85_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n85_match_alternate_af
                        add              r14d, 1;                             jmp   n88_match_span_α
n87_match_lit_β:        mov              r11, 43
                        sub              r14d, 1;                             jmp   n85_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_span_α:       mov              r11, 44
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_129_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_129_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_129_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_129_0
.LPAT$3_α_129_1:        cmp              ecx, r14d;                           jle   n87_match_lit_β
                        mov              dword ptr [rbp + -236], r14d
                        mov              r14d, ecx;                           jmp   n85_match_alternate_s0
n88_match_span_β:       mov              r11, 44
                        mov              r14d, dword ptr [rbp + -236];        jmp   n87_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n89_match_any_α:        mov              r11, 45
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n74_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n74_match_alternate_af
                        add              r14d, 1;                             jmp   n90_match_fence1_α
n89_match_any_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   n74_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n90_match_fence1_α:     mov              r11, 46
                        mov              qword ptr [rbp + -288], rsp
                        sub              rsp, 0;                              jmp   n91_match_alternate_α
n90_match_fence1_as:    mov              r11, 46
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -288];         jmp   n74_match_alternate_s1
n90_match_fence1_af:    mov              r11, 46
                        add              rsp, 0
n90_match_fence1_β:     mov              r11, 46
                        mov              rsp, qword ptr [rbp + -288];         jmp   n89_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n91_match_alternate_α:  mov              r11, 47
                        mov              dword ptr [rbp + -320], r14d
                        lea              rax, [rip + .LPAT$3_α_135_21]
                        mov              qword ptr [rbp + -304], rax;         jmp   n93_match_span_α
.LPAT$3_α_135_21:       lea              rax, [rip + .LPAT$3_α_135_19]
                        mov              qword ptr [rbp + -304], rax;         jmp   n92_match_lit_α
n91_match_alternate_s0: mov              r11, 47
                        lea              rax, [rip + .LPAT$3_α_135_40]
                        mov              qword ptr [rbp + -312], rax;         jmp   n91_match_alternate_as
n91_match_alternate_s1: mov              r11, 47
                        lea              rax, [rip + .LPAT$3_α_135_41]
                        mov              qword ptr [rbp + -312], rax;         jmp   n91_match_alternate_as
.LPAT$3_α_135_40:                                                             jmp   n93_match_span_β
.LPAT$3_α_135_41:                                                             jmp   n92_match_lit_β
n91_match_alternate_as: mov              r11, 47;                             jmp   n90_match_fence1_as
n91_match_alternate_β:  mov              r11, 47
                        mov              rax, qword ptr [rbp + -312];         jmp   rax
n91_match_alternate_af: mov              r11, 47
                        mov              r14d, dword ptr [rbp + -320]
                        mov              rax, qword ptr [rbp + -304];         jmp   rax
.LPAT$3_α_135_19:                                                             jmp   n90_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 48;                             jmp   n91_match_alternate_s1
n92_match_lit_β:        mov              r11, 48;                             jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_span_α:       mov              r11, 49
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.LPAT$3_α_139_0:        cmp              ecx, r15d;                           jge   .LPAT$3_α_139_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .LPAT$3_α_139_1
                        add              ecx, 1;                              jmp   .LPAT$3_α_139_0
.LPAT$3_α_139_1:        cmp              ecx, r14d;                           jle   n91_match_alternate_af
                        mov              dword ptr [rbp + -348], r14d
                        mov              r14d, ecx;                           jmp   n91_match_alternate_s0
n93_match_span_β:       mov              r11, 49
                        mov              r14d, dword ptr [rbp + -348];        jmp   n91_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n94_match_lit_α:        mov              r11, 50
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n74_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n74_match_alternate_af
                        add              r14d, 1;                             jmp   n74_match_alternate_s0
n94_match_lit_β:        mov              r11, 50
                        sub              r14d, 1;                             jmp   n74_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  mov              r11, 51
                        mov              dword ptr [rbp + -400], r14d
                        lea              rax, [rip + .LPAT$3_α_143_21]
                        mov              qword ptr [rbp + -384], rax;         jmp   n97_match_lit_α
.LPAT$3_α_143_21:       lea              rax, [rip + .LPAT$3_α_143_19]
                        mov              qword ptr [rbp + -384], rax;         jmp   n96_match_lit_α
n95_match_alternate_s0: mov              r11, 51
                        lea              rax, [rip + .LPAT$3_α_143_40]
                        mov              qword ptr [rbp + -392], rax;         jmp   n95_match_alternate_as
n95_match_alternate_s1: mov              r11, 51
                        lea              rax, [rip + .LPAT$3_α_143_41]
                        mov              qword ptr [rbp + -392], rax;         jmp   n95_match_alternate_as
.LPAT$3_α_143_40:                                                             jmp   n97_match_lit_β
.LPAT$3_α_143_41:                                                             jmp   n96_match_lit_β
n95_match_alternate_as: mov              r11, 51;                             jmp   n73_match_fence1_as
n95_match_alternate_β:  mov              r11, 51
                        mov              rax, qword ptr [rbp + -392];         jmp   rax
n95_match_alternate_af: mov              r11, 51
                        mov              r14d, dword ptr [rbp + -400]
                        mov              rax, qword ptr [rbp + -384];         jmp   rax
.LPAT$3_α_143_19:                                                             jmp   n73_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n96_match_lit_α:        mov              r11, 52;                             jmp   n95_match_alternate_s1
n96_match_lit_β:        mov              r11, 52;                             jmp   n95_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:        mov              r11, 53
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n95_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n95_match_alternate_af
                        add              r14d, 1;                             jmp   n95_match_alternate_s0
n97_match_lit_β:        mov              r11, 53
                        sub              r14d, 1;                             jmp   n95_match_alternate_af
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n148_match_alternate_α: mov              r11, 54
                        mov              dword ptr [rbp + -64], r14d
                        lea              rax, [rip + .LPAT$4_α_159_21]
                        mov              qword ptr [rbp + -48], rax;          jmp   n157_match_defer_α
.LPAT$4_α_159_21:       lea              rax, [rip + .LPAT$4_α_159_22]
                        mov              qword ptr [rbp + -48], rax;          jmp   n156_match_defer_α
.LPAT$4_α_159_22:       lea              rax, [rip + .LPAT$4_α_159_23]
                        mov              qword ptr [rbp + -48], rax;          jmp   n154_match_defer_α
.LPAT$4_α_159_23:       lea              rax, [rip + .LPAT$4_α_159_24]
                        mov              qword ptr [rbp + -48], rax;          jmp   n152_match_defer_α
.LPAT$4_α_159_24:       lea              rax, [rip + .LPAT$4_α_159_25]
                        mov              qword ptr [rbp + -48], rax;          jmp   n151_match_lit_α
.LPAT$4_α_159_25:       lea              rax, [rip + .LPAT$4_α_159_26]
                        mov              qword ptr [rbp + -48], rax;          jmp   n150_match_lit_α
.LPAT$4_α_159_26:       lea              rax, [rip + .LPAT$4_α_159_19]
                        mov              qword ptr [rbp + -48], rax;          jmp   n149_match_lit_α
n148_match_alternate_s0:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_40]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s1:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_41]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s2:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_42]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s3:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_43]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s4:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_44]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s5:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_45]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
n148_match_alternate_s6:
                        mov              r11, 54
                        lea              rax, [rip + .LPAT$4_α_159_46]
                        mov              qword ptr [rbp + -56], rax;          jmp   n148_match_alternate_as
.LPAT$4_α_159_40:                                                             jmp   n157_match_defer_β
.LPAT$4_α_159_41:                                                             jmp   n156_match_defer_β
.LPAT$4_α_159_42:                                                             jmp   n155_match_fence0_β
.LPAT$4_α_159_43:                                                             jmp   n153_match_fence0_β
.LPAT$4_α_159_44:                                                             jmp   n151_match_lit_β
.LPAT$4_α_159_45:                                                             jmp   n150_match_lit_β
.LPAT$4_α_159_46:                                                             jmp   n149_match_lit_β
n148_match_alternate_as:
                        mov              r11, 54;                             jmp   PAT$4_γ
n148_match_alternate_β: mov              r11, 54
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
n148_match_alternate_af:
                        mov              r11, 54
                        mov              r14d, dword ptr [rbp + -64]
                        mov              rax, qword ptr [rbp + -48];          jmp   rax
.LPAT$4_α_159_19:                                                             jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_match_lit_α:       mov              r11, 55
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n148_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   n148_match_alternate_af
                        add              r14d, 4;                             jmp   n148_match_alternate_s6
n149_match_lit_β:       mov              r11, 55
                        sub              r14d, 4;                             jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n150_match_lit_α:       mov              r11, 56
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n148_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   n148_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   n148_match_alternate_af
                        add              r14d, 5;                             jmp   n148_match_alternate_s5
n150_match_lit_β:       mov              r11, 56
                        sub              r14d, 5;                             jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n151_match_lit_α:       mov              r11, 57
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n148_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   n148_match_alternate_af
                        add              r14d, 4;                             jmp   n148_match_alternate_s4
n151_match_lit_β:       mov              r11, 57
                        sub              r14d, 4;                             jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n152_match_defer_α:     mov              r11, 58
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_166_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_166_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .LPAT$4_α_166_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .LPAT$4_α_166_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .LPAT$4_α_166_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_166_18
.LPAT$4_α_166_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_166_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_166_16:
.LPAT$4_α_166_18:       test             rax, rax;                            jz    .LPAT$4_α_166_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_166_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_166_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_166_4:                                                              jmp   n153_match_fence0_α
.LPAT$4_α_166_5:                                                              jmp   n148_match_alternate_af
.LPAT$4_α_166_0:        push             r14
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
                        test             eax, eax;                            js    n148_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_166_6]
                        push             rcx
                        push             rax;                                 jmp   n153_match_fence0_α
.LPAT$4_α_166_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n148_match_alternate_af
n152_match_defer_β:     mov              r11, 58
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_166_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_166_12
                                                                              jmp   rax
.LPAT$4_β_166_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n153_match_fence0_α:    mov              r11, 59;                             jmp   n148_match_alternate_s3
n153_match_fence0_β:    mov              r11, 59;                             jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n154_match_defer_α:     mov              r11, 60
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_169_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_169_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .LPAT$4_α_169_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .LPAT$4_α_169_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .LPAT$4_α_169_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_169_18
.LPAT$4_α_169_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_169_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_169_16:
.LPAT$4_α_169_18:       test             rax, rax;                            jz    .LPAT$4_α_169_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_169_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_169_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_169_4:                                                              jmp   n155_match_fence0_α
.LPAT$4_α_169_5:                                                              jmp   n148_match_alternate_af
.LPAT$4_α_169_0:        push             r14
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
                        test             eax, eax;                            js    n148_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_169_6]
                        push             rcx
                        push             rax;                                 jmp   n155_match_fence0_α
.LPAT$4_α_169_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n148_match_alternate_af
n154_match_defer_β:     mov              r11, 60
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_169_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_169_12
                                                                              jmp   rax
.LPAT$4_β_169_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n155_match_fence0_α:    mov              r11, 61;                             jmp   n148_match_alternate_s2
n155_match_fence0_β:    mov              r11, 61;                             jmp   n148_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n156_match_defer_α:     mov              r11, 62
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_172_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_172_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .LPAT$4_α_172_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .LPAT$4_α_172_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .LPAT$4_α_172_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_172_18
.LPAT$4_α_172_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_172_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_172_16:
.LPAT$4_α_172_18:       test             rax, rax;                            jz    .LPAT$4_α_172_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_172_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_172_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_172_4:                                                              jmp   n148_match_alternate_s1
.LPAT$4_α_172_5:                                                              jmp   n148_match_alternate_af
.LPAT$4_α_172_0:        push             r14
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
                        test             eax, eax;                            js    n148_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_172_6]
                        push             rcx
                        push             rax;                                 jmp   n148_match_alternate_s1
.LPAT$4_α_172_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n148_match_alternate_af
n156_match_defer_β:     mov              r11, 62
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_172_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_172_12
                                                                              jmp   rax
.LPAT$4_β_172_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:     mov              r11, 63
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$4_α_173_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$4_α_173_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$4_α_173_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$4_α_173_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$4_α_173_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$4_α_173_18
.LPAT$4_α_173_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$4_α_173_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$4_α_173_16:
.LPAT$4_α_173_18:       test             rax, rax;                            jz    .LPAT$4_α_173_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$4_α_173_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$4_α_173_4]
                        push             rcx;                                 jmp   rax
.LPAT$4_α_173_4:                                                              jmp   n148_match_alternate_s0
.LPAT$4_α_173_5:                                                              jmp   n148_match_alternate_af
.LPAT$4_α_173_0:        push             r14
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
                        test             eax, eax;                            js    n148_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$4_α_173_6]
                        push             rcx
                        push             rax;                                 jmp   n148_match_alternate_s0
.LPAT$4_α_173_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n148_match_alternate_af
n157_match_defer_β:     mov              r11, 63
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$4_β_173_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$4_β_173_12
                                                                              jmp   rax
.LPAT$4_β_173_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n148_match_alternate_β
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
n174_match_pos_α:       mov              r11, 64
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$5_ω
                                                                              jmp   n175_match_defer_α
n174_match_pos_β:       mov              r11, 64;                             jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:     sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .LPAT$5_α_178_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .LPAT$5_α_178_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .LPAT$5_α_178_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .LPAT$5_α_178_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .LPAT$5_α_178_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .LPAT$5_α_178_18
.LPAT$5_α_178_17:       mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .LPAT$5_α_178_16
                        mov              rax, qword ptr [rdx + 0]
.LPAT$5_α_178_16:
.LPAT$5_α_178_18:       test             rax, rax;                            jz    .LPAT$5_α_178_0
                        mov              r8d, 0
                        lea              rcx, [rip + .LPAT$5_α_178_5]
                        push             rcx
                        lea              rcx, [rip + .LPAT$5_α_178_4]
                        push             rcx;                                 jmp   rax
.LPAT$5_α_178_4:                                                              jmp   n176_match_rpos_α
.LPAT$5_α_178_5:        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_178_0:        push             r14
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
                        test             eax, eax;                            jns   .LPAT$5_α_178_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.LPAT$5_α_178_240:      mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .LPAT$5_α_178_6]
                        push             rcx
                        push             rax;                                 jmp   n176_match_rpos_α
.LPAT$5_α_178_6:        add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n175_match_defer_β:     mov              r11, 65
                        cmp              qword ptr [rsp + 0], 0;              jne   .LPAT$5_β_178_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .LPAT$5_β_178_12
                                                                              jmp   rax
.LPAT$5_β_178_12:                                                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n176_match_rpos_α:      mov              r11, 66
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n175_match_defer_β
                                                                              jmp   PAT$5_γ
n176_match_rpos_β:      mov              r11, 66;                             jmp   n175_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n176_match_rpos_β
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
n180_statement_begin_α: mov              r11, 67
                        mov              r10, 1;                              jmp   n181_lit_integer_α
n180_statement_begin_β: mov              r11, 67;                             jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_kw_assign_snobol4_α
.Lmain_α_358_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n182_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rip + .Lmain_α_359_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_359_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n180_statement_begin_β
.Lmain_α_359_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_statement_end_α
.Lmain_α_359_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:   mov              r11, 70
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n184_statement_begin_α
#=======================================================================================================================
#                 $' '           =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 71
                        mov              r10, 2;                              jmp   n185_lit_string_α
n184_statement_begin_β: mov              r11, 71;                             jmp   n204_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_call_α
.Lmain_α_364_0:         .quad            .Lmain_α_364_0_s
.Lmain_α_364_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:            sub              rsp, 16
                        mov              r11, 73
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd366:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd366]
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
                        cmp              al, 104;                             jne   .Lmain_α_365_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
.Lmain_α_365_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_lit_integer_α
n186_call_β:            mov              r11, 73
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_367_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_lit_string_α
n187_lit_integer_β:     mov              r11, 74
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n184_statement_begin_β
.Lmain_α_367_0:         .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_lit_integer_α
n188_lit_string_β:      mov              r11, 75
                        add              rsp, 16;                             jmp   n187_lit_integer_β
.Lmain_α_368_0:         .quad            .Lmain_α_368_0_s
.Lmain_α_368_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_call_α
n189_lit_integer_β:     mov              r11, 76
                        add              rsp, 16;                             jmp   n188_lit_string_β
.Lmain_α_369_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            sub              rsp, 16
                        mov              r11, 77
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd77:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd77]
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
                        cmp              al, 104;                             jne   .Lmain_α_370_240
                        add              rsp, 16;                             jmp   n189_lit_integer_β
.Lmain_α_370_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_binop_α
n190_call_β:            mov              r11, 77
                        add              rsp, 16;                             jmp   n189_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:           sub              rsp, 16
                        mov              r11, 78
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_lit_integer_α
n191_binop_β:           mov              r11, 78
                        add              rsp, 32;                             jmp   n189_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_call_α
n192_lit_integer_β:     mov              r11, 79
                        add              rsp, 16;                             jmp   n191_binop_β
.Lmain_α_372_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            sub              rsp, 16
                        mov              r11, 80
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd80:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd80]
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
                        cmp              al, 104;                             jne   .Lmain_α_373_240
                        add              rsp, 16;                             jmp   n192_lit_integer_β
.Lmain_α_373_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_binop_α
n193_call_β:            mov              r11, 80
                        add              rsp, 16;                             jmp   n192_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n194_binop_α:           sub              rsp, 16
                        mov              r11, 81
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_lit_integer_α
n194_binop_β:           mov              r11, 81
                        add              rsp, 32;                             jmp   n192_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_375_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_call_α
n195_lit_integer_β:     mov              r11, 82
                        add              rsp, 16;                             jmp   n194_binop_β
.Lmain_α_375_0:         .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            sub              rsp, 16
                        mov              r11, 83
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd83:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd83]
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
                        cmp              al, 104;                             jne   .Lmain_α_376_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lmain_α_376_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_binop_α
n196_call_β:            mov              r11, 83
                        add              rsp, 16;                             jmp   n195_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 84
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_call_α
n197_binop_β:           mov              r11, 84
                        add              rsp, 32;                             jmp   n195_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        mov              r11, 85
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
.Lbynamefnzd85:         .string          "SNO$PBK"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd85]
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
                        cmp              al, 104;                             jne   .Lmain_α_378_240
                        add              rsp, 16;                             jmp   n197_binop_β
.Lmain_α_378_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_lit_string_α
n198_call_β:            mov              r11, 85
                        add              rsp, 16;                             jmp   n197_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_call_α
n199_lit_string_β:      mov              r11, 86
                        add              rsp, 32;                             jmp   n197_binop_β
.Lmain_α_379_0:         .quad            .Lmain_α_379_0_s
.Lmain_α_379_0_s:       .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            sub              rsp, 16
                        mov              r11, 87
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
.Lbynamefnzd87:         .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd87]
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
                        cmp              al, 104;                             jne   .Lmain_α_380_240
                        add              rsp, 16;                             jmp   n199_lit_string_β
.Lmain_α_380_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_call_α
n200_call_β:            mov              r11, 87
                        add              rsp, 16;                             jmp   n199_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            sub              rsp, 16
                        mov              r11, 88
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd88:         .string          "SNO$PFEN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd88]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524351
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lmain_α_381_240
                        add              rsp, 32;                             jmp   n199_lit_string_β
.Lmain_α_381_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_assign_var_α
n201_call_β:            mov              r11, 88
                        add              rsp, 32;                             jmp   n199_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_var_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 256]           # call
                        mov              rsi, qword ptr [rsp + 264]
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
                        cmp              al, 104;                             jne   .Lmain_α_382_240
                        add              rsp, 48;                             jmp   n199_lit_string_β
.Lmain_α_382_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 90
                        mov              r10, 2
                        add              rsp, 288;                            jmp   n204_statement_begin_α
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 91
                        mov              r10, 3;                              jmp   n205_lit_string_α
n204_statement_begin_β: mov              r11, 91;                             jmp   n209_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_call_α
.Lmain_α_387_0:         .quad            .Lmain_α_387_0_s
.Lmain_α_387_0_s:       .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            sub              rsp, 16
                        mov              r11, 93
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd389:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd389]
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
                        cmp              al, 104;                             jne   .Lmain_α_388_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
.Lmain_α_388_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_assign_α
n206_call_β:            mov              r11, 93
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # jescape
                        mov              qword ptr [r9 + 8], rdx;             jmp   n208_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   mov              r11, 95
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n209_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_begin_α: mov              r11, 96
                        mov              r10, 4;                              jmp   n210_lit_string_α
n209_statement_begin_β: mov              r11, 96;                             jmp   n214_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n211_call_α
.Lmain_α_395_0:         .quad            .Lmain_α_395_0_s
.Lmain_α_395_0_s:       .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_α:            sub              rsp, 16
                        mov              r11, 98
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd397:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd397]
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
                        cmp              al, 104;                             jne   .Lmain_α_396_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n209_statement_begin_β
.Lmain_α_396_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_assign_α
n211_call_β:            mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n209_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jchunk
                        mov              qword ptr [r9 + 24], rdx;            jmp   n213_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   mov              r11, 100
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n214_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"' FENCE
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 101
                        mov              r10, 5;                              jmp   n215_var_α
n214_statement_begin_β: mov              r11, 101;                            jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 248], rdx;           jmp   n217_var_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 0]              # jescape
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_assign_α
n217_var_β:             mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n214_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 264], rdx;           jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_assign_α
n219_var_β:             mov              r11, 106
                        add              rsp, 16;                             jmp   n217_var_β
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 280], rdx;           jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_lit_string_α
n221_lit_string_β:      mov              r11, 108
                        add              rsp, 16;                             jmp   n219_var_β
.Lmain_α_409_0:         .quad            .Lmain_α_409_0_s
.Lmain_α_409_0_s:       .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_call_α
n222_lit_string_β:      mov              r11, 109
                        add              rsp, 16;                             jmp   n221_lit_string_β
.Lmain_α_410_0:         .quad            .Lmain_α_410_0_s
.Lmain_α_410_0_s:       .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        mov              r11, 110
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
.Lrkfnzd412:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd412]
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
                        cmp              al, 104;                             jne   .Lmain_α_411_240
                        add              rsp, 16;                             jmp   n222_lit_string_β
.Lmain_α_411_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_assign_α
n223_call_β:            mov              r11, 110
                        add              rsp, 16;                             jmp   n222_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jstring
                        mov              qword ptr [r9 + 40], rdx;            jmp   n225_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   mov              r11, 112
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n226_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α: mov              r11, 113
                        mov              r10, 6;                              jmp   n227_lit_string_α
n226_statement_begin_β: mov              r11, 113;                            jmp   n231_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_418_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_call_α
.Lmain_α_418_0:         .quad            .Lmain_α_418_0_s
.Lmain_α_418_0_s:       .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            sub              rsp, 16
                        mov              r11, 115
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd420:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd420]
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
                        cmp              al, 104;                             jne   .Lmain_α_419_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n226_statement_begin_β
.Lmain_α_419_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_assign_α
n228_call_β:            mov              r11, 115
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n226_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 116
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jnumber
                        mov              qword ptr [r9 + 56], rdx;            jmp   n230_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 117
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n231_statement_begin_α
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α: mov              r11, 118
                        mov              r10, 7;                              jmp   n232_lit_string_α
n231_statement_begin_β: mov              r11, 118;                            jmp   n248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_426_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n233_call_α
.Lmain_α_426_0:         .quad            .Lmain_α_426_0_s
.Lmain_α_426_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            sub              rsp, 16
                        mov              r11, 120
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd428:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd428]
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
                        cmp              al, 104;                             jne   .Lmain_α_427_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
.Lmain_α_427_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_deref_α
n233_call_β:            mov              r11, 120
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n234_deref_α:           sub              rsp, 16
                        mov              r11, 121
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
                        cmp              al, 104;                             jne   .Lmain_α_429_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n231_statement_begin_β
.Lmain_α_429_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_var_α
n234_deref_β:           mov              r11, 121
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n231_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_binop_α
n235_var_β:             mov              r11, 122
                        add              rsp, 16;                             jmp   n234_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 123
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_lit_string_α
n236_binop_β:           mov              r11, 123
                        add              rsp, 16;                             jmp   n235_var_β
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_432_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_call_α
n237_lit_string_β:      mov              r11, 124
                        add              rsp, 16;                             jmp   n236_binop_β
.Lmain_α_432_0:         .quad            .Lmain_α_432_0_s
.Lmain_α_432_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            sub              rsp, 16
                        mov              r11, 125
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd434:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd434]
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
                        cmp              al, 104;                             jne   .Lmain_α_433_240
                        add              rsp, 16;                             jmp   n237_lit_string_β
.Lmain_α_433_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_deref_α
n238_call_β:            mov              r11, 125
                        add              rsp, 16;                             jmp   n237_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n239_deref_α:           sub              rsp, 16
                        mov              r11, 126
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
                        cmp              al, 104;                             jne   .Lmain_α_435_240
                        add              rsp, 32;                             jmp   n237_lit_string_β
.Lmain_α_435_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_binop_α
n239_deref_β:           mov              r11, 126
                        add              rsp, 32;                             jmp   n237_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:           sub              rsp, 16
                        mov              r11, 127
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_lit_string_α
n240_binop_β:           mov              r11, 127
                        add              rsp, 16;                             jmp   n239_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_437_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_binop_α
n241_lit_string_β:      mov              r11, 128
                        add              rsp, 16;                             jmp   n240_binop_β
.Lmain_α_437_0:         .quad            .Lmain_α_437_0_s
.Lmain_α_437_0_s:       .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 129
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_lit_string_α
n242_binop_β:           mov              r11, 129
                        add              rsp, 16;                             jmp   n241_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_439_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_call_α
n243_lit_string_β:      mov              r11, 130
                        add              rsp, 16;                             jmp   n242_binop_β
.Lmain_α_439_0:         .quad            .Lmain_α_439_0_s
.Lmain_α_439_0_s:       .string          "EXPR$0"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            sub              rsp, 16
                        mov              r11, 131
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd441:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd441]
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
                        cmp              al, 104;                             jne   .Lmain_α_440_240
                        add              rsp, 16;                             jmp   n243_lit_string_β
.Lmain_α_440_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_binop_α
n244_call_β:            mov              r11, 131
                        add              rsp, 16;                             jmp   n243_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 132
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jmember
                        mov              qword ptr [r9 + 72], rdx;            jmp   n247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 134
                        mov              r10, 7
                        add              rsp, 224;                            jmp   n248_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 135
                        mov              r10, 8;                              jmp   n249_lit_string_α
n248_statement_begin_β: mov              r11, 135;                            jmp   n269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_448_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_var_α
.Lmain_α_448_0:         .quad            .Lmain_α_448_0_s
.Lmain_α_448_0_s:       .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 137
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_string_α
n250_var_β:             mov              r11, 137
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_call_α
n251_lit_string_β:      mov              r11, 138
                        add              rsp, 16;                             jmp   n250_var_β
.Lmain_α_450_0:         .quad            .Lmain_α_450_0_s
.Lmain_α_450_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            sub              rsp, 16
                        mov              r11, 139
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd452:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd452]
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
                        cmp              al, 104;                             jne   .Lmain_α_451_240
                        add              rsp, 16;                             jmp   n251_lit_string_β
.Lmain_α_451_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_deref_α
n252_call_β:            mov              r11, 139
                        add              rsp, 16;                             jmp   n251_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n253_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lmain_α_453_240
                        add              rsp, 32;                             jmp   n251_lit_string_β
.Lmain_α_453_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_lit_string_α
n253_deref_β:           mov              r11, 140
                        add              rsp, 32;                             jmp   n251_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_454_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_binop_α
n254_lit_string_β:      mov              r11, 141
                        add              rsp, 16;                             jmp   n253_deref_β
.Lmain_α_454_0:         .quad            .Lmain_α_454_0_s
.Lmain_α_454_0_s:       .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:           sub              rsp, 16
                        mov              r11, 142
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_var_α
n255_binop_β:           mov              r11, 142
                        add              rsp, 16;                             jmp   n254_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_binop_α
n256_var_β:             mov              r11, 143
                        add              rsp, 16;                             jmp   n255_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 144
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_call_α
n257_binop_β:           mov              r11, 144
                        add              rsp, 16;                             jmp   n256_var_β
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            sub              rsp, 16
                        mov              r11, 145
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd145:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd145]
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
                        cmp              al, 104;                             jne   .Lmain_α_458_240
                        add              rsp, 16;                             jmp   n257_binop_β
.Lmain_α_458_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_binop_α
n258_call_β:            mov              r11, 145
                        add              rsp, 16;                             jmp   n257_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 146
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_lit_string_α
n259_binop_β:           mov              r11, 146
                        add              rsp, 32;                             jmp   n257_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_call_α
n260_lit_string_β:      mov              r11, 147
                        add              rsp, 16;                             jmp   n259_binop_β
.Lmain_α_460_0:         .quad            .Lmain_α_460_0_s
.Lmain_α_460_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 148
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd462:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd462]
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
                        cmp              al, 104;                             jne   .Lmain_α_461_240
                        add              rsp, 16;                             jmp   n260_lit_string_β
.Lmain_α_461_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_deref_α
n261_call_β:            mov              r11, 148
                        add              rsp, 16;                             jmp   n260_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n262_deref_α:           sub              rsp, 16
                        mov              r11, 149
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
                        cmp              al, 104;                             jne   .Lmain_α_463_240
                        add              rsp, 32;                             jmp   n260_lit_string_β
.Lmain_α_463_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_call_α
n262_deref_β:           mov              r11, 149
                        add              rsp, 32;                             jmp   n260_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        mov              r11, 150
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
.Lbynamefnzd150:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd150]
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
                        cmp              al, 104;                             jne   .Lmain_α_464_240
                        add              rsp, 16;                             jmp   n262_deref_β
.Lmain_α_464_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_binop_α
n263_call_β:            mov              r11, 150
                        add              rsp, 16;                             jmp   n262_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n264_binop_α:           sub              rsp, 16
                        mov              r11, 151
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_lit_string_α
n264_binop_β:           mov              r11, 151
                        add              rsp, 32;                             jmp   n262_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_466_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_binop_α
n265_lit_string_β:      mov              r11, 152
                        add              rsp, 16;                             jmp   n264_binop_β
.Lmain_α_466_0:         .quad            .Lmain_α_466_0_s
.Lmain_α_466_0_s:       .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              r11, 153
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              r11, 154
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jobject
                        mov              qword ptr [r9 + 88], rdx;            jmp   n268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 155
                        mov              r10, 8
                        add              rsp, 288;                            jmp   n269_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α: mov              r11, 156
                        mov              r10, 9;                              jmp   n270_lit_string_α
n269_statement_begin_β: mov              r11, 156;                            jmp   n292_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_lit_string_α
.Lmain_α_473_0:         .quad            .Lmain_α_473_0_s
.Lmain_α_473_0_s:       .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n272_call_α
n271_lit_string_β:      mov              r11, 158
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n269_statement_begin_β
.Lmain_α_474_0:         .quad            .Lmain_α_474_0_s
.Lmain_α_474_0_s:       .string          "EXPR$1"
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            sub              rsp, 16
                        mov              r11, 159
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd476:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd476]
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
                        cmp              al, 104;                             jne   .Lmain_α_475_240
                        add              rsp, 16;                             jmp   n271_lit_string_β
.Lmain_α_475_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_lit_string_α
n272_call_β:            mov              r11, 159
                        add              rsp, 16;                             jmp   n271_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_477_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_call_α
n273_lit_string_β:      mov              r11, 160
                        add              rsp, 32;                             jmp   n271_lit_string_β
.Lmain_α_477_0:         .quad            .Lmain_α_477_0_s
.Lmain_α_477_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:            sub              rsp, 16
                        mov              r11, 161
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd479:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd479]
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
                        cmp              al, 104;                             jne   .Lmain_α_478_240
                        add              rsp, 16;                             jmp   n273_lit_string_β
.Lmain_α_478_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_deref_α
n274_call_β:            mov              r11, 161
                        add              rsp, 16;                             jmp   n273_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n275_deref_α:           sub              rsp, 16
                        mov              r11, 162
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
                        cmp              al, 104;                             jne   .Lmain_α_480_240
                        add              rsp, 32;                             jmp   n273_lit_string_β
.Lmain_α_480_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_lit_string_α
n275_deref_β:           mov              r11, 162
                        add              rsp, 32;                             jmp   n273_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      sub              rsp, 16
                        mov              r11, 163
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_481_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_binop_α
n276_lit_string_β:      mov              r11, 163
                        add              rsp, 16;                             jmp   n275_deref_β
.Lmain_α_481_0:         .quad            .Lmain_α_481_0_s
.Lmain_α_481_0_s:       .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n277_binop_α:           sub              rsp, 16
                        mov              r11, 164
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_lit_string_α
n277_binop_β:           mov              r11, 164
                        add              rsp, 16;                             jmp   n276_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_call_α
n278_lit_string_β:      mov              r11, 165
                        add              rsp, 16;                             jmp   n277_binop_β
.Lmain_α_483_0:         .quad            .Lmain_α_483_0_s
.Lmain_α_483_0_s:       .string          "EXPR$2"
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            sub              rsp, 16
                        mov              r11, 166
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd485:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd485]
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
                        cmp              al, 104;                             jne   .Lmain_α_484_240
                        add              rsp, 16;                             jmp   n278_lit_string_β
.Lmain_α_484_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_binop_α
n279_call_β:            mov              r11, 166
                        add              rsp, 16;                             jmp   n278_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n280_binop_α:           sub              rsp, 16
                        mov              r11, 167
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_call_α
n280_binop_β:           mov              r11, 167
                        add              rsp, 32;                             jmp   n278_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            sub              rsp, 16
                        mov              r11, 168
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd168:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd168]
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
                        cmp              al, 104;                             jne   .Lmain_α_487_240
                        add              rsp, 16;                             jmp   n280_binop_β
.Lmain_α_487_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_binop_α
n281_call_β:            mov              r11, 168
                        add              rsp, 16;                             jmp   n280_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n282_binop_α:           sub              rsp, 16
                        mov              r11, 169
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n283_lit_string_α
n282_binop_β:           mov              r11, 169
                        add              rsp, 32;                             jmp   n280_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_call_α
n283_lit_string_β:      mov              r11, 170
                        add              rsp, 16;                             jmp   n282_binop_β
.Lmain_α_489_0:         .quad            .Lmain_α_489_0_s
.Lmain_α_489_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            sub              rsp, 16
                        mov              r11, 171
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd491:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd491]
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
                        cmp              al, 104;                             jne   .Lmain_α_490_240
                        add              rsp, 16;                             jmp   n283_lit_string_β
.Lmain_α_490_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_deref_α
n284_call_β:            mov              r11, 171
                        add              rsp, 16;                             jmp   n283_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n285_deref_α:           sub              rsp, 16
                        mov              r11, 172
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
                        cmp              al, 104;                             jne   .Lmain_α_492_240
                        add              rsp, 32;                             jmp   n283_lit_string_β
.Lmain_α_492_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_call_α
n285_deref_β:           mov              r11, 172
                        add              rsp, 32;                             jmp   n283_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 173
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
.Lbynamefnzd173:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd173]
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
                        cmp              al, 104;                             jne   .Lmain_α_493_240
                        add              rsp, 16;                             jmp   n285_deref_β
.Lmain_α_493_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_binop_α
n286_call_β:            mov              r11, 173
                        add              rsp, 16;                             jmp   n285_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              r11, 174
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n288_lit_string_α
n287_binop_β:           mov              r11, 174
                        add              rsp, 32;                             jmp   n285_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_binop_α
n288_lit_string_β:      mov              r11, 175
                        add              rsp, 16;                             jmp   n287_binop_β
.Lmain_α_495_0:         .quad            .Lmain_α_495_0_s
.Lmain_α_495_0_s:       .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              r11, 176
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jarray
                        mov              qword ptr [r9 + 104], rdx;           jmp   n291_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:   mov              r11, 178
                        mov              r10, 9
                        add              rsp, 320;                            jmp   n292_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
n292_statement_begin_α: mov              r11, 179
                        mov              r10, 10;                             jmp   n293_var_α
n292_statement_begin_β: mov              r11, 179;                            jmp   n306_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 296], rdx;           jmp   n295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 48]             # jnumber
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n296_assign_α
n295_var_β:             mov              r11, 182
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n292_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              r11, 183
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 312], rdx;           jmp   n297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 80]             # jobject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_assign_α
n297_var_β:             mov              r11, 184
                        add              rsp, 16;                             jmp   n295_var_β
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 328], rdx;           jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 96]             # jarray
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_var_β:             mov              r11, 186
                        add              rsp, 16;                             jmp   n297_var_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 344], rdx;           jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_510_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_lit_string_α
n301_lit_string_β:      mov              r11, 188
                        add              rsp, 16;                             jmp   n299_var_β
.Lmain_α_510_0:         .quad            .Lmain_α_510_0_s
.Lmain_α_510_0_s:       .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n303_call_α
n302_lit_string_β:      mov              r11, 189
                        add              rsp, 16;                             jmp   n301_lit_string_β
.Lmain_α_511_0:         .quad            .Lmain_α_511_0_s
.Lmain_α_511_0_s:       .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            sub              rsp, 16
                        mov              r11, 190
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
.Lrkfnzd513:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd513]
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
                        cmp              al, 104;                             jne   .Lmain_α_512_240
                        add              rsp, 16;                             jmp   n302_lit_string_β
.Lmain_α_512_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_assign_α
n303_call_β:            mov              r11, 190
                        add              rsp, 16;                             jmp   n302_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jvalue
                        mov              qword ptr [r9 + 120], rdx;           jmp   n305_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 192
                        mov              r10, 10
                        add              rsp, 112;                            jmp   n306_statement_begin_α
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α: mov              r11, 193
                        mov              r10, 11;                             jmp   n307_lit_string_α
n306_statement_begin_β: mov              r11, 193;                            jmp   n319_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:      sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_519_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_call_α
.Lmain_α_519_0:         .quad            .Lmain_α_519_0_s
.Lmain_α_519_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            sub              rsp, 16
                        mov              r11, 195
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd521:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd521]
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
                        cmp              al, 104;                             jne   .Lmain_α_520_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
.Lmain_α_520_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_deref_α
n308_call_β:            mov              r11, 195
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n309_deref_α:           sub              rsp, 16
                        mov              r11, 196
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
                        cmp              al, 104;                             jne   .Lmain_α_522_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n306_statement_begin_β
.Lmain_α_522_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_lit_string_α
n309_deref_β:           mov              r11, 196
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n306_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      sub              rsp, 16
                        mov              r11, 197
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lmain_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_call_α
n310_lit_string_β:      mov              r11, 197
                        add              rsp, 16;                             jmp   n309_deref_β
.Lmain_α_523_0:         .quad            .Lmain_α_523_0_s
.Lmain_α_523_0_s:       .string          "EXPR$3"
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            sub              rsp, 16
                        mov              r11, 198
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd525:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd525]
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
                        cmp              al, 104;                             jne   .Lmain_α_524_240
                        add              rsp, 16;                             jmp   n310_lit_string_β
.Lmain_α_524_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_binop_α
n311_call_β:            mov              r11, 198
                        add              rsp, 16;                             jmp   n310_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n312_binop_α:           sub              rsp, 16
                        mov              r11, 199
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n313_lit_string_α
n312_binop_β:           mov              r11, 199
                        add              rsp, 32;                             jmp   n310_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_call_α
n313_lit_string_β:      mov              r11, 200
                        add              rsp, 16;                             jmp   n312_binop_β
.Lmain_α_527_0:         .quad            .Lmain_α_527_0_s
.Lmain_α_527_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            sub              rsp, 16
                        mov              r11, 201
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd529:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd529]
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
                        cmp              al, 104;                             jne   .Lmain_α_528_240
                        add              rsp, 16;                             jmp   n313_lit_string_β
.Lmain_α_528_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_deref_α
n314_call_β:            mov              r11, 201
                        add              rsp, 16;                             jmp   n313_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n315_deref_α:           sub              rsp, 16
                        mov              r11, 202
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
                        cmp              al, 104;                             jne   .Lmain_α_530_240
                        add              rsp, 32;                             jmp   n313_lit_string_β
.Lmain_α_530_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_binop_α
n315_deref_β:           mov              r11, 202
                        add              rsp, 32;                             jmp   n313_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              r11, 203
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n317_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jelement
                        mov              qword ptr [r9 + 136], rdx;           jmp   n318_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_end_α:   mov              r11, 205
                        mov              r10, 11
                        add              rsp, 160;                            jmp   n319_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_begin_α: mov              r11, 206
                        mov              r10, 12;                             jmp   n320_var_α
n319_statement_begin_β: mov              r11, 206;                            jmp   n327_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 360], rdx;           jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_539_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_lit_string_α
n322_lit_string_β:      mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n319_statement_begin_β
.Lmain_α_539_0:         .quad            .Lmain_α_539_0_s
.Lmain_α_539_0_s:       .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lmain_α_540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n324_call_α
n323_lit_string_β:      mov              r11, 210
                        add              rsp, 16;                             jmp   n322_lit_string_β
.Lmain_α_540_0:         .quad            .Lmain_α_540_0_s
.Lmain_α_540_0_s:       .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            sub              rsp, 16
                        mov              r11, 211
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
.Lrkfnzd542:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd542]
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
                        cmp              al, 104;                             jne   .Lmain_α_541_240
                        add              rsp, 16;                             jmp   n323_lit_string_β
.Lmain_α_541_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_assign_α
n324_call_β:            mov              r11, 211
                        add              rsp, 16;                             jmp   n323_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 212
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # json
                        mov              qword ptr [r9 + 152], rdx;           jmp   n326_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_end_α:   mov              r11, 213
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n327_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n327_statement_begin_α: mov              r11, 214
                        mov              r10, 13;                             jmp   n328_lit_name_α
n327_statement_begin_β: mov              r11, 214;                            jmp   n333_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_name_α:        sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lmain_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_lit_integer_α
.Lmain_α_548_0:         .quad            .Lmain_α_548_0_s
.Lmain_α_548_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:     sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_549_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n330_lit_string_α
n329_lit_integer_β:     mov              r11, 216
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n327_statement_begin_β
.Lmain_α_549_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lmain_α_550_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n331_call_α
n330_lit_string_β:      mov              r11, 217
                        add              rsp, 16;                             jmp   n329_lit_integer_β
.Lmain_α_550_0:         .quad            .Lmain_α_550_0_s
.Lmain_α_550_0_s:       .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            sub              rsp, 16
                        mov              r11, 218
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
.Lbynamefnzd218:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd218]
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
                        cmp              al, 104;                             jne   .Lmain_α_551_240
                        add              rsp, 16;                             jmp   n330_lit_string_β
.Lmain_α_551_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n332_statement_end_α
n331_call_β:            mov              r11, 218
                        add              rsp, 16;                             jmp   n330_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_end_α:   mov              r11, 219
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n333_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_begin_α: mov              r11, 220
                        mov              r10, 14;                             jmp   n334_var_α
n333_statement_begin_β: mov              r11, 220;                            jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rdi, qword ptr [rip + .Lmain_α_556_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lmain_α_556_240
                        add              rsp, 16;                             jmp   n333_statement_begin_β
.Lmain_α_556_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n335_assign_α
.Lmain_α_556_0:         .quad            .Lmain_α_556_0_s
.Lmain_α_556_0_s:       .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n335_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # src
                        mov              qword ptr [r9 + 168], rdx;           jmp   n336_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n336_statement_end_α:   mov              r11, 223
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n337_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_begin_α: mov              r11, 224
                        mov              r10, 15;                             jmp   n338_var_α
n337_statement_begin_β: mov              r11, 224;                            jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 144]            # json
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_assign_α
n339_var_β:             mov              r11, 226
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n352_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 227
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_564_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_match_begin_α
n340_assign_β:          mov              r11, 227;                            jmp   n339_var_β
.Lmain_α_564_0:         .quad            .Lmain_α_564_0_s
.Lmain_α_564_0_s:       .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n341_match_begin_α:     mov              r11, 228
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
.Lmain_α_566_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_566_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n342_match_defer_α
n341_match_begin_β:     mov              r11, 228
.Lmain_α_566_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_566_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_566_1
                                                                              jmp   .Lmain_α_566_0
.Lmain_β_566_1:
n341_match_begin_af:    mov              r11, 228
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
                        pop              rbp;                                 jmp   n340_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n342_match_defer_α:     mov              r11, 229
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S8]
                        cmp              rax, rdx;                            jne   .Lmain_α_567_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_567_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_567_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_567_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_567_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_567_0
.Lmain_α_567_31:        mov              edx, -1;                             jmp   .Lmain_α_567_0
.Lmain_α_567_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S8]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_567_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_567_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_567_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_567_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_567_23
.Lmain_α_567_22:        push             r14
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
.Lmain_α_567_23:        test             rax, rax;                            jz    .Lmain_α_567_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_567_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_567_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_567_4:                                                               jmp   n343_match_end_α
.Lmain_α_567_5:                                                               jmp   n341_match_begin_β
.Lmain_α_567_0:         mov              eax, edx
                        test             eax, eax;                            js    n341_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_567_6]
                        push             rcx
                        push             rax;                                 jmp   n343_match_end_α
.Lmain_α_567_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n341_match_begin_β
n342_match_defer_β:     mov              r11, 229
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_567_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_567_12
                                                                              jmp   rax
.Lmain_β_567_12:                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n343_match_end_α:       mov              r11, 230
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
                        test             rax, rax;                            je    .Lmain_α_569_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n341_match_begin_af
.Lmain_α_569_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n344_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:   mov              r11, 231
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n345_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α: mov              r11, 232
                        mov              r10, 16;                             jmp   n346_lit_string_α
n345_statement_begin_β: mov              r11, 232;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lmain_α_574_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_var_α
.Lmain_α_574_0:         .quad            .Lmain_α_574_0_s
.Lmain_α_574_0_s:       .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n348_call_α
n347_var_β:             mov              r11, 234
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n345_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            sub              rsp, 16
                        mov              r11, 235
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd577:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd577]
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
                        cmp              al, 104;                             jne   .Lmain_α_576_240
                        add              rsp, 16;                             jmp   n347_var_β
.Lmain_α_576_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_binop_α
n348_call_β:            mov              r11, 235
                        add              rsp, 16;                             jmp   n347_var_β
#-----------------------------------------------------------------------------------------------------------------------
n349_binop_α:           sub              rsp, 16
                        mov              r11, 236
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n350_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              r11, 237
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_579_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n351_statement_end_α
.Lmain_α_579_0:         .quad            .Lmain_α_579_0_s
.Lmain_α_579_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_end_α:   mov              r11, 238
                        mov              r10, 16
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n352_statement_begin_α: mov              r11, 239
                        mov              r10, 17;                             jmp   n353_lit_string_α
n352_statement_begin_β: mov              r11, 239;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      sub              rsp, 16
                        mov              r11, 240
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lmain_α_584_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n354_assign_α
.Lmain_α_584_0:         .quad            .Lmain_α_584_0_s
.Lmain_α_584_0_s:       .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n354_assign_α:          mov              r11, 241
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_585_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n355_statement_end_α
.Lmain_α_585_0:         .quad            .Lmain_α_585_0_s
.Lmain_α_585_0_s:       .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n355_statement_end_α:   mov              r11, 242
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
                        .long            208
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
                        .long            352
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
                        .long            176
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
