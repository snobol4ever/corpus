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
                        lea              rax, [rip + .Lx40_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n36_match_any_α
.Lx40_21:               lea              rax, [rip + .Lx40_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n31_match_lit_α
n29_match_alternate_s0: mov              r11, 14
                        lea              rax, [rip + .Lx40_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n29_match_alternate_as
n29_match_alternate_s1: mov              r11, 14
                        lea              rax, [rip + .Lx40_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n29_match_alternate_as
.Lx40_40:                                                                     jmp   n36_match_any_β
.Lx40_41:                                                                     jmp   n30_goto_β
n29_match_alternate_as: mov              r11, 14;                             jmp   PAT$0_γ
n29_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n29_match_alternate_af: mov              r11, 14
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx40_19:                                                                     jmp   n28_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n30_goto_α:             mov              r11, 15;                             jmp   n29_match_alternate_af
n30_goto_β:             mov              r11, 15;                             jmp   n29_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:        mov              r11, 16
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n29_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117;                            jne   n29_match_alternate_af
                        add              r14d, 1;                             jmp   n32_match_any_α
n31_match_lit_β:        mov              r11, 16
                        sub              r14d, 1;                             jmp   n29_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_any_α:        mov              r11, 17
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n31_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n31_match_lit_β
                        add              r14d, 1;                             jmp   n33_match_any_α
n32_match_any_β:        mov              r11, 17
                        sub              r14d, 1;                             jmp   n31_match_lit_β
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
                        add              r14d, 1;                             jmp   n35_match_any_α
n34_match_any_β:        mov              r11, 19
                        sub              r14d, 1;                             jmp   n33_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 20
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n34_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n34_match_any_β
                        add              r14d, 1;                             jmp   n29_match_alternate_s1
n35_match_any_β:        mov              r11, 20
                        sub              r14d, 1;                             jmp   n34_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_any_α:        mov              r11, 21
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n29_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0;               je    n29_match_alternate_af
                        add              r14d, 1;                             jmp   n29_match_alternate_s0
n36_match_any_β:        mov              r11, 21
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
n54_match_break_α:      sub              rsp, 16
                        mov              r11, 22
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx56_0:                cmp              ecx, r15d;                           jl    .Lx56_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lx56_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lx56_1
                        add              ecx, 1;                              jmp   .Lx56_0
.Lx56_1:                mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n54_match_break_β:      mov              r11, 22
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n54_match_break_β
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
n57_match_lit_α:        mov              r11, 23
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$2_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   PAT$2_ω
                        add              r14d, 1;                             jmp   n58_match_defer_α
n57_match_lit_β:        mov              r11, 23
                        sub              r14d, 1;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_match_defer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx66_16
                        mov              rax, qword ptr [rdx + 0]
.Lx66_16:               test             rax, rax;                            jz    .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_5]
                        push             rcx
                        lea              rcx, [rip + .Lx66_4]
                        push             rcx;                                 jmp   rax
.Lx66_4:                                                                      jmp   n59_match_arbno_α
.Lx66_5:                add              rsp, 16;                             jmp   n57_match_lit_β
.Lx66_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx66_240
                        add              rsp, 16;                             jmp   n57_match_lit_β
.Lx66_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        push             rcx
                        push             rax;                                 jmp   n59_match_arbno_α
.Lx66_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n57_match_lit_β
n58_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx66_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx66_12
                                                                              jmp   rax
.Lx66_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n59_match_arbno_α:      mov              r11, 25
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d;         jmp   n60_match_lit_α
n59_match_arbno_β:      mov              r11, 25;                             jmp   n62_match_defer_α
n59_match_arbno_as:     mov              r11, 25
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n62_match_defer_β
                        mov              dword ptr [rbp + -44], r14d;         jmp   n60_match_lit_α
n59_match_arbno_af:     mov              r11, 25
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n58_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_lit_α:        mov              r11, 26
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n59_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 34;                             jne   n59_match_arbno_β
                        add              r14d, 1;                             jmp   n61_match_fence0_α
n60_match_lit_β:        mov              r11, 26
                        sub              r14d, 1;                             jmp   n59_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_fence0_α:     mov              r11, 27;                             jmp   PAT$2_γ
n61_match_fence0_β:     mov              r11, 27;                             jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_match_defer_α:      mov              r11, 28
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
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
.Lx73_4:                                                                      jmp   n63_match_defer_α
.Lx73_5:                                                                      jmp   n59_match_arbno_af
.Lx73_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S1]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n59_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx73_6]
                        push             rcx
                        push             rax;                                 jmp   n63_match_defer_α
.Lx73_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_arbno_af
n62_match_defer_β:      mov              r11, 28
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx73_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx73_12
                                                                              jmp   rax
.Lx73_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      mov              r11, 29
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S2]
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
.Lx74_4:                                                                      jmp   n59_match_arbno_as
.Lx74_5:                                                                      jmp   n62_match_defer_β
.Lx74_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n62_match_defer_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx74_6]
                        push             rcx
                        push             rax;                                 jmp   n59_match_arbno_as
.Lx74_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_defer_β
n63_match_defer_β:      mov              r11, 29
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx74_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx74_12
                                                                              jmp   rax
.Lx74_12:                                                                     jmp   qword ptr [rsp]
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
                        sub              rsp, 216
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n75_match_fence1_α:     mov              r11, 30
                        mov              qword ptr [rbp + -208], rsp
                        sub              rsp, 0;                              jmp   n98_match_alternate_α
n75_match_fence1_as:    mov              r11, 30
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -208];         jmp   n76_match_alternate_α
n75_match_fence1_af:    mov              r11, 30
                        add              rsp, 0
n75_match_fence1_β:     mov              r11, 30
                        mov              rsp, qword ptr [rbp + -208];         jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_match_alternate_α:  mov              r11, 31
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx104_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n97_match_lit_α
.Lx104_21:              lea              rax, [rip + .Lx104_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n92_match_any_α
n76_match_alternate_s0: mov              r11, 31
                        lea              rax, [rip + .Lx104_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_match_alternate_as
n76_match_alternate_s1: mov              r11, 31
                        lea              rax, [rip + .Lx104_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_match_alternate_as
.Lx104_40:                                                                    jmp   n97_match_lit_β
.Lx104_41:                                                                    jmp   n93_match_fence1_β
n76_match_alternate_as: mov              r11, 31;                             jmp   n77_match_fence1_α
n76_match_alternate_β:  mov              r11, 31
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n76_match_alternate_af: mov              r11, 31
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx104_19:              add              rsp, 32;                             jmp   n75_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n77_match_fence1_α:     mov              r11, 32
                        mov              qword ptr [rbp + -112], rsp
                        sub              rsp, 0;                              jmp   n87_match_alternate_α
n77_match_fence1_as:    mov              r11, 32
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -112];         jmp   n78_match_fence1_α
n77_match_fence1_af:    mov              r11, 32
                        add              rsp, 0
n77_match_fence1_β:     mov              r11, 32
                        mov              rsp, qword ptr [rbp + -112];         jmp   n76_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n78_match_fence1_α:     mov              r11, 33
                        mov              qword ptr [rbp + -48], rsp
                        sub              rsp, 0;                              jmp   n79_match_alternate_α
n78_match_fence1_as:    mov              r11, 33
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$3_γ
n78_match_fence1_af:    mov              r11, 33
                        add              rsp, 0
n78_match_fence1_β:     mov              r11, 33
                        mov              rsp, qword ptr [rbp + -48];          jmp   n77_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n79_match_alternate_α:  mov              r11, 34
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx110_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n81_match_any_α
.Lx110_21:              lea              rax, [rip + .Lx110_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n80_match_lit_α
n79_match_alternate_s0: mov              r11, 34
                        lea              rax, [rip + .Lx110_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_match_alternate_as
n79_match_alternate_s1: mov              r11, 34
                        lea              rax, [rip + .Lx110_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_match_alternate_as
.Lx110_40:                                                                    jmp   n83_match_span_β
.Lx110_41:                                                                    jmp   n80_match_lit_β
n79_match_alternate_as: mov              r11, 34;                             jmp   n78_match_fence1_as
n79_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n79_match_alternate_af: mov              r11, 34
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx110_19:              add              rsp, 32;                             jmp   n78_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n80_match_lit_α:        mov              r11, 35;                             jmp   n79_match_alternate_s1
n80_match_lit_β:        mov              r11, 35;                             jmp   n79_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n81_match_any_α:        mov              r11, 36
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n79_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .Lx114_0
                        cmp              esi, 69;                             je    .Lx114_0
                                                                              jmp   n79_match_alternate_af
.Lx114_0:               add              r14d, 1;                             jmp   n82_match_fence1_α
n81_match_any_β:        mov              r11, 36
                        sub              r14d, 1;                             jmp   n79_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n82_match_fence1_α:     mov              r11, 37
                        mov              qword ptr [rbp + -96], rsp
                        sub              rsp, 0;                              jmp   n84_match_alternate_α
n82_match_fence1_as:    mov              r11, 37
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -96];          jmp   n83_match_span_α
n82_match_fence1_af:    mov              r11, 37
                        add              rsp, 0
n82_match_fence1_β:     mov              r11, 37
                        mov              rsp, qword ptr [rbp + -96];          jmp   n81_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n83_match_span_α:       sub              rsp, 16
                        mov              r11, 38
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx118_0:               cmp              ecx, r15d;                           jge   .Lx118_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx118_1
                        add              ecx, 1;                              jmp   .Lx118_0
.Lx118_1:               cmp              ecx, r14d;                           jg    .Lx118_240
                        add              rsp, 16;                             jmp   n82_match_fence1_β
.Lx118_240:             mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n79_match_alternate_s0
n83_match_span_β:       mov              r11, 38
                        mov              r14d, dword ptr [rbp + -76]
                        add              rsp, 16;                             jmp   n82_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n84_match_alternate_α:  mov              r11, 39
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx120_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n86_match_any_α
.Lx120_21:              lea              rax, [rip + .Lx120_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n85_match_lit_α
n84_match_alternate_s0: mov              r11, 39
                        lea              rax, [rip + .Lx120_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_match_alternate_as
n84_match_alternate_s1: mov              r11, 39
                        lea              rax, [rip + .Lx120_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_match_alternate_as
.Lx120_40:                                                                    jmp   n86_match_any_β
.Lx120_41:                                                                    jmp   n85_match_lit_β
n84_match_alternate_as: mov              r11, 39;                             jmp   n82_match_fence1_as
n84_match_alternate_β:  mov              r11, 39
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n84_match_alternate_af: mov              r11, 39
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx120_19:              add              rsp, 32;                             jmp   n82_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n85_match_lit_α:        mov              r11, 40;                             jmp   n84_match_alternate_s1
n85_match_lit_β:        mov              r11, 40;                             jmp   n84_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n86_match_any_α:        mov              r11, 41
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n84_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lx124_0
                        cmp              esi, 45;                             je    .Lx124_0
                                                                              jmp   n84_match_alternate_af
.Lx124_0:               add              r14d, 1;                             jmp   n84_match_alternate_s0
n86_match_any_β:        mov              r11, 41
                        sub              r14d, 1;                             jmp   n84_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n87_match_alternate_α:  mov              r11, 42
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx126_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n90_match_lit_α
.Lx126_21:              lea              rax, [rip + .Lx126_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n88_match_lit_α
n87_match_alternate_s0: mov              r11, 42
                        lea              rax, [rip + .Lx126_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_match_alternate_as
n87_match_alternate_s1: mov              r11, 42
                        lea              rax, [rip + .Lx126_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_match_alternate_as
.Lx126_40:                                                                    jmp   n89_goto_β
.Lx126_41:                                                                    jmp   n88_match_lit_β
n87_match_alternate_as: mov              r11, 42;                             jmp   n77_match_fence1_as
n87_match_alternate_β:  mov              r11, 42
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n87_match_alternate_af: mov              r11, 42
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx126_19:              add              rsp, 32;                             jmp   n77_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 43;                             jmp   n87_match_alternate_s1
n88_match_lit_β:        mov              r11, 43;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n89_goto_α:             mov              r11, 44;                             jmp   n87_match_alternate_af
n89_goto_β:             mov              r11, 44;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n90_match_lit_α:        mov              r11, 45
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n87_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   n87_match_alternate_af
                        add              r14d, 1;                             jmp   n91_match_span_α
n90_match_lit_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   n87_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n91_match_span_α:       mov              r11, 46
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx133_0:               cmp              ecx, r15d;                           jge   .Lx133_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx133_1
                        add              ecx, 1;                              jmp   .Lx133_0
.Lx133_1:               cmp              ecx, r14d;                           jle   n90_match_lit_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   n87_match_alternate_s0
n91_match_span_β:       mov              r11, 46
                        mov              r14d, dword ptr [rbp + -140];        jmp   n90_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_any_α:        mov              r11, 47
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n76_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    n76_match_alternate_af
                        add              r14d, 1;                             jmp   n93_match_fence1_α
n92_match_any_β:        mov              r11, 47
                        sub              r14d, 1;                             jmp   n76_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n93_match_fence1_α:     mov              r11, 48
                        mov              qword ptr [rbp + -160], rsp
                        sub              rsp, 0;                              jmp   n94_match_alternate_α
n93_match_fence1_as:    mov              r11, 48
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -160];         jmp   n76_match_alternate_s1
n93_match_fence1_af:    mov              r11, 48
                        add              rsp, 0
n93_match_fence1_β:     mov              r11, 48
                        mov              rsp, qword ptr [rbp + -160];         jmp   n92_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n94_match_alternate_α:  mov              r11, 49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx139_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n96_match_span_α
.Lx139_21:              lea              rax, [rip + .Lx139_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n95_match_lit_α
n94_match_alternate_s0: mov              r11, 49
                        lea              rax, [rip + .Lx139_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_match_alternate_as
n94_match_alternate_s1: mov              r11, 49
                        lea              rax, [rip + .Lx139_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_match_alternate_as
.Lx139_40:                                                                    jmp   n96_match_span_β
.Lx139_41:                                                                    jmp   n95_match_lit_β
n94_match_alternate_as: mov              r11, 49;                             jmp   n93_match_fence1_as
n94_match_alternate_β:  mov              r11, 49
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n94_match_alternate_af: mov              r11, 49
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx139_19:              add              rsp, 32;                             jmp   n93_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n95_match_lit_α:        mov              r11, 50;                             jmp   n94_match_alternate_s1
n95_match_lit_β:        mov              r11, 50;                             jmp   n94_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n96_match_span_α:       mov              r11, 51
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lx143_0:               cmp              ecx, r15d;                           jge   .Lx143_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx143_1
                        add              ecx, 1;                              jmp   .Lx143_0
.Lx143_1:               cmp              ecx, r14d;                           jle   n94_match_alternate_af
                        mov              dword ptr [rbp + -188], r14d
                        mov              r14d, ecx;                           jmp   n94_match_alternate_s0
n96_match_span_β:       mov              r11, 51
                        mov              r14d, dword ptr [rbp + -188];        jmp   n94_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:        mov              r11, 52
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n76_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   n76_match_alternate_af
                        add              r14d, 1;                             jmp   n76_match_alternate_s0
n97_match_lit_β:        mov              r11, 52
                        sub              r14d, 1;                             jmp   n76_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n98_match_alternate_α:  mov              r11, 53
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx147_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n100_match_lit_α
.Lx147_21:              lea              rax, [rip + .Lx147_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n99_match_lit_α
n98_match_alternate_s0: mov              r11, 53
                        lea              rax, [rip + .Lx147_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_match_alternate_as
n98_match_alternate_s1: mov              r11, 53
                        lea              rax, [rip + .Lx147_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_match_alternate_as
.Lx147_40:                                                                    jmp   n100_match_lit_β
.Lx147_41:                                                                    jmp   n99_match_lit_β
n98_match_alternate_as: mov              r11, 53;                             jmp   n75_match_fence1_as
n98_match_alternate_β:  mov              r11, 53
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n98_match_alternate_af: mov              r11, 53
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx147_19:              add              rsp, 32;                             jmp   n75_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n99_match_lit_α:        mov              r11, 54;                             jmp   n98_match_alternate_s1
n99_match_lit_β:        mov              r11, 54;                             jmp   n98_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n100_match_lit_α:       mov              r11, 55
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n98_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n98_match_alternate_af
                        add              r14d, 1;                             jmp   n98_match_alternate_s0
n100_match_lit_β:       mov              r11, 55
                        sub              r14d, 1;                             jmp   n98_match_alternate_af
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n152_match_alternate_α: mov              r11, 56
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx163_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n161_match_defer_α
.Lx163_21:              lea              rax, [rip + .Lx163_22]
                        mov              qword ptr [rsp + 16], rax;           jmp   n160_match_defer_α
.Lx163_22:              lea              rax, [rip + .Lx163_23]
                        mov              qword ptr [rsp + 16], rax;           jmp   n158_match_defer_α
.Lx163_23:              lea              rax, [rip + .Lx163_24]
                        mov              qword ptr [rsp + 16], rax;           jmp   n156_match_defer_α
.Lx163_24:              lea              rax, [rip + .Lx163_25]
                        mov              qword ptr [rsp + 16], rax;           jmp   n155_match_lit_α
.Lx163_25:              lea              rax, [rip + .Lx163_26]
                        mov              qword ptr [rsp + 16], rax;           jmp   n154_match_lit_α
.Lx163_26:              lea              rax, [rip + .Lx163_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n153_match_lit_α
n152_match_alternate_s0:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s1:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s2:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_42]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s3:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_43]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s4:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_44]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s5:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_45]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
n152_match_alternate_s6:
                        mov              r11, 56
                        lea              rax, [rip + .Lx163_46]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_match_alternate_as
.Lx163_40:                                                                    jmp   n161_match_defer_β
.Lx163_41:                                                                    jmp   n160_match_defer_β
.Lx163_42:                                                                    jmp   n159_match_fence0_β
.Lx163_43:                                                                    jmp   n157_match_fence0_β
.Lx163_44:                                                                    jmp   n155_match_lit_β
.Lx163_45:                                                                    jmp   n154_match_lit_β
.Lx163_46:                                                                    jmp   n153_match_lit_β
n152_match_alternate_as:
                        mov              r11, 56;                             jmp   PAT$4_γ
n152_match_alternate_β: mov              r11, 56
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n152_match_alternate_af:
                        mov              r11, 56
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx163_19:              add              rsp, 32;                             jmp   PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_match_lit_α:       mov              r11, 57
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n152_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   n152_match_alternate_af
                        add              r14d, 4;                             jmp   n152_match_alternate_s6
n153_match_lit_β:       mov              r11, 57
                        sub              r14d, 4;                             jmp   n152_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n154_match_lit_α:       mov              r11, 58
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n152_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   n152_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   n152_match_alternate_af
                        add              r14d, 5;                             jmp   n152_match_alternate_s5
n154_match_lit_β:       mov              r11, 58
                        sub              r14d, 5;                             jmp   n152_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n155_match_lit_α:       mov              r11, 59
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    n152_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   n152_match_alternate_af
                        add              r14d, 4;                             jmp   n152_match_alternate_s4
n155_match_lit_β:       mov              r11, 59
                        sub              r14d, 4;                             jmp   n152_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n156_match_defer_α:     mov              r11, 60
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S3]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx170_16
                        mov              rax, qword ptr [rdx + 0]
.Lx170_16:              test             rax, rax;                            jz    .Lx170_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx170_5]
                        push             rcx
                        lea              rcx, [rip + .Lx170_4]
                        push             rcx;                                 jmp   rax
.Lx170_4:                                                                     jmp   n157_match_fence0_α
.Lx170_5:                                                                     jmp   n152_match_alternate_af
.Lx170_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 3
                        lea              rdx, [rip + .S3]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n152_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx170_6]
                        push             rcx
                        push             rax;                                 jmp   n157_match_fence0_α
.Lx170_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_alternate_af
n156_match_defer_β:     mov              r11, 60
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx170_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx170_12
                                                                              jmp   rax
.Lx170_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n157_match_fence0_α:    mov              r11, 61;                             jmp   n152_match_alternate_s3
n157_match_fence0_β:    mov              r11, 61;                             jmp   n152_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n158_match_defer_α:     mov              r11, 62
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
                        lea              rdx, [rip + .S4]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx173_16
                        mov              rax, qword ptr [rdx + 0]
.Lx173_16:              test             rax, rax;                            jz    .Lx173_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx173_5]
                        push             rcx
                        lea              rcx, [rip + .Lx173_4]
                        push             rcx;                                 jmp   rax
.Lx173_4:                                                                     jmp   n159_match_fence0_α
.Lx173_5:                                                                     jmp   n152_match_alternate_af
.Lx173_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 2
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
                        test             eax, eax;                            js    n152_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx173_6]
                        push             rcx
                        push             rax;                                 jmp   n159_match_fence0_α
.Lx173_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_alternate_af
n158_match_defer_β:     mov              r11, 62
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx173_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx173_12
                                                                              jmp   rax
.Lx173_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n159_match_fence0_α:    mov              r11, 63;                             jmp   n152_match_alternate_s2
n159_match_fence0_β:    mov              r11, 63;                             jmp   n152_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n160_match_defer_α:     mov              r11, 64
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S5]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx176_16
                        mov              rax, qword ptr [rdx + 0]
.Lx176_16:              test             rax, rax;                            jz    .Lx176_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx176_5]
                        push             rcx
                        lea              rcx, [rip + .Lx176_4]
                        push             rcx;                                 jmp   rax
.Lx176_4:                                                                     jmp   n152_match_alternate_s1
.Lx176_5:                                                                     jmp   n152_match_alternate_af
.Lx176_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
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
                        test             eax, eax;                            js    n152_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx176_6]
                        push             rcx
                        push             rax;                                 jmp   n152_match_alternate_s1
.Lx176_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_alternate_af
n160_match_defer_β:     mov              r11, 64
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx176_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx176_12
                                                                              jmp   rax
.Lx176_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n161_match_defer_α:     mov              r11, 65
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S6]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx177_16
                        mov              rax, qword ptr [rdx + 0]
.Lx177_16:              test             rax, rax;                            jz    .Lx177_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx177_5]
                        push             rcx
                        lea              rcx, [rip + .Lx177_4]
                        push             rcx;                                 jmp   rax
.Lx177_4:                                                                     jmp   n152_match_alternate_s0
.Lx177_5:                                                                     jmp   n152_match_alternate_af
.Lx177_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            js    n152_match_alternate_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx177_6]
                        push             rcx
                        push             rax;                                 jmp   n152_match_alternate_s0
.Lx177_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n152_match_alternate_af
n161_match_defer_β:     mov              r11, 65
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx177_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx177_12
                                                                              jmp   rax
.Lx177_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$4_β:
                                                                              jmp   n152_match_alternate_β
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
n178_match_pos_α:       mov              r11, 66
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$5_ω
                                                                              jmp   n179_match_defer_α
n178_match_pos_β:       mov              r11, 66;                             jmp   PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_match_defer_α:     sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S7]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx182_16
                        mov              rax, qword ptr [rdx + 0]
.Lx182_16:              test             rax, rax;                            jz    .Lx182_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx182_5]
                        push             rcx
                        lea              rcx, [rip + .Lx182_4]
                        push             rcx;                                 jmp   rax
.Lx182_4:                                                                     jmp   n180_match_rpos_α
.Lx182_5:               add              rsp, 16;                             jmp   PAT$5_ω
.Lx182_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
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
                        test             eax, eax;                            jns   .Lx182_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lx182_240:             mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx182_6]
                        push             rcx
                        push             rax;                                 jmp   n180_match_rpos_α
.Lx182_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n179_match_defer_β:     mov              r11, 67
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx182_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx182_12
                                                                              jmp   rax
.Lx182_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n180_match_rpos_α:      mov              r11, 68
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n179_match_defer_β
                                                                              jmp   PAT$5_γ
n180_match_rpos_β:      mov              r11, 68;                             jmp   n179_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$5_β:
                                                                              jmp   n180_match_rpos_β
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
n184_statement_begin_α: mov              r11, 69
                        mov              r10, 1;                              jmp   n185_lit_integer_α
n184_statement_begin_β: mov              r11, 69;                             jmp   n188_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n186_keyword_assign_snobol4_α
.Lx363_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n186_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 71
                        mov              rdi, qword ptr [rip + .Lx364_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx364_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
.Lx364_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_statement_end_α
.Lx364_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 72
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n188_statement_begin_α
#=======================================================================================================================
#                 $' '           =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 73
                        mov              r10, 2;                              jmp   n189_lit_string_α
n188_statement_begin_β: mov              r11, 73;                             jmp   n208_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_call_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            sub              rsp, 16
                        mov              r11, 75
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd371:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd371]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx370_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Lx370_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_lit_integer_α
n190_call_β:            mov              r11, 75
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_lit_string_α
n191_lit_integer_β:     mov              r11, 76
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n188_statement_begin_β
.Lx372_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_lit_integer_α
n192_lit_string_β:      mov              r11, 77
                        add              rsp, 16;                             jmp   n191_lit_integer_β
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_call_α
n193_lit_integer_β:     mov              r11, 78
                        add              rsp, 16;                             jmp   n192_lit_string_β
.Lx374_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            sub              rsp, 16
                        mov              r11, 79
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd79:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd79]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx375_240
                        add              rsp, 16;                             jmp   n193_lit_integer_β
.Lx375_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_binop_α
n194_call_β:            mov              r11, 79
                        add              rsp, 16;                             jmp   n193_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n195_binop_α:           sub              rsp, 16
                        mov              r11, 80
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n196_lit_integer_α
n195_binop_β:           mov              r11, 80
                        add              rsp, 32;                             jmp   n193_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_call_α
n196_lit_integer_β:     mov              r11, 81
                        add              rsp, 16;                             jmp   n195_binop_β
.Lx377_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            sub              rsp, 16
                        mov              r11, 82
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd82:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd82]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx378_240
                        add              rsp, 16;                             jmp   n196_lit_integer_β
.Lx378_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_binop_α
n197_call_β:            mov              r11, 82
                        add              rsp, 16;                             jmp   n196_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_lit_integer_α
n198_binop_β:           mov              r11, 83
                        add              rsp, 32;                             jmp   n196_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_call_α
n199_lit_integer_β:     mov              r11, 84
                        add              rsp, 16;                             jmp   n198_binop_β
.Lx380_0:               .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            sub              rsp, 16
                        mov              r11, 85
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd85:         .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd85]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx381_240
                        add              rsp, 16;                             jmp   n199_lit_integer_β
.Lx381_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_binop_α
n200_call_β:            mov              r11, 85
                        add              rsp, 16;                             jmp   n199_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n202_call_α
n201_binop_β:           mov              r11, 86
                        add              rsp, 32;                             jmp   n199_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        mov              r11, 87
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
.Lbynamefnzd87:         .string          "SNO$PBK"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd87]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx383_240
                        add              rsp, 16;                             jmp   n201_binop_β
.Lx383_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_lit_string_α
n202_call_β:            mov              r11, 87
                        add              rsp, 16;                             jmp   n201_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_call_α
n203_lit_string_β:      mov              r11, 88
                        add              rsp, 32;                             jmp   n201_binop_β
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            sub              rsp, 16
                        mov              r11, 89
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
.Lbynamefnzd89:         .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd89]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx385_240
                        add              rsp, 16;                             jmp   n203_lit_string_β
.Lx385_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_call_α
n204_call_β:            mov              r11, 89
                        add              rsp, 16;                             jmp   n203_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            sub              rsp, 16
                        mov              r11, 90
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd90:         .string          "SNO$PFEN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd90]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx386_240
                        add              rsp, 32;                             jmp   n203_lit_string_β
.Lx386_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_assign_var_α
n205_call_β:            mov              r11, 90
                        add              rsp, 32;                             jmp   n203_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n206_assign_var_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              rdi, qword ptr [rsp + 256]           # call
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx387_240
                        add              rsp, 48;                             jmp   n203_lit_string_β
.Lx387_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n207_statement_end_α:   mov              r11, 92
                        mov              r10, 2
                        add              rsp, 288;                            jmp   n208_statement_begin_α
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α: mov              r11, 93
                        mov              r10, 3;                              jmp   n209_lit_string_α
n208_statement_begin_β: mov              r11, 93;                             jmp   n213_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_call_α
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            sub              rsp, 16
                        mov              r11, 95
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
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx393_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n208_statement_begin_β
.Lx393_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_assign_α
n210_call_β:            mov              r11, 95
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n208_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 96
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # jescape
                        mov              qword ptr [r9 + 8], rdx;             jmp   n212_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 97
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 98
                        mov              r10, 4;                              jmp   n214_lit_string_α
n213_statement_begin_β: mov              r11, 98;                             jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_call_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            sub              rsp, 16
                        mov              r11, 100
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd402:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd402]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx401_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx401_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n216_assign_α
n215_call_β:            mov              r11, 100
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jchunk
                        mov              qword ptr [r9 + 24], rdx;            jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 102
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n218_statement_begin_α
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"' FENCE
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 103
                        mov              r10, 5;                              jmp   n219_var_α
n218_statement_begin_β: mov              r11, 103;                            jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 248], rdx;           jmp   n221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 0]              # jescape
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_assign_α
n221_var_β:             mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 264], rdx;           jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_assign_α
n223_var_β:             mov              r11, 108
                        add              rsp, 16;                             jmp   n221_var_β
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 280], rdx;           jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_lit_string_α
n225_lit_string_β:      mov              r11, 110
                        add              rsp, 16;                             jmp   n223_var_β
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_call_α
n226_lit_string_β:      mov              r11, 111
                        add              rsp, 16;                             jmp   n225_lit_string_β
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            sub              rsp, 16
                        mov              r11, 112
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
.Lrkfnzd417:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd417]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx416_240
                        add              rsp, 16;                             jmp   n226_lit_string_β
.Lx416_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_assign_α
n227_call_β:            mov              r11, 112
                        add              rsp, 16;                             jmp   n226_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jstring
                        mov              qword ptr [r9 + 40], rdx;            jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 114
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 115
                        mov              r10, 6;                              jmp   n231_lit_string_α
n230_statement_begin_β: mov              r11, 115;                            jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      sub              rsp, 16
                        mov              r11, 116
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_call_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        mov              r11, 117
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd425:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd425]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx424_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
.Lx424_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_assign_α
n232_call_β:            mov              r11, 117
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jnumber
                        mov              qword ptr [r9 + 56], rdx;            jmp   n234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 119
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n235_statement_begin_α
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 120
                        mov              r10, 7;                              jmp   n236_lit_string_α
n235_statement_begin_β: mov              r11, 120;                            jmp   n252_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      sub              rsp, 16
                        mov              r11, 121
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_call_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        mov              r11, 122
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd433:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd433]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx432_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
.Lx432_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_deref_α
n237_call_β:            mov              r11, 122
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n238_deref_α:           sub              rsp, 16
                        mov              r11, 123
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx434_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n235_statement_begin_β
.Lx434_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_var_α
n238_deref_β:           mov              r11, 123
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_binop_α
n239_var_β:             mov              r11, 124
                        add              rsp, 16;                             jmp   n238_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n240_binop_α:           sub              rsp, 16
                        mov              r11, 125
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_lit_string_α
n240_binop_β:           mov              r11, 125
                        add              rsp, 16;                             jmp   n239_var_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_call_α
n241_lit_string_β:      mov              r11, 126
                        add              rsp, 16;                             jmp   n240_binop_β
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            sub              rsp, 16
                        mov              r11, 127
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd439:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd439]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx438_240
                        add              rsp, 16;                             jmp   n241_lit_string_β
.Lx438_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_deref_α
n242_call_β:            mov              r11, 127
                        add              rsp, 16;                             jmp   n241_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n243_deref_α:           sub              rsp, 16
                        mov              r11, 128
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx440_240
                        add              rsp, 32;                             jmp   n241_lit_string_β
.Lx440_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_binop_α
n243_deref_β:           mov              r11, 128
                        add              rsp, 32;                             jmp   n241_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:           sub              rsp, 16
                        mov              r11, 129
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_lit_string_α
n244_binop_β:           mov              r11, 129
                        add              rsp, 16;                             jmp   n243_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_binop_α
n245_lit_string_β:      mov              r11, 130
                        add              rsp, 16;                             jmp   n244_binop_β
.Lx442_0:               .quad            .Lx442_0_s
.Lx442_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           sub              rsp, 16
                        mov              r11, 131
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_lit_string_α
n246_binop_β:           mov              r11, 131
                        add              rsp, 16;                             jmp   n245_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n248_call_α
n247_lit_string_β:      mov              r11, 132
                        add              rsp, 16;                             jmp   n246_binop_β
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "EXPR$0"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            sub              rsp, 16
                        mov              r11, 133
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd446:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd446]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx445_240
                        add              rsp, 16;                             jmp   n247_lit_string_β
.Lx445_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_binop_α
n248_call_β:            mov              r11, 133
                        add              rsp, 16;                             jmp   n247_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
                        mov              r11, 134
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              r11, 135
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jmember
                        mov              qword ptr [r9 + 72], rdx;            jmp   n251_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   mov              r11, 136
                        mov              r10, 7
                        add              rsp, 224;                            jmp   n252_statement_begin_α
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α: mov              r11, 137
                        mov              r10, 8;                              jmp   n253_lit_string_α
n252_statement_begin_β: mov              r11, 137;                            jmp   n273_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_var_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_lit_string_α
n254_var_β:             mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n252_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_call_α
n255_lit_string_β:      mov              r11, 140
                        add              rsp, 16;                             jmp   n254_var_β
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            sub              rsp, 16
                        mov              r11, 141
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd457:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd457]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx456_240
                        add              rsp, 16;                             jmp   n255_lit_string_β
.Lx456_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_deref_α
n256_call_β:            mov              r11, 141
                        add              rsp, 16;                             jmp   n255_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n257_deref_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx458_240
                        add              rsp, 32;                             jmp   n255_lit_string_β
.Lx458_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_lit_string_α
n257_deref_β:           mov              r11, 142
                        add              rsp, 32;                             jmp   n255_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_binop_α
n258_lit_string_β:      mov              r11, 143
                        add              rsp, 16;                             jmp   n257_deref_β
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n260_var_α
n259_binop_β:           mov              r11, 144
                        add              rsp, 16;                             jmp   n258_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_binop_α
n260_var_β:             mov              r11, 145
                        add              rsp, 16;                             jmp   n259_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:           sub              rsp, 16
                        mov              r11, 146
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n262_call_α
n261_binop_β:           mov              r11, 146
                        add              rsp, 16;                             jmp   n260_var_β
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            sub              rsp, 16
                        mov              r11, 147
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd147:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd147]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx463_240
                        add              rsp, 16;                             jmp   n261_binop_β
.Lx463_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_binop_α
n262_call_β:            mov              r11, 147
                        add              rsp, 16;                             jmp   n261_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
                        mov              r11, 148
                        mov              rdi, qword ptr [rsp + 144]           # var
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_lit_string_α
n263_binop_β:           mov              r11, 148
                        add              rsp, 32;                             jmp   n261_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              r11, 149
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_call_α
n264_lit_string_β:      mov              r11, 149
                        add              rsp, 16;                             jmp   n263_binop_β
.Lx465_0:               .quad            .Lx465_0_s
.Lx465_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            sub              rsp, 16
                        mov              r11, 150
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd467:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd467]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx466_240
                        add              rsp, 16;                             jmp   n264_lit_string_β
.Lx466_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_deref_α
n265_call_β:            mov              r11, 150
                        add              rsp, 16;                             jmp   n264_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n266_deref_α:           sub              rsp, 16
                        mov              r11, 151
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx468_240
                        add              rsp, 32;                             jmp   n264_lit_string_β
.Lx468_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n267_call_α
n266_deref_β:           mov              r11, 151
                        add              rsp, 32;                             jmp   n264_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            sub              rsp, 16
                        mov              r11, 152
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
.Lbynamefnzd152:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd152]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx469_240
                        add              rsp, 16;                             jmp   n266_deref_β
.Lx469_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_binop_α
n267_call_β:            mov              r11, 152
                        add              rsp, 16;                             jmp   n266_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 153
                        mov              rdi, qword ptr [rsp + 240]           # lit_string
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n269_lit_string_α
n268_binop_β:           mov              r11, 153
                        add              rsp, 32;                             jmp   n266_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_binop_α
n269_lit_string_β:      mov              r11, 154
                        add              rsp, 16;                             jmp   n268_binop_β
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              r11, 155
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jobject
                        mov              qword ptr [r9 + 88], rdx;            jmp   n272_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   mov              r11, 157
                        mov              r10, 8
                        add              rsp, 288;                            jmp   n273_statement_begin_α
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α: mov              r11, 158
                        mov              r10, 9;                              jmp   n274_lit_string_α
n273_statement_begin_β: mov              r11, 158;                            jmp   n296_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_lit_string_α
.Lx478_0:               .quad            .Lx478_0_s
.Lx478_0_s:             .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_call_α
n275_lit_string_β:      mov              r11, 160
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n273_statement_begin_β
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          "EXPR$1"
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            sub              rsp, 16
                        mov              r11, 161
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd481:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd481]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx480_240
                        add              rsp, 16;                             jmp   n275_lit_string_β
.Lx480_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n277_lit_string_α
n276_call_β:            mov              r11, 161
                        add              rsp, 16;                             jmp   n275_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_call_α
n277_lit_string_β:      mov              r11, 162
                        add              rsp, 32;                             jmp   n275_lit_string_β
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            sub              rsp, 16
                        mov              r11, 163
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd484:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd484]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx483_240
                        add              rsp, 16;                             jmp   n277_lit_string_β
.Lx483_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_deref_α
n278_call_β:            mov              r11, 163
                        add              rsp, 16;                             jmp   n277_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n279_deref_α:           sub              rsp, 16
                        mov              r11, 164
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx485_240
                        add              rsp, 32;                             jmp   n277_lit_string_β
.Lx485_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_lit_string_α
n279_deref_β:           mov              r11, 164
                        add              rsp, 32;                             jmp   n277_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_binop_α
n280_lit_string_β:      mov              r11, 165
                        add              rsp, 16;                             jmp   n279_deref_β
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:           sub              rsp, 16
                        mov              r11, 166
                        mov              rdi, qword ptr [rsp + 32]            # deref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_lit_string_α
n281_binop_β:           mov              r11, 166
                        add              rsp, 16;                             jmp   n280_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_call_α
n282_lit_string_β:      mov              r11, 167
                        add              rsp, 16;                             jmp   n281_binop_β
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "EXPR$2"
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            sub              rsp, 16
                        mov              r11, 168
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd490:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd490]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx489_240
                        add              rsp, 16;                             jmp   n282_lit_string_β
.Lx489_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_binop_α
n283_call_β:            mov              r11, 168
                        add              rsp, 16;                             jmp   n282_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_call_α
n284_binop_β:           mov              r11, 169
                        add              rsp, 32;                             jmp   n282_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            sub              rsp, 16
                        mov              r11, 170
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd170:        .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd170]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx492_240
                        add              rsp, 16;                             jmp   n284_binop_β
.Lx492_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_binop_α
n285_call_β:            mov              r11, 170
                        add              rsp, 16;                             jmp   n284_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n286_binop_α:           sub              rsp, 16
                        mov              r11, 171
                        mov              rdi, qword ptr [rsp + 160]           # call
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_lit_string_α
n286_binop_β:           mov              r11, 171
                        add              rsp, 32;                             jmp   n284_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n288_call_α
n287_lit_string_β:      mov              r11, 172
                        add              rsp, 16;                             jmp   n286_binop_β
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            sub              rsp, 16
                        mov              r11, 173
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd496:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd496]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx495_240
                        add              rsp, 16;                             jmp   n287_lit_string_β
.Lx495_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_deref_α
n288_call_β:            mov              r11, 173
                        add              rsp, 16;                             jmp   n287_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n289_deref_α:           sub              rsp, 16
                        mov              r11, 174
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx497_240
                        add              rsp, 32;                             jmp   n287_lit_string_β
.Lx497_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n290_call_α
n289_deref_β:           mov              r11, 174
                        add              rsp, 32;                             jmp   n287_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:            sub              rsp, 16
                        mov              r11, 175
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
.Lbynamefnzd175:        .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd175]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx498_240
                        add              rsp, 16;                             jmp   n289_deref_β
.Lx498_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_binop_α
n290_call_β:            mov              r11, 175
                        add              rsp, 16;                             jmp   n289_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              r11, 176
                        mov              rdi, qword ptr [rsp + 272]           # lit_string
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_lit_string_α
n291_binop_β:           mov              r11, 176
                        add              rsp, 32;                             jmp   n289_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      sub              rsp, 16
                        mov              r11, 177
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n293_binop_α
n292_lit_string_β:      mov              r11, 177
                        add              rsp, 16;                             jmp   n291_binop_β
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:           sub              rsp, 16
                        mov              r11, 178
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n294_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:          mov              r11, 179
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jarray
                        mov              qword ptr [r9 + 104], rdx;           jmp   n295_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_end_α:   mov              r11, 180
                        mov              r10, 9
                        add              rsp, 320;                            jmp   n296_statement_begin_α
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
n296_statement_begin_α: mov              r11, 181
                        mov              r10, 10;                             jmp   n297_var_α
n296_statement_begin_β: mov              r11, 181;                            jmp   n310_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:          mov              r11, 183
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 296], rdx;           jmp   n299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 48]             # jnumber
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
n299_var_β:             mov              r11, 184
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n296_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 312], rdx;           jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 80]             # jobject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n302_assign_α
n301_var_β:             mov              r11, 186
                        add              rsp, 16;                             jmp   n299_var_β
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 328], rdx;           jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 96]             # jarray
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_assign_α
n303_var_β:             mov              r11, 188
                        add              rsp, 16;                             jmp   n301_var_β
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 344], rdx;           jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n306_lit_string_α
n305_lit_string_β:      mov              r11, 190
                        add              rsp, 16;                             jmp   n303_var_β
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      sub              rsp, 16
                        mov              r11, 191
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n307_call_α
n306_lit_string_β:      mov              r11, 191
                        add              rsp, 16;                             jmp   n305_lit_string_β
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            sub              rsp, 16
                        mov              r11, 192
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
.Lrkfnzd518:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd518]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx517_240
                        add              rsp, 16;                             jmp   n306_lit_string_β
.Lx517_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_assign_α
n307_call_β:            mov              r11, 192
                        add              rsp, 16;                             jmp   n306_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n308_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jvalue
                        mov              qword ptr [r9 + 120], rdx;           jmp   n309_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n309_statement_end_α:   mov              r11, 194
                        mov              r10, 10
                        add              rsp, 112;                            jmp   n310_statement_begin_α
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_begin_α: mov              r11, 195
                        mov              r10, 11;                             jmp   n311_lit_string_α
n310_statement_begin_β: mov              r11, 195;                            jmp   n323_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n312_call_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            sub              rsp, 16
                        mov              r11, 197
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd526:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd526]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx525_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n310_statement_begin_β
.Lx525_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_deref_α
n312_call_β:            mov              r11, 197
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n310_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n313_deref_α:           sub              rsp, 16
                        mov              r11, 198
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx527_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n310_statement_begin_β
.Lx527_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_lit_string_α
n313_deref_β:           mov              r11, 198
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n310_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n315_call_α
n314_lit_string_β:      mov              r11, 199
                        add              rsp, 16;                             jmp   n313_deref_β
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "EXPR$3"
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            sub              rsp, 16
                        mov              r11, 200
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd530:            .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd530]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx529_240
                        add              rsp, 16;                             jmp   n314_lit_string_β
.Lx529_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n316_binop_α
n315_call_β:            mov              r11, 200
                        add              rsp, 16;                             jmp   n314_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              rdi, qword ptr [rsp + 48]            # deref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_lit_string_α
n316_binop_β:           mov              r11, 201
                        add              rsp, 32;                             jmp   n314_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_call_α
n317_lit_string_β:      mov              r11, 202
                        add              rsp, 16;                             jmp   n316_binop_β
.Lx532_0:               .quad            .Lx532_0_s
.Lx532_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            sub              rsp, 16
                        mov              r11, 203
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd534:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd534]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx533_240
                        add              rsp, 16;                             jmp   n317_lit_string_β
.Lx533_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_deref_α
n318_call_β:            mov              r11, 203
                        add              rsp, 16;                             jmp   n317_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n319_deref_α:           sub              rsp, 16
                        mov              r11, 204
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx535_240
                        add              rsp, 32;                             jmp   n317_lit_string_β
.Lx535_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n320_binop_α
n319_deref_β:           mov              r11, 204
                        add              rsp, 32;                             jmp   n317_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:           sub              rsp, 16
                        mov              r11, 205
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:          mov              r11, 206
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jelement
                        mov              qword ptr [r9 + 136], rdx;           jmp   n322_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n322_statement_end_α:   mov              r11, 207
                        mov              r10, 11
                        add              rsp, 160;                            jmp   n323_statement_begin_α
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_begin_α: mov              r11, 208
                        mov              r10, 12;                             jmp   n324_var_α
n323_statement_begin_β: mov              r11, 208;                            jmp   n331_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n325_assign_α:          mov              r11, 210
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 360], rdx;           jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n327_lit_string_α
n326_lit_string_β:      mov              r11, 211
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n323_statement_begin_β
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n328_call_α
n327_lit_string_β:      mov              r11, 212
                        add              rsp, 16;                             jmp   n326_lit_string_β
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            sub              rsp, 16
                        mov              r11, 213
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
.Lrkfnzd547:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd547]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx546_240
                        add              rsp, 16;                             jmp   n327_lit_string_β
.Lx546_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n329_assign_α
n328_call_β:            mov              r11, 213
                        add              rsp, 16;                             jmp   n327_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # json
                        mov              qword ptr [r9 + 152], rdx;           jmp   n330_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 215
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n331_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_begin_α: mov              r11, 216
                        mov              r10, 13;                             jmp   n332_lit_string_α
n331_statement_begin_β: mov              r11, 216;                            jmp   n338_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      sub              rsp, 16
                        mov              r11, 217
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n333_call_α
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            sub              rsp, 16
                        mov              r11, 218
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd555:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd555]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx554_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
.Lx554_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n334_lit_integer_α
n333_call_β:            mov              r11, 218
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n335_lit_string_α
n334_lit_integer_β:     mov              r11, 219
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n331_statement_begin_β
.Lx556_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      sub              rsp, 16
                        mov              r11, 220
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n336_call_α
n335_lit_string_β:      mov              r11, 220
                        add              rsp, 16;                             jmp   n334_lit_integer_β
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            sub              rsp, 16
                        mov              r11, 221
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
.Lbynamefnzd221:        .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd221]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx558_240
                        add              rsp, 16;                             jmp   n335_lit_string_β
.Lx558_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_statement_end_α
n336_call_β:            mov              r11, 221
                        add              rsp, 16;                             jmp   n335_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n337_statement_end_α:   mov              r11, 222
                        mov              r10, 13
                        add              rsp, 80;                             jmp   n338_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n338_statement_begin_α: mov              r11, 223
                        mov              r10, 14;                             jmp   n339_var_α
n338_statement_begin_β: mov              r11, 223;                            jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rdi, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx563_240
                        add              rsp, 16;                             jmp   n338_statement_begin_β
.Lx563_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n340_assign_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n340_assign_α:          mov              r11, 225
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # src
                        mov              qword ptr [r9 + 168], rdx;           jmp   n341_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n341_statement_end_α:   mov              r11, 226
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n342_statement_begin_α
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_begin_α: mov              r11, 227
                        mov              r10, 15;                             jmp   n343_var_α
n342_statement_begin_β: mov              r11, 227;                            jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n344_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 144]            # json
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n345_assign_α
n344_var_β:             mov              r11, 229
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n357_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:          mov              r11, 230
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n346_match_begin_α
n345_assign_β:          mov              r11, 230;                            jmp   n344_var_β
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n346_match_begin_α:     mov              r11, 231
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
.Lx573_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx573_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n347_match_defer_α
n346_match_begin_β:     mov              r11, 231
.Lx573_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx573_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx573_1
                                                                              jmp   .Lx573_0
.Lx573_1:
n346_match_begin_af:    mov              r11, 231
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
                        pop              rbp;                                 jmp   n345_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n347_match_defer_α:     mov              r11, 232
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             rax, rax;                            jz    .Lx574_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx574_5]
                        push             rcx
                        lea              rcx, [rip + .Lx574_4]
                        push             rcx;                                 jmp   rax
.Lx574_4:                                                                     jmp   n348_match_end_α
.Lx574_5:                                                                     jmp   n346_match_begin_β
.Lx574_0:               mov              eax, edx
                        test             eax, eax;                            js    n346_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx574_6]
                        push             rcx
                        push             rax;                                 jmp   n348_match_end_α
.Lx574_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n346_match_begin_β
n347_match_defer_β:     mov              r11, 232
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx574_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx574_12
                                                                              jmp   rax
.Lx574_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n348_match_end_α:       mov              r11, 233
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
                        test             rax, rax;                            je    .Lx576_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n346_match_begin_af
.Lx576_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n349_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 234
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n350_statement_begin_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n350_statement_begin_α: mov              r11, 235
                        mov              r10, 16;                             jmp   n351_lit_string_α
n350_statement_begin_β: mov              r11, 235;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      sub              rsp, 16
                        mov              r11, 236
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n352_var_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_call_α
n352_var_β:             mov              r11, 237
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n350_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            sub              rsp, 16
                        mov              r11, 238
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd584:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd584]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx583_240
                        add              rsp, 16;                             jmp   n352_var_β
.Lx583_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n354_binop_α
n353_call_β:            mov              r11, 238
                        add              rsp, 16;                             jmp   n352_var_β
#-----------------------------------------------------------------------------------------------------------------------
n354_binop_α:           sub              rsp, 16
                        mov              r11, 239
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n355_assign_α:          mov              r11, 240
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n356_statement_end_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n356_statement_end_α:   mov              r11, 241
                        mov              r10, 16
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α: mov              r11, 242
                        mov              r10, 17;                             jmp   n358_lit_string_α
n357_statement_begin_β: mov              r11, 242;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      sub              rsp, 16
                        mov              r11, 243
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n359_assign_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:          mov              r11, 244
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n360_statement_end_α
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n360_statement_end_α:   mov              r11, 245
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
