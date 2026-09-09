                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/json/json-match.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$0$jelement:
EXPR$0$jelement_α_body:
                        .type            n0_define_bx, @function
n0_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_define_α:            mov              r11, 1;                              jmp   n1_var_α
                        .size            n0_define_bx, .-n0_define_bx
                        .type            n1_var_bx, @function
n1_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              r11, 2
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_assign_α
                        .size            n1_var_bx, .-n1_var_bx
                        .type            n2_assign_bx, @function
n2_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # EXPR$0$jelement
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_6_0]
                        .section         .rodata
.Lassign_α_6_1_s:       .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_6_1_s]
                        mov              r8, 0
                        mov              r9, 0
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
                        add              rsp, 16;                             jmp   EXPR$0$jelement_γ
.Lassign_α_6_0:         .quad            .Lassign_α_6_0_s
.Lassign_α_6_0_s:       .string          "EXPR$0$jelement"
                        .size            n2_assign_bx, .-n2_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0$jelement_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0$jelement_β:
                                                                              jmp   EXPR$0$jelement_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0$jelement_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$0$jelement_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$1$jelement:
EXPR$1$jelement_α_body:
                        .type            n7_define_bx, @function
n7_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_define_α:            mov              r11, 4;                              jmp   n8_var_α
                        .size            n7_define_bx, .-n7_define_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               sub              rsp, 16
                        mov              r11, 5
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_assign_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # EXPR$1$jelement
                        mov              qword ptr [r9 + 200], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_13_0]
                        .section         .rodata
.Lassign_α_13_1_s:      .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_13_1_s]
                        mov              r8, 0
                        mov              r9, 0
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
                        add              rsp, 16;                             jmp   EXPR$1$jelement_γ
.Lassign_α_13_0:        .quad            .Lassign_α_13_0_s
.Lassign_α_13_0_s:      .string          "EXPR$1$jelement"
                        .size            n9_assign_bx, .-n9_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1$jelement_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1$jelement_β:
                                                                              jmp   EXPR$1$jelement_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1$jelement_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$1$jelement_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$2$jelement:
EXPR$2$jelement_α_body:
                        .type            n14_define_bx, @function
n14_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_define_α:           mov              r11, 7;                              jmp   n15_var_α
                        .size            n14_define_bx, .-n14_define_bx
                        .type            n15_var_bx, @function
n15_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              r11, 8
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_assign_α
                        .size            n15_var_bx, .-n15_var_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # EXPR$2$jelement
                        mov              qword ptr [r9 + 216], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_20_0]
                        .section         .rodata
.Lassign_α_20_1_s:      .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_20_1_s]
                        mov              r8, 0
                        mov              r9, 0
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
                        add              rsp, 16;                             jmp   EXPR$2$jelement_γ
.Lassign_α_20_0:        .quad            .Lassign_α_20_0_s
.Lassign_α_20_0_s:      .string          "EXPR$2$jelement"
                        .size            n16_assign_bx, .-n16_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2$jelement_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2$jelement_β:
                                                                              jmp   EXPR$2$jelement_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2$jelement_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$2$jelement_ω:
                                                                              jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__EXPR$3$jvalue:
EXPR$3$jvalue_α_body:
                        .type            n21_define_bx, @function
n21_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_define_α:           mov              r11, 10;                             jmp   n22_var_α
                        .size            n21_define_bx, .-n21_define_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 11
                        mov              rax, qword ptr [r9 + 112]            # jvalue
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_assign_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_assign_bx, @function
n23_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # EXPR$3$jvalue
                        mov              qword ptr [r9 + 232], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_27_0]
                        .section         .rodata
.Lassign_α_27_1_s:      .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_27_1_s]
                        mov              r8, 0
                        mov              r9, 0
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
                        add              rsp, 16;                             jmp   EXPR$3$jvalue_γ
.Lassign_α_27_0:        .quad            .Lassign_α_27_0_s
.Lassign_α_27_0_s:      .string          "EXPR$3$jvalue"
                        .size            n23_assign_bx, .-n23_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3$jvalue_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3$jvalue_β:
                                                                              jmp   EXPR$3$jvalue_ω
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3$jvalue_γ:
                                                                              jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
EXPR$3$jvalue_ω:
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
                        .type            n28_match_lit_bx, @function
n28_match_lit_bx:
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
                        .size            n28_match_lit_bx, .-n28_match_lit_bx
                        .type            n29_match_alternate_bx, @function
n29_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_alternate_α:  mov              r11, 14
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_39_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n35_match_any_α
.Lmatch_alternate_α_39_21:
                        lea              rax, [rip + .Lmatch_alternate_α_39_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n30_match_lit_α
.Lmatch_alternate_γ_29_s0:
                        mov              r11, 14
                        lea              rax, [rip + .Lmatch_alternate_α_39_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_29_as
.Lmatch_alternate_γ_29_s1:
                        mov              r11, 14
                        lea              rax, [rip + .Lmatch_alternate_α_39_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_29_as
.Lmatch_alternate_α_39_40:
                                                                              jmp   n35_match_any_β
.Lmatch_alternate_α_39_41:
                                                                              jmp   n34_match_any_β
.Lmatch_alternate_γ_29_as:
                        mov              r11, 14;                             jmp   PAT$0_γ
n29_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_29_af:
                        mov              r11, 14
.Lmatch_alternate_ω_29_af:
                        mov              r11, 14
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_39_19:
                                                                              jmp   n28_match_lit_β
                        .size            n29_match_alternate_bx, .-n29_match_alternate_bx
                        .type            n30_match_lit_bx, @function
n30_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:        mov              r11, 15
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_29_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 117;                            jne   .Lmatch_alternate_ω_29_af
                        add              r14d, 1;                             jmp   n31_match_any_α
n30_match_lit_β:        mov              r11, 15
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_29_af
                        .size            n30_match_lit_bx, .-n30_match_lit_bx
                        .type            n31_match_any_bx, @function
n31_match_any_bx:
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
                        .size            n31_match_any_bx, .-n31_match_any_bx
                        .type            n32_match_any_bx, @function
n32_match_any_bx:
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
                        .size            n32_match_any_bx, .-n32_match_any_bx
                        .type            n33_match_any_bx, @function
n33_match_any_bx:
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
                        .size            n33_match_any_bx, .-n33_match_any_bx
                        .type            n34_match_any_bx, @function
n34_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_match_any_α:        mov              r11, 19
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n33_match_any_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n33_match_any_β
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_29_s1
n34_match_any_β:        mov              r11, 19
                        sub              r14d, 1;                             jmp   n33_match_any_β
                        .size            n34_match_any_bx, .-n34_match_any_bx
                        .type            n35_match_any_bx, @function
n35_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_match_any_α:        mov              r11, 20
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_29_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_29_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_29_s0
n35_match_any_β:        mov              r11, 20
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_29_af
                        .size            n35_match_any_bx, .-n35_match_any_bx
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
                        .type            n52_match_break_bx, @function
n52_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_match_break_α:      sub              rsp, 16
                        mov              r11, 21
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_break_α_54_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_54_240
                        add              rsp, 16;                             jmp   PAT$1_ω
.Lmatch_break_α_54_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               jnz   .Lmatch_break_α_54_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_54_0
.Lmatch_break_α_54_1:   mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   PAT$1_γ
n52_match_break_β:      mov              r11, 21
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16;                             jmp   PAT$1_ω
                        .size            n52_match_break_bx, .-n52_match_break_bx
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
                        .type            n55_match_lit_bx, @function
n55_match_lit_bx:
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
                        .size            n55_match_lit_bx, .-n55_match_lit_bx
                        .type            n56_match_defer_bx, @function
n56_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_match_defer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_63_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_63_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_63_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_63_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_63_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_63_18
.Lmatch_defer_α_63_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_63_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_63_16:
.Lmatch_defer_α_63_18:  test             rax, rax;                            jz    .Lmatch_defer_α_63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_63_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_63_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_63_4:                                                         jmp   n57_match_arbno_α
.Lmatch_defer_α_63_5:   add              rsp, 16;                             jmp   n55_match_lit_β
.Lmatch_defer_α_63_0:   push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_63_240
                        add              rsp, 16;                             jmp   n55_match_lit_β
.Lmatch_defer_α_63_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_63_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_α
.Lmatch_defer_α_63_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n55_match_lit_β
n56_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_63_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_63_12
                                                                              jmp   rax
.Lmatch_defer_β_63_12:                                                        jmp   qword ptr [rsp]
                        .size            n56_match_defer_bx, .-n56_match_defer_bx
                        .type            n57_match_arbno_bx, @function
n57_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_arbno_α:      mov              r11, 24
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
n57_match_arbno_β:      mov              r11, 24
                        mov              r12, qword ptr [rbp + -40];          jmp   n59_match_defer_α
.Lmatch_arbno_γ_57_as:  mov              r11, 24
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n60_match_defer_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
.Lmatch_arbno_γ_57_af:  mov              r11, 24
.Lmatch_arbno_ω_57_af:  mov              r11, 24
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jmp   n56_match_defer_β
                        .size            n57_match_arbno_bx, .-n57_match_arbno_bx
                        .type            n58_match_lit_bx, @function
n58_match_lit_bx:
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
                        .size            n58_match_lit_bx, .-n58_match_lit_bx
                        .type            n59_match_defer_bx, @function
n59_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:      mov              r11, 26
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_68_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_68_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_68_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_68_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_68_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_68_18
.Lmatch_defer_α_68_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_68_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_68_16:
.Lmatch_defer_α_68_18:  test             rax, rax;                            jz    .Lmatch_defer_α_68_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_68_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_68_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_68_4:                                                         jmp   n60_match_defer_α
.Lmatch_defer_α_68_5:                                                         jmp   .Lmatch_arbno_ω_57_af
.Lmatch_defer_α_68_0:   push             r14
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
                        test             eax, eax;                            js    .Lmatch_arbno_ω_57_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_68_6]
                        push             rcx
                        push             rax;                                 jmp   n60_match_defer_α
.Lmatch_defer_α_68_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_57_af
n59_match_defer_β:      mov              r11, 26
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_68_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_68_12
                                                                              jmp   rax
.Lmatch_defer_β_68_12:                                                        jmp   qword ptr [rsp]
                        .size            n59_match_defer_bx, .-n59_match_defer_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 27
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_69_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_69_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_69_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_69_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_69_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_69_18
.Lmatch_defer_α_69_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_69_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_69_16:
.Lmatch_defer_α_69_18:  test             rax, rax;                            jz    .Lmatch_defer_α_69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_69_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_69_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_69_4:                                                         jmp   .Lmatch_arbno_γ_57_as
.Lmatch_defer_α_69_5:                                                         jmp   n59_match_defer_β
.Lmatch_defer_α_69_0:   push             r14
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
                        lea              rax, [rip + .Lmatch_defer_α_69_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_57_as
.Lmatch_defer_α_69_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n59_match_defer_β
n60_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_69_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_69_12
                                                                              jmp   rax
.Lmatch_defer_β_69_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
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
                        .type            n70_match_alternate_bx, @function
n70_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_match_alternate_α:  mov              r11, 28
                        mov              dword ptr [rbp + -64], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_91_21]
                        mov              qword ptr [rbp + -48], rax;          jmp   n89_match_lit_α
.Lmatch_alternate_α_91_21:
                        lea              rax, [rip + .Lmatch_alternate_α_91_19]
                        mov              qword ptr [rbp + -48], rax;          jmp   n88_match_lit_α
.Lmatch_alternate_γ_70_s0:
                        mov              r11, 28
                        lea              rax, [rip + .Lmatch_alternate_α_91_40]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_70_as
.Lmatch_alternate_γ_70_s1:
                        mov              r11, 28
                        lea              rax, [rip + .Lmatch_alternate_α_91_41]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_70_as
.Lmatch_alternate_α_91_40:
                                                                              jmp   n89_match_lit_β
.Lmatch_alternate_α_91_41:
                                                                              jmp   n88_match_lit_β
.Lmatch_alternate_γ_70_as:
                        mov              r11, 28;                             jmp   n71_match_alternate_α
n70_match_alternate_β:  mov              r11, 28
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_γ_70_af:
                        mov              r11, 28
.Lmatch_alternate_ω_70_af:
                        mov              r11, 28
                        mov              r14d, dword ptr [rbp + -64]
                        mov              rax, qword ptr [rbp + -48];          jmp   rax
.Lmatch_alternate_α_91_19:
                                                                              jmp   PAT$3_ω
                        .size            n70_match_alternate_bx, .-n70_match_alternate_bx
                        .type            n71_match_alternate_bx, @function
n71_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  mov              r11, 29
                        mov              dword ptr [rbp + -96], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_93_21]
                        mov              qword ptr [rbp + -80], rax;          jmp   n87_match_lit_α
.Lmatch_alternate_α_93_21:
                        lea              rax, [rip + .Lmatch_alternate_α_93_19]
                        mov              qword ptr [rbp + -80], rax;          jmp   n83_match_any_α
.Lmatch_alternate_γ_71_s0:
                        mov              r11, 29
                        lea              rax, [rip + .Lmatch_alternate_α_93_40]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_γ_71_s1:
                        mov              r11, 29
                        lea              rax, [rip + .Lmatch_alternate_α_93_41]
                        mov              qword ptr [rbp + -88], rax;          jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_α_93_40:
                                                                              jmp   n87_match_lit_β
.Lmatch_alternate_α_93_41:
                                                                              jmp   n84_match_alternate_β
.Lmatch_alternate_γ_71_as:
                        mov              r11, 29;                             jmp   n72_match_alternate_α
n71_match_alternate_β:  mov              r11, 29
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_γ_71_af:
                        mov              r11, 29
.Lmatch_alternate_ω_71_af:
                        mov              r11, 29
                        mov              r14d, dword ptr [rbp + -96]
                        mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_α_93_19:
                                                                              jmp   n70_match_alternate_β
                        .size            n71_match_alternate_bx, .-n71_match_alternate_bx
                        .type            n72_match_alternate_bx, @function
n72_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_alternate_α:  mov              r11, 30
                        mov              dword ptr [rbp + -192], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_95_21]
                        mov              qword ptr [rbp + -176], rax;         jmp   n81_match_lit_α
.Lmatch_alternate_α_95_21:
                        lea              rax, [rip + .Lmatch_alternate_α_95_19]
                        mov              qword ptr [rbp + -176], rax;         jmp   n80_match_lit_α
.Lmatch_alternate_γ_72_s0:
                        mov              r11, 30
                        lea              rax, [rip + .Lmatch_alternate_α_95_40]
                        mov              qword ptr [rbp + -184], rax;         jmp   .Lmatch_alternate_γ_72_as
.Lmatch_alternate_γ_72_s1:
                        mov              r11, 30
                        lea              rax, [rip + .Lmatch_alternate_α_95_41]
                        mov              qword ptr [rbp + -184], rax;         jmp   .Lmatch_alternate_γ_72_as
.Lmatch_alternate_α_95_40:
                                                                              jmp   n82_match_span_β
.Lmatch_alternate_α_95_41:
                                                                              jmp   n80_match_lit_β
.Lmatch_alternate_γ_72_as:
                        mov              r11, 30;                             jmp   n73_match_alternate_α
n72_match_alternate_β:  mov              r11, 30
                        mov              rax, qword ptr [rbp + -184];         jmp   rax
.Lmatch_alternate_γ_72_af:
                        mov              r11, 30
.Lmatch_alternate_ω_72_af:
                        mov              r11, 30
                        mov              r14d, dword ptr [rbp + -192]
                        mov              rax, qword ptr [rbp + -176];         jmp   rax
.Lmatch_alternate_α_95_19:
                                                                              jmp   n71_match_alternate_β
                        .size            n72_match_alternate_bx, .-n72_match_alternate_bx
                        .type            n73_match_alternate_bx, @function
n73_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_alternate_α:  mov              r11, 31
                        mov              dword ptr [rbp + -256], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_97_21]
                        mov              qword ptr [rbp + -240], rax;         jmp   n75_match_any_α
.Lmatch_alternate_α_97_21:
                        lea              rax, [rip + .Lmatch_alternate_α_97_19]
                        mov              qword ptr [rbp + -240], rax;         jmp   n74_match_lit_α
.Lmatch_alternate_γ_73_s0:
                        mov              r11, 31
                        lea              rax, [rip + .Lmatch_alternate_α_97_40]
                        mov              qword ptr [rbp + -248], rax;         jmp   .Lmatch_alternate_γ_73_as
.Lmatch_alternate_γ_73_s1:
                        mov              r11, 31
                        lea              rax, [rip + .Lmatch_alternate_α_97_41]
                        mov              qword ptr [rbp + -248], rax;         jmp   .Lmatch_alternate_γ_73_as
.Lmatch_alternate_α_97_40:
                                                                              jmp   n77_match_span_β
.Lmatch_alternate_α_97_41:
                                                                              jmp   n74_match_lit_β
.Lmatch_alternate_γ_73_as:
                        mov              r11, 31;                             jmp   PAT$3_γ
n73_match_alternate_β:  mov              r11, 31
                        mov              rax, qword ptr [rbp + -248];         jmp   rax
.Lmatch_alternate_γ_73_af:
                        mov              r11, 31
.Lmatch_alternate_ω_73_af:
                        mov              r11, 31
                        mov              r14d, dword ptr [rbp + -256]
                        mov              rax, qword ptr [rbp + -240];         jmp   rax
.Lmatch_alternate_α_97_19:
                                                                              jmp   n72_match_alternate_β
                        .size            n73_match_alternate_bx, .-n73_match_alternate_bx
                        .type            n74_match_lit_bx, @function
n74_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_lit_α:        mov              r11, 32;                             jmp   .Lmatch_alternate_γ_73_s1
n74_match_lit_β:        mov              r11, 32;                             jmp   .Lmatch_alternate_ω_73_af
                        .size            n74_match_lit_bx, .-n74_match_lit_bx
                        .type            n75_match_any_bx, @function
n75_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_any_α:        mov              r11, 33
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_73_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .Lmatch_any_α_101_0
                        cmp              esi, 69;                             je    .Lmatch_any_α_101_0
                                                                              jmp   .Lmatch_alternate_ω_73_af
.Lmatch_any_α_101_0:    add              r14d, 1;                             jmp   n76_match_alternate_α
n75_match_any_β:        mov              r11, 33
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_73_af
                        .size            n75_match_any_bx, .-n75_match_any_bx
                        .type            n76_match_alternate_bx, @function
n76_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_alternate_α:  mov              r11, 34
                        mov              dword ptr [rbp + -288], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_103_21]
                        mov              qword ptr [rbp + -272], rax;         jmp   n79_match_any_α
.Lmatch_alternate_α_103_21:
                        lea              rax, [rip + .Lmatch_alternate_α_103_19]
                        mov              qword ptr [rbp + -272], rax;         jmp   n78_match_lit_α
.Lmatch_alternate_γ_76_s0:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_103_40]
                        mov              qword ptr [rbp + -280], rax;         jmp   .Lmatch_alternate_γ_76_as
.Lmatch_alternate_γ_76_s1:
                        mov              r11, 34
                        lea              rax, [rip + .Lmatch_alternate_α_103_41]
                        mov              qword ptr [rbp + -280], rax;         jmp   .Lmatch_alternate_γ_76_as
.Lmatch_alternate_α_103_40:
                                                                              jmp   n79_match_any_β
.Lmatch_alternate_α_103_41:
                                                                              jmp   n78_match_lit_β
.Lmatch_alternate_γ_76_as:
                        mov              r11, 34;                             jmp   n77_match_span_α
n76_match_alternate_β:  mov              r11, 34
                        mov              rax, qword ptr [rbp + -280];         jmp   rax
.Lmatch_alternate_γ_76_af:
                        mov              r11, 34
.Lmatch_alternate_ω_76_af:
                        mov              r11, 34
                        mov              r14d, dword ptr [rbp + -288]
                        mov              rax, qword ptr [rbp + -272];         jmp   rax
.Lmatch_alternate_α_103_19:
                                                                              jmp   n75_match_any_β
                        .size            n76_match_alternate_bx, .-n76_match_alternate_bx
                        .type            n77_match_span_bx, @function
n77_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_span_α:       mov              r11, 35
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_105_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_105_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_105_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_105_0
.Lmatch_span_α_105_1:   cmp              ecx, r14d;                           jle   n76_match_alternate_β
                        mov              dword ptr [rbp + -316], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_73_s0
n77_match_span_β:       mov              r11, 35
                        mov              r14d, dword ptr [rbp + -316];        jmp   n76_match_alternate_β
                        .size            n77_match_span_bx, .-n77_match_span_bx
                        .type            n78_match_lit_bx, @function
n78_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:        mov              r11, 36;                             jmp   .Lmatch_alternate_γ_76_s1
n78_match_lit_β:        mov              r11, 36;                             jmp   .Lmatch_alternate_ω_76_af
                        .size            n78_match_lit_bx, .-n78_match_lit_bx
                        .type            n79_match_any_bx, @function
n79_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_any_α:        mov              r11, 37
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_76_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_109_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_109_0
                                                                              jmp   .Lmatch_alternate_ω_76_af
.Lmatch_any_α_109_0:    add              r14d, 1;                             jmp   .Lmatch_alternate_γ_76_s0
n79_match_any_β:        mov              r11, 37
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_76_af
                        .size            n79_match_any_bx, .-n79_match_any_bx
                        .type            n80_match_lit_bx, @function
n80_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_lit_α:        mov              r11, 38;                             jmp   .Lmatch_alternate_γ_72_s1
n80_match_lit_β:        mov              r11, 38;                             jmp   .Lmatch_alternate_ω_72_af
                        .size            n80_match_lit_bx, .-n80_match_lit_bx
                        .type            n81_match_lit_bx, @function
n81_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_lit_α:        mov              r11, 39
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_72_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   .Lmatch_alternate_ω_72_af
                        add              r14d, 1;                             jmp   n82_match_span_α
n81_match_lit_β:        mov              r11, 39
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_72_af
                        .size            n81_match_lit_bx, .-n81_match_lit_bx
                        .type            n82_match_span_bx, @function
n82_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_span_α:       mov              r11, 40
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_115_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_115_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_115_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_115_0
.Lmatch_span_α_115_1:   cmp              ecx, r14d;                           jle   n81_match_lit_β
                        mov              dword ptr [rbp + -220], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_72_s0
n82_match_span_β:       mov              r11, 40
                        mov              r14d, dword ptr [rbp + -220];        jmp   n81_match_lit_β
                        .size            n82_match_span_bx, .-n82_match_span_bx
                        .type            n83_match_any_bx, @function
n83_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_any_α:        mov              r11, 41
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_71_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_71_af
                        add              r14d, 1;                             jmp   n84_match_alternate_α
n83_match_any_β:        mov              r11, 41
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_71_af
                        .size            n83_match_any_bx, .-n83_match_any_bx
                        .type            n84_match_alternate_bx, @function
n84_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_match_alternate_α:  mov              r11, 42
                        mov              dword ptr [rbp + -128], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_119_21]
                        mov              qword ptr [rbp + -112], rax;         jmp   n86_match_span_α
.Lmatch_alternate_α_119_21:
                        lea              rax, [rip + .Lmatch_alternate_α_119_19]
                        mov              qword ptr [rbp + -112], rax;         jmp   n85_match_lit_α
.Lmatch_alternate_γ_84_s0:
                        mov              r11, 42
                        lea              rax, [rip + .Lmatch_alternate_α_119_40]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_84_as
.Lmatch_alternate_γ_84_s1:
                        mov              r11, 42
                        lea              rax, [rip + .Lmatch_alternate_α_119_41]
                        mov              qword ptr [rbp + -120], rax;         jmp   .Lmatch_alternate_γ_84_as
.Lmatch_alternate_α_119_40:
                                                                              jmp   n86_match_span_β
.Lmatch_alternate_α_119_41:
                                                                              jmp   n85_match_lit_β
.Lmatch_alternate_γ_84_as:
                        mov              r11, 42;                             jmp   .Lmatch_alternate_γ_71_s1
n84_match_alternate_β:  mov              r11, 42
                        mov              rax, qword ptr [rbp + -120];         jmp   rax
.Lmatch_alternate_γ_84_af:
                        mov              r11, 42
.Lmatch_alternate_ω_84_af:
                        mov              r11, 42
                        mov              r14d, dword ptr [rbp + -128]
                        mov              rax, qword ptr [rbp + -112];         jmp   rax
.Lmatch_alternate_α_119_19:
                                                                              jmp   n83_match_any_β
                        .size            n84_match_alternate_bx, .-n84_match_alternate_bx
                        .type            n85_match_lit_bx, @function
n85_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_lit_α:        mov              r11, 43;                             jmp   .Lmatch_alternate_γ_84_s1
n85_match_lit_β:        mov              r11, 43;                             jmp   .Lmatch_alternate_ω_84_af
                        .size            n85_match_lit_bx, .-n85_match_lit_bx
                        .type            n86_match_span_bx, @function
n86_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_span_α:       mov              r11, 44
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_123_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_123_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_123_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_123_0
.Lmatch_span_α_123_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_84_af
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_84_s0
n86_match_span_β:       mov              r11, 44
                        mov              r14d, dword ptr [rbp + -156];        jmp   .Lmatch_alternate_ω_84_af
                        .size            n86_match_span_bx, .-n86_match_span_bx
                        .type            n87_match_lit_bx, @function
n87_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:        mov              r11, 45
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_71_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   .Lmatch_alternate_ω_71_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_71_s0
n87_match_lit_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_71_af
                        .size            n87_match_lit_bx, .-n87_match_lit_bx
                        .type            n88_match_lit_bx, @function
n88_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_lit_α:        mov              r11, 46;                             jmp   .Lmatch_alternate_γ_70_s1
n88_match_lit_β:        mov              r11, 46;                             jmp   .Lmatch_alternate_ω_70_af
                        .size            n88_match_lit_bx, .-n88_match_lit_bx
                        .type            n89_match_lit_bx, @function
n89_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_lit_α:        mov              r11, 47
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_70_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_70_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_70_s0
n89_match_lit_β:        mov              r11, 47
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_70_af
                        .size            n89_match_lit_bx, .-n89_match_lit_bx
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
                        .type            n130_match_alternate_bx, @function
n130_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_match_alternate_α: mov              r11, 48
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_139_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n137_match_defer_α
.Lmatch_alternate_α_139_21:
                        lea              rax, [rip + .Lmatch_alternate_α_139_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n136_match_defer_α
.Lmatch_alternate_α_139_22:
                        lea              rax, [rip + .Lmatch_alternate_α_139_23]
                        mov              qword ptr [rbp + -56], rax;          jmp   n135_match_defer_α
.Lmatch_alternate_α_139_23:
                        lea              rax, [rip + .Lmatch_alternate_α_139_24]
                        mov              qword ptr [rbp + -56], rax;          jmp   n134_match_defer_α
.Lmatch_alternate_α_139_24:
                        lea              rax, [rip + .Lmatch_alternate_α_139_25]
                        mov              qword ptr [rbp + -56], rax;          jmp   n133_match_lit_α
.Lmatch_alternate_α_139_25:
                        lea              rax, [rip + .Lmatch_alternate_α_139_26]
                        mov              qword ptr [rbp + -56], rax;          jmp   n132_match_lit_α
.Lmatch_alternate_α_139_26:
                        lea              rax, [rip + .Lmatch_alternate_α_139_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n131_match_lit_α
.Lmatch_alternate_γ_130_s0:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s1:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s2:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s3:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_43]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s4:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_44]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s5:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_45]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_γ_130_s6:
                        mov              r11, 48
                        lea              rax, [rip + .Lmatch_alternate_α_139_46]
                        mov              qword ptr [rbp + -64], rax;          jmp   .Lmatch_alternate_γ_130_as
.Lmatch_alternate_α_139_40:
                                                                              jmp   n137_match_defer_β
.Lmatch_alternate_α_139_41:
                                                                              jmp   n136_match_defer_β
.Lmatch_alternate_α_139_42:
                                                                              jmp   n135_match_defer_β
.Lmatch_alternate_α_139_43:
                                                                              jmp   n134_match_defer_β
.Lmatch_alternate_α_139_44:
                                                                              jmp   n133_match_lit_β
.Lmatch_alternate_α_139_45:
                                                                              jmp   n132_match_lit_β
.Lmatch_alternate_α_139_46:
                                                                              jmp   n131_match_lit_β
.Lmatch_alternate_γ_130_as:
                        mov              r11, 48;                             jmp   PAT$4_γ
n130_match_alternate_β: mov              r11, 48
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_γ_130_af:
                        mov              r11, 48
.Lmatch_alternate_ω_130_af:
                        mov              r11, 48
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_α_139_19:
                                                                              jmp   PAT$4_ω
                        .size            n130_match_alternate_bx, .-n130_match_alternate_bx
                        .type            n131_match_lit_bx, @function
n131_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_match_lit_α:       mov              r11, 49
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_130_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   .Lmatch_alternate_ω_130_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_130_s6
n131_match_lit_β:       mov              r11, 49
                        sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_130_af
                        .size            n131_match_lit_bx, .-n131_match_lit_bx
                        .type            n132_match_lit_bx, @function
n132_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_match_lit_α:       mov              r11, 50
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_130_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   .Lmatch_alternate_ω_130_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   .Lmatch_alternate_ω_130_af
                        add              r14d, 5;                             jmp   .Lmatch_alternate_γ_130_s5
n132_match_lit_β:       mov              r11, 50
                        sub              r14d, 5;                             jmp   .Lmatch_alternate_ω_130_af
                        .size            n132_match_lit_bx, .-n132_match_lit_bx
                        .type            n133_match_lit_bx, @function
n133_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_match_lit_α:       mov              r11, 51
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_130_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   .Lmatch_alternate_ω_130_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_130_s4
n133_match_lit_β:       mov              r11, 51
                        sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_130_af
                        .size            n133_match_lit_bx, .-n133_match_lit_bx
                        .type            n134_match_defer_bx, @function
n134_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_match_defer_α:     mov              r11, 52
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_146_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_146_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_146_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_146_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_146_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_146_18
.Lmatch_defer_α_146_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_146_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_146_16:
.Lmatch_defer_α_146_18: test             rax, rax;                            jz    .Lmatch_defer_α_146_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_146_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_146_4:                                                        jmp   .Lmatch_alternate_γ_130_s3
.Lmatch_defer_α_146_5:                                                        jmp   .Lmatch_alternate_ω_130_af
.Lmatch_defer_α_146_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_130_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_146_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_130_s3
.Lmatch_defer_α_146_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_130_af
n134_match_defer_β:     mov              r11, 52
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_146_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_146_12
                                                                              jmp   rax
.Lmatch_defer_β_146_12:                                                       jmp   qword ptr [rsp]
                        .size            n134_match_defer_bx, .-n134_match_defer_bx
                        .type            n135_match_defer_bx, @function
n135_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_match_defer_α:     mov              r11, 53
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_147_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_147_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_147_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_147_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_147_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_147_18
.Lmatch_defer_α_147_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_147_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_147_16:
.Lmatch_defer_α_147_18: test             rax, rax;                            jz    .Lmatch_defer_α_147_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_147_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_147_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_147_4:                                                        jmp   .Lmatch_alternate_γ_130_s2
.Lmatch_defer_α_147_5:                                                        jmp   .Lmatch_alternate_ω_130_af
.Lmatch_defer_α_147_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_130_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_147_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_130_s2
.Lmatch_defer_α_147_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_130_af
n135_match_defer_β:     mov              r11, 53
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_147_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_147_12
                                                                              jmp   rax
.Lmatch_defer_β_147_12:                                                       jmp   qword ptr [rsp]
                        .size            n135_match_defer_bx, .-n135_match_defer_bx
                        .type            n136_match_defer_bx, @function
n136_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_match_defer_α:     mov              r11, 54
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_148_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_148_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_148_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_148_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_148_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_148_18
.Lmatch_defer_α_148_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_148_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_148_16:
.Lmatch_defer_α_148_18: test             rax, rax;                            jz    .Lmatch_defer_α_148_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_148_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_148_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_148_4:                                                        jmp   .Lmatch_alternate_γ_130_s1
.Lmatch_defer_α_148_5:                                                        jmp   .Lmatch_alternate_ω_130_af
.Lmatch_defer_α_148_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_130_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_148_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_130_s1
.Lmatch_defer_α_148_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_130_af
n136_match_defer_β:     mov              r11, 54
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_148_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_148_12
                                                                              jmp   rax
.Lmatch_defer_β_148_12:                                                       jmp   qword ptr [rsp]
                        .size            n136_match_defer_bx, .-n136_match_defer_bx
                        .type            n137_match_defer_bx, @function
n137_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_match_defer_α:     mov              r11, 55
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_149_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_149_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_149_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_149_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_149_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_149_18
.Lmatch_defer_α_149_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_149_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_149_16:
.Lmatch_defer_α_149_18: test             rax, rax;                            jz    .Lmatch_defer_α_149_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_149_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_149_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_149_4:                                                        jmp   .Lmatch_alternate_γ_130_s0
.Lmatch_defer_α_149_5:                                                        jmp   .Lmatch_alternate_ω_130_af
.Lmatch_defer_α_149_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_130_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_149_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_130_s0
.Lmatch_defer_α_149_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_130_af
n137_match_defer_β:     mov              r11, 55
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_149_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_149_12
                                                                              jmp   rax
.Lmatch_defer_β_149_12:                                                       jmp   qword ptr [rsp]
                        .size            n137_match_defer_bx, .-n137_match_defer_bx
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
                        .type            n150_match_pos_bx, @function
n150_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_match_pos_α:       mov              r11, 56
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$5_ω
                                                                              jmp   n151_match_defer_α
n150_match_pos_β:       mov              r11, 56;                             jmp   PAT$5_ω
                        .size            n150_match_pos_bx, .-n150_match_pos_bx
                        .type            n151_match_defer_bx, @function
n151_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:     sub              rsp, 16
                        mov              r11, 57
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_154_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_154_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_154_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_154_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_154_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_154_18
.Lmatch_defer_α_154_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_154_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_154_16:
.Lmatch_defer_α_154_18: test             rax, rax;                            jz    .Lmatch_defer_α_154_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_154_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_154_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_154_4:                                                        jmp   n152_match_rpos_α
.Lmatch_defer_α_154_5:  add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_154_0:  push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_154_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_154_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_154_6]
                        push             rcx
                        push             rax;                                 jmp   n152_match_rpos_α
.Lmatch_defer_α_154_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n151_match_defer_β:     mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_154_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_154_12
                                                                              jmp   rax
.Lmatch_defer_β_154_12:                                                       jmp   qword ptr [rsp]
                        .size            n151_match_defer_bx, .-n151_match_defer_bx
                        .type            n152_match_rpos_bx, @function
n152_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_match_rpos_α:      mov              r11, 58
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n151_match_defer_β
                                                                              jmp   PAT$5_γ
n152_match_rpos_β:      mov              r11, 58;                             jmp   n151_match_defer_β
                        .size            n152_match_rpos_bx, .-n152_match_rpos_bx
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
                        sub              rsp, 65544
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
.Lgvan11:               .string          "EXPR$0$jelement"
.Lgvan12:               .string          "EXPR$1$jelement"
.Lgvan13:               .string          "EXPR$2$jelement"
.Lgvan14:               .string          "EXPR$3$jvalue"
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
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n156_lit_integer_α:     sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_lit_integer_α
.Llit_integer_α_336_0:  .quad            18446744073709551615
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_lit_string_α
.Llit_integer_α_337_0:  .quad            0
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 27
                        mov              rax, qword ptr [rip + .Llit_string_α_338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_call_α
.Llit_string_α_338_0:   .quad            .Llit_string_α_338_0_s
.Llit_string_α_338_0_s: .string          "snobol4/json/json-match.sno"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_call_bx, @function
n159_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 62
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
.Lcall_α_rkfnzd340:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd340]
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
                        cmp              al, 104;                             jne   .Lcall_α_339_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
.Lcall_α_339_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_statement_begin_α
n159_call_β:            mov              r11, 62
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
                        .size            n159_call_bx, .-n159_call_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 63
                        mov              r10, 1;                              jmp   n161_lit_integer_α
n160_statement_begin_β: mov              r11, 63
                        add              rsp, 64;                             jmp   n164_statement_begin_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_kw_assign_snobol4_α
.Llit_integer_α_343_0:  .quad            0
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_kw_assign_snobol4_bx, @function
n162_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_344_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_344_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
.Lkw_assign_snobol4_α_344_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_statement_end_α
.Lkw_assign_snobol4_α_344_0:
                        .quad            1
                        .size            n162_kw_assign_snobol4_bx, .-n162_kw_assign_snobol4_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 66
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n164_statement_begin_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#=======================================================================================================================
#                 $' '           =  SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | ''
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n164_statement_begin_α: mov              r11, 67
                        mov              r10, 2;                              jmp   n165_lit_string_α
n164_statement_begin_β: mov              r11, 67;                             jmp   n183_statement_begin_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          " "
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 69
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd351:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd351]
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
                        cmp              al, 104;                             jne   .Lcall_α_350_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Lcall_α_350_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_lit_integer_α
n166_call_β:            mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
                        .size            n166_call_bx, .-n166_call_bx
                        .type            n167_lit_integer_bx, @function
n167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_352_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_lit_string_α
n167_lit_integer_β:     mov              r11, 70
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n164_statement_begin_β
.Llit_integer_α_352_0:  .quad            30
                        .size            n167_lit_integer_bx, .-n167_lit_integer_bx
                        .type            n168_lit_string_bx, @function
n168_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_353_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_lit_integer_α
n168_lit_string_β:      mov              r11, 71
                        add              rsp, 16;                             jmp   n167_lit_integer_β
.Llit_string_α_353_0:   .quad            .Llit_string_α_353_0_s
.Llit_string_α_353_0_s: .string          " "
                        .size            n168_lit_string_bx, .-n168_lit_string_bx
                        .type            n169_lit_integer_bx, @function
n169_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_α
n169_lit_integer_β:     mov              r11, 72
                        add              rsp, 16;                             jmp   n168_lit_string_β
.Llit_integer_α_354_0:  .quad            9
                        .size            n169_lit_integer_bx, .-n169_lit_integer_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            sub              rsp, 16
                        mov              r11, 73
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd73:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd73]
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
                        cmp              al, 104;                             jne   .Lcall_α_355_240
                        add              rsp, 16;                             jmp   n169_lit_integer_β
.Lcall_α_355_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_binop_α
n170_call_β:            mov              r11, 73
                        add              rsp, 16;                             jmp   n169_lit_integer_β
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_binop_bx, @function
n171_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_lit_integer_α
n171_binop_β:           mov              r11, 74
                        add              rsp, 32;                             jmp   n169_lit_integer_β
                        .size            n171_binop_bx, .-n171_binop_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_α
n172_lit_integer_β:     mov              r11, 75
                        add              rsp, 16;                             jmp   n171_binop_β
.Llit_integer_α_357_0:  .quad            10
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_call_bx, @function
n173_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_α:            sub              rsp, 16
                        mov              r11, 76
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd76:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd76]
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
                        cmp              al, 104;                             jne   .Lcall_α_358_240
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Lcall_α_358_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_binop_α
n173_call_β:            mov              r11, 76
                        add              rsp, 16;                             jmp   n172_lit_integer_β
                        .size            n173_call_bx, .-n173_call_bx
                        .type            n174_binop_bx, @function
n174_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              r11, 77
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_lit_integer_α
n174_binop_β:           mov              r11, 77
                        add              rsp, 32;                             jmp   n172_lit_integer_β
                        .size            n174_binop_bx, .-n174_binop_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_call_α
n175_lit_integer_β:     mov              r11, 78
                        add              rsp, 16;                             jmp   n174_binop_β
.Llit_integer_α_360_0:  .quad            13
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_call_bx, @function
n176_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:            sub              rsp, 16
                        mov              r11, 79
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd79:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd79]
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
                        cmp              al, 104;                             jne   .Lcall_α_361_240
                        add              rsp, 16;                             jmp   n175_lit_integer_β
.Lcall_α_361_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_binop_α
n176_call_β:            mov              r11, 79
                        add              rsp, 16;                             jmp   n175_lit_integer_β
                        .size            n176_call_bx, .-n176_call_bx
                        .type            n177_binop_bx, @function
n177_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_α:           sub              rsp, 16
                        mov              r11, 80
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n178_call_α
n177_binop_β:           mov              r11, 80
                        add              rsp, 32;                             jmp   n175_lit_integer_β
                        .size            n177_binop_bx, .-n177_binop_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            sub              rsp, 16
                        mov              r11, 81
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
.Lcall_α_bynamefnzd81:  .string          "SNO$PBK"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd81]
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
                        cmp              al, 104;                             jne   .Lcall_α_363_240
                        add              rsp, 16;                             jmp   n177_binop_β
.Lcall_α_363_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_lit_string_α
n178_call_β:            mov              r11, 81
                        add              rsp, 16;                             jmp   n177_binop_β
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_lit_string_bx, @function
n179_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_364_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_call_α
n179_lit_string_β:      mov              r11, 82
                        add              rsp, 32;                             jmp   n177_binop_β
.Llit_string_α_364_0:   .quad            .Llit_string_α_364_0_s
.Llit_string_α_364_0_s: .string          ""
                        .size            n179_lit_string_bx, .-n179_lit_string_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            sub              rsp, 16
                        mov              r11, 83
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
.Lcall_α_bynamefnzd83:  .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd83]
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
                        cmp              al, 104;                             jne   .Lcall_α_365_240
                        add              rsp, 16;                             jmp   n179_lit_string_β
.Lcall_α_365_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_assign_var_α
n180_call_β:            mov              r11, 83
                        add              rsp, 16;                             jmp   n179_lit_string_β
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_assign_var_bx, @function
n181_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_var_α:      sub              rsp, 16
                        mov              r11, 84
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
                        cmp              al, 104;                             jne   .Lassign_var_α_366_240
                        add              rsp, 32;                             jmp   n179_lit_string_β
.Lassign_var_α_366_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_statement_end_α
                        .size            n181_assign_var_bx, .-n181_assign_var_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 85
                        mov              r10, 2
                        add              rsp, 272;                            jmp   n183_statement_begin_α
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n183_statement_begin_α: mov              r11, 86
                        mov              r10, 3;                              jmp   n184_lit_string_α
n183_statement_begin_β: mov              r11, 86;                             jmp   n188_statement_begin_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_lit_string_bx, @function
n184_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      sub              rsp, 16
                        mov              r11, 87
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_call_α
.Llit_string_α_371_0:   .quad            .Llit_string_α_371_0_s
.Llit_string_α_371_0_s: .string          "PAT$0"
                        .size            n184_lit_string_bx, .-n184_lit_string_bx
                        .type            n185_call_bx, @function
n185_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            sub              rsp, 16
                        mov              r11, 88
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd373:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd373]
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
                        cmp              al, 104;                             jne   .Lcall_α_372_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
.Lcall_α_372_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
n185_call_β:            mov              r11, 88
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
                        .size            n185_call_bx, .-n185_call_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 89
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # jescape
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
                        mov              rdi, qword ptr [rip + .Lassign_α_374_0]
                        .section         .rodata
.Lassign_α_374_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_374_1_s]
                        mov              r8, 5
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
                        pop              rax;                                 jmp   n187_statement_end_α
.Lassign_α_374_0:       .quad            .Lassign_α_374_0_s
.Lassign_α_374_0_s:     .string          "jescape"
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 90
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n188_statement_begin_α
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n188_statement_begin_α: mov              r11, 91
                        mov              r10, 4;                              jmp   n189_lit_string_α
n188_statement_begin_β: mov              r11, 91;                             jmp   n193_statement_begin_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_lit_string_bx, @function
n189_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_call_α
.Llit_string_α_379_0:   .quad            .Llit_string_α_379_0_s
.Llit_string_α_379_0_s: .string          "PAT$1"
                        .size            n189_lit_string_bx, .-n189_lit_string_bx
                        .type            n190_call_bx, @function
n190_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            sub              rsp, 16
                        mov              r11, 93
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd381:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd381]
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
                        cmp              al, 104;                             jne   .Lcall_α_380_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
.Lcall_α_380_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_assign_α
n190_call_β:            mov              r11, 93
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n188_statement_begin_β
                        .size            n190_call_bx, .-n190_call_bx
                        .type            n191_assign_bx, @function
n191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # jchunk
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
                        mov              rdi, qword ptr [rip + .Lassign_α_382_0]
                        .section         .rodata
.Lassign_α_382_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_382_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n192_statement_end_α
.Lassign_α_382_0:       .quad            .Lassign_α_382_0_s
.Lassign_α_382_0_s:     .string          "jchunk"
                        .size            n191_assign_bx, .-n191_assign_bx
                        .type            n192_statement_end_bx, @function
n192_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 95
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n193_statement_begin_α
                        .size            n192_statement_end_bx, .-n192_statement_end_bx
                        .type            n193_statement_begin_bx, @function
n193_statement_begin_bx:
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n193_statement_begin_α: mov              r11, 96
                        mov              r10, 5;                              jmp   n194_var_α
n193_statement_begin_β: mov              r11, 96;                             jmp   n205_statement_begin_α
                        .size            n193_statement_begin_bx, .-n193_statement_begin_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 0]              # jescape
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_var_α
n195_var_β:             mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_var_bx, @function
n196_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_assign_α
n196_var_β:             mov              r11, 99
                        add              rsp, 16;                             jmp   n195_var_β
                        .size            n196_var_bx, .-n196_var_bx
                        .type            n197_assign_bx, @function
n197_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 100
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 240], rax            # PAT$2$V0
                        mov              qword ptr [r9 + 248], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_390_0]
                        .section         .rodata
.Lassign_α_390_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_390_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n198_assign_α
.Lassign_α_390_0:       .quad            .Lassign_α_390_0_s
.Lassign_α_390_0_s:     .string          "PAT$2$V0"
                        .size            n197_assign_bx, .-n197_assign_bx
                        .type            n198_assign_bx, @function
n198_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 256], rax            # PAT$2$V1
                        mov              qword ptr [r9 + 264], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_391_0]
                        .section         .rodata
.Lassign_α_391_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_391_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n199_assign_α
.Lassign_α_391_0:       .quad            .Lassign_α_391_0_s
.Lassign_α_391_0_s:     .string          "PAT$2$V1"
                        .size            n198_assign_bx, .-n198_assign_bx
                        .type            n199_assign_bx, @function
n199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_assign_α:          mov              r11, 102
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax            # PAT$2$V2
                        mov              qword ptr [r9 + 280], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_392_0]
                        .section         .rodata
.Lassign_α_392_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_392_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n200_lit_string_α
.Lassign_α_392_0:       .quad            .Lassign_α_392_0_s
.Lassign_α_392_0_s:     .string          "PAT$2$V2"
                        .size            n199_assign_bx, .-n199_assign_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_lit_string_α
n200_lit_string_β:      mov              r11, 103
                        add              rsp, 16;                             jmp   n196_var_β
.Llit_string_α_393_0:   .quad            .Llit_string_α_393_0_s
.Llit_string_α_393_0_s: .string          "PAT$2"
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_lit_string_bx, @function
n201_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_call_α
n201_lit_string_β:      mov              r11, 104
                        add              rsp, 16;                             jmp   n200_lit_string_β
.Llit_string_α_394_0:   .quad            .Llit_string_α_394_0_s
.Llit_string_α_394_0_s: .string          "3"
                        .size            n201_lit_string_bx, .-n201_lit_string_bx
                        .type            n202_call_bx, @function
n202_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        mov              r11, 105
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
.Lcall_α_rkfnzd396:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd396]
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
                        cmp              al, 104;                             jne   .Lcall_α_395_240
                        add              rsp, 16;                             jmp   n201_lit_string_β
.Lcall_α_395_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_assign_α
n202_call_β:            mov              r11, 105
                        add              rsp, 16;                             jmp   n201_lit_string_β
                        .size            n202_call_bx, .-n202_call_bx
                        .type            n203_assign_bx, @function
n203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 106
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # jstring
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
                        mov              rdi, qword ptr [rip + .Lassign_α_397_0]
                        .section         .rodata
.Lassign_α_397_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_397_1_s]
                        mov              r8, 14
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
                        pop              rax;                                 jmp   n204_statement_end_α
.Lassign_α_397_0:       .quad            .Lassign_α_397_0_s
.Lassign_α_397_0_s:     .string          "jstring"
                        .size            n203_assign_bx, .-n203_assign_bx
                        .type            n204_statement_end_bx, @function
n204_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 107
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n205_statement_begin_α
                        .size            n204_statement_end_bx, .-n204_statement_end_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
#=======================================================================================================================
#                 jnumber        =  ('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n205_statement_begin_α: mov              r11, 108
                        mov              r10, 6;                              jmp   n206_lit_string_α
n205_statement_begin_β: mov              r11, 108;                            jmp   n210_statement_begin_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_lit_string_bx, @function
n206_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_402_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_call_α
.Llit_string_α_402_0:   .quad            .Llit_string_α_402_0_s
.Llit_string_α_402_0_s: .string          "PAT$3"
                        .size            n206_lit_string_bx, .-n206_lit_string_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            sub              rsp, 16
                        mov              r11, 110
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd404:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd404]
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
                        cmp              al, 104;                             jne   .Lcall_α_403_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
.Lcall_α_403_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_assign_α
n207_call_β:            mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_assign_bx, @function
n208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # jnumber
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
                        mov              rdi, qword ptr [rip + .Lassign_α_405_0]
                        .section         .rodata
.Lassign_α_405_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_405_1_s]
                        mov              r8, 16
                        mov              r9, 6
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
                        pop              rax;                                 jmp   n209_statement_end_α
.Lassign_α_405_0:       .quad            .Lassign_α_405_0_s
.Lassign_α_405_0_s:     .string          "jnumber"
                        .size            n208_assign_bx, .-n208_assign_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 112
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n210_statement_begin_α
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_statement_begin_bx, @function
n210_statement_begin_bx:
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n210_statement_begin_α: mov              r11, 113
                        mov              r10, 7;                              jmp   n211_lit_string_α
n210_statement_begin_β: mov              r11, 113;                            jmp   n227_statement_begin_α
                        .size            n210_statement_begin_bx, .-n210_statement_begin_bx
                        .type            n211_lit_string_bx, @function
n211_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_call_α
.Llit_string_α_410_0:   .quad            .Llit_string_α_410_0_s
.Llit_string_α_410_0_s: .string          " "
                        .size            n211_lit_string_bx, .-n211_lit_string_bx
                        .type            n212_call_bx, @function
n212_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            sub              rsp, 16
                        mov              r11, 115
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd412:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd412]
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
                        cmp              al, 104;                             jne   .Lcall_α_411_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
.Lcall_α_411_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_deref_α
n212_call_β:            mov              r11, 115
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
                        .size            n212_call_bx, .-n212_call_bx
                        .type            n213_deref_bx, @function
n213_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_deref_α:           sub              rsp, 16
                        mov              r11, 116
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
                        cmp              al, 104;                             jne   .Lderef_α_413_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n210_statement_begin_β
.Lderef_α_413_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_var_α
n213_deref_β:           mov              r11, 116
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n210_statement_begin_β
                        .size            n213_deref_bx, .-n213_deref_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             mov              r11, 117
                        add              rsp, 16;                             jmp   n213_deref_β
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_binop_bx, @function
n215_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 118
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n216_lit_string_α
n215_binop_β:           mov              r11, 118
                        add              rsp, 16;                             jmp   n214_var_β
                        .size            n215_binop_bx, .-n215_binop_bx
                        .type            n216_lit_string_bx, @function
n216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      sub              rsp, 16
                        mov              r11, 119
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_call_α
n216_lit_string_β:      mov              r11, 119
                        add              rsp, 16;                             jmp   n215_binop_β
.Llit_string_α_416_0:   .quad            .Llit_string_α_416_0_s
.Llit_string_α_416_0_s: .string          " "
                        .size            n216_lit_string_bx, .-n216_lit_string_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            sub              rsp, 16
                        mov              r11, 120
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd418:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd418]
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
                        cmp              al, 104;                             jne   .Lcall_α_417_240
                        add              rsp, 16;                             jmp   n216_lit_string_β
.Lcall_α_417_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_deref_α
n217_call_β:            mov              r11, 120
                        add              rsp, 16;                             jmp   n216_lit_string_β
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_deref_bx, @function
n218_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_deref_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lderef_α_419_240
                        add              rsp, 32;                             jmp   n216_lit_string_β
.Lderef_α_419_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_binop_α
n218_deref_β:           mov              r11, 121
                        add              rsp, 32;                             jmp   n216_lit_string_β
                        .size            n218_deref_bx, .-n218_deref_bx
                        .type            n219_binop_bx, @function
n219_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:           sub              rsp, 16
                        mov              r11, 122
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n220_lit_string_α
n219_binop_β:           mov              r11, 122
                        add              rsp, 16;                             jmp   n218_deref_β
                        .size            n219_binop_bx, .-n219_binop_bx
                        .type            n220_lit_string_bx, @function
n220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_string_β:      mov              r11, 123
                        add              rsp, 16;                             jmp   n219_binop_β
.Llit_string_α_421_0:   .quad            .Llit_string_α_421_0_s
.Llit_string_α_421_0_s: .string          ":"
                        .size            n220_lit_string_bx, .-n220_lit_string_bx
                        .type            n221_binop_bx, @function
n221_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 124
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_lit_string_α
n221_binop_β:           mov              r11, 124
                        add              rsp, 16;                             jmp   n220_lit_string_β
                        .size            n221_binop_bx, .-n221_binop_bx
                        .type            n222_lit_string_bx, @function
n222_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_call_α
n222_lit_string_β:      mov              r11, 125
                        add              rsp, 16;                             jmp   n221_binop_β
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "EXPR$0$jelement"
                        .size            n222_lit_string_bx, .-n222_lit_string_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        mov              r11, 126
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd425:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd425]
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
                        cmp              al, 104;                             jne   .Lcall_α_424_240
                        add              rsp, 16;                             jmp   n222_lit_string_β
.Lcall_α_424_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_binop_α
n223_call_β:            mov              r11, 126
                        add              rsp, 16;                             jmp   n222_lit_string_β
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_binop_bx, @function
n224_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_binop_α:           sub              rsp, 16
                        mov              r11, 127
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_assign_α
                        .size            n224_binop_bx, .-n224_binop_bx
                        .type            n225_assign_bx, @function
n225_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:          mov              r11, 128
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # jmember
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
                        mov              rdi, qword ptr [rip + .Lassign_α_427_0]
                        .section         .rodata
.Lassign_α_427_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_427_1_s]
                        mov              r8, 23
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
                        pop              rax;                                 jmp   n226_statement_end_α
.Lassign_α_427_0:       .quad            .Lassign_α_427_0_s
.Lassign_α_427_0_s:     .string          "jmember"
                        .size            n225_assign_bx, .-n225_assign_bx
                        .type            n226_statement_end_bx, @function
n226_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:   mov              r11, 129
                        mov              r10, 7
                        add              rsp, 224;                            jmp   n227_statement_begin_α
                        .size            n226_statement_end_bx, .-n226_statement_end_bx
                        .type            n227_statement_begin_bx, @function
n227_statement_begin_bx:
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n227_statement_begin_α: mov              r11, 130
                        mov              r10, 8;                              jmp   n228_lit_string_α
n227_statement_begin_β: mov              r11, 130;                            jmp   n248_statement_begin_α
                        .size            n227_statement_begin_bx, .-n227_statement_begin_bx
                        .type            n228_lit_string_bx, @function
n228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_432_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_var_α
.Llit_string_α_432_0:   .quad            .Llit_string_α_432_0_s
.Llit_string_α_432_0_s: .string          "{"
                        .size            n228_lit_string_bx, .-n228_lit_string_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              r11, 132
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_lit_string_α
n229_var_β:             mov              r11, 132
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n227_statement_begin_β
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_lit_string_bx, @function
n230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_call_α
n230_lit_string_β:      mov              r11, 133
                        add              rsp, 16;                             jmp   n229_var_β
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          " "
                        .size            n230_lit_string_bx, .-n230_lit_string_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
                        mov              r11, 134
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd436:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd436]
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
                        cmp              al, 104;                             jne   .Lcall_α_435_240
                        add              rsp, 16;                             jmp   n230_lit_string_β
.Lcall_α_435_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_deref_α
n231_call_β:            mov              r11, 134
                        add              rsp, 16;                             jmp   n230_lit_string_β
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_deref_bx, @function
n232_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_deref_α:           sub              rsp, 16
                        mov              r11, 135
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
                        cmp              al, 104;                             jne   .Lderef_α_437_240
                        add              rsp, 32;                             jmp   n230_lit_string_β
.Lderef_α_437_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_lit_string_α
n232_deref_β:           mov              r11, 135
                        add              rsp, 32;                             jmp   n230_lit_string_β
                        .size            n232_deref_bx, .-n232_deref_bx
                        .type            n233_lit_string_bx, @function
n233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n234_binop_α
n233_lit_string_β:      mov              r11, 136
                        add              rsp, 16;                             jmp   n232_deref_β
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          ","
                        .size            n233_lit_string_bx, .-n233_lit_string_bx
                        .type            n234_binop_bx, @function
n234_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              r11, 137
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_var_α
n234_binop_β:           mov              r11, 137
                        add              rsp, 16;                             jmp   n233_lit_string_β
                        .size            n234_binop_bx, .-n234_binop_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_binop_α
n235_var_β:             mov              r11, 138
                        add              rsp, 16;                             jmp   n234_binop_β
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_binop_bx, @function
n236_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 139
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_call_α
n236_binop_β:           mov              r11, 139
                        add              rsp, 16;                             jmp   n235_var_β
                        .size            n236_binop_bx, .-n236_binop_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        mov              r11, 140
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd140: .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd140]
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
                        cmp              al, 104;                             jne   .Lcall_α_442_240
                        add              rsp, 16;                             jmp   n236_binop_β
.Lcall_α_442_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_binop_α
n237_call_β:            mov              r11, 140
                        add              rsp, 16;                             jmp   n236_binop_β
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_binop_bx, @function
n238_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_binop_α:           sub              rsp, 16
                        mov              r11, 141
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n239_lit_string_α
n238_binop_β:           mov              r11, 141
                        add              rsp, 32;                             jmp   n236_binop_β
                        .size            n238_binop_bx, .-n238_binop_bx
                        .type            n239_lit_string_bx, @function
n239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_call_α
n239_lit_string_β:      mov              r11, 142
                        add              rsp, 16;                             jmp   n238_binop_β
.Llit_string_α_444_0:   .quad            .Llit_string_α_444_0_s
.Llit_string_α_444_0_s: .string          " "
                        .size            n239_lit_string_bx, .-n239_lit_string_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            sub              rsp, 16
                        mov              r11, 143
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd446:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd446]
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
                        cmp              al, 104;                             jne   .Lcall_α_445_240
                        add              rsp, 16;                             jmp   n239_lit_string_β
.Lcall_α_445_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_deref_α
n240_call_β:            mov              r11, 143
                        add              rsp, 16;                             jmp   n239_lit_string_β
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_deref_bx, @function
n241_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_deref_α:           sub              rsp, 16
                        mov              r11, 144
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
                        cmp              al, 104;                             jne   .Lderef_α_447_240
                        add              rsp, 32;                             jmp   n239_lit_string_β
.Lderef_α_447_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_call_α
n241_deref_β:           mov              r11, 144
                        add              rsp, 32;                             jmp   n239_lit_string_β
                        .size            n241_deref_bx, .-n241_deref_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            sub              rsp, 16
                        mov              r11, 145
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
.Lcall_α_bynamefnzd145: .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd145]
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
                        cmp              al, 104;                             jne   .Lcall_α_448_240
                        add              rsp, 16;                             jmp   n241_deref_β
.Lcall_α_448_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_binop_α
n242_call_β:            mov              r11, 145
                        add              rsp, 16;                             jmp   n241_deref_β
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_binop_bx, @function
n243_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           sub              rsp, 16
                        mov              r11, 146
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_lit_string_α
n243_binop_β:           mov              r11, 146
                        add              rsp, 32;                             jmp   n241_deref_β
                        .size            n243_binop_bx, .-n243_binop_bx
                        .type            n244_lit_string_bx, @function
n244_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_binop_α
n244_lit_string_β:      mov              r11, 147
                        add              rsp, 16;                             jmp   n243_binop_β
.Llit_string_α_450_0:   .quad            .Llit_string_α_450_0_s
.Llit_string_α_450_0_s: .string          "}"
                        .size            n244_lit_string_bx, .-n244_lit_string_bx
                        .type            n245_binop_bx, @function
n245_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 148
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_assign_α
                        .size            n245_binop_bx, .-n245_binop_bx
                        .type            n246_assign_bx, @function
n246_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # jobject
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
                        mov              rdi, qword ptr [rip + .Lassign_α_452_0]
                        .section         .rodata
.Lassign_α_452_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_452_1_s]
                        mov              r8, 24
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
                        pop              rax;                                 jmp   n247_statement_end_α
.Lassign_α_452_0:       .quad            .Lassign_α_452_0_s
.Lassign_α_452_0_s:     .string          "jobject"
                        .size            n246_assign_bx, .-n246_assign_bx
                        .type            n247_statement_end_bx, @function
n247_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 150
                        mov              r10, 8
                        add              rsp, 288;                            jmp   n248_statement_begin_α
                        .size            n247_statement_end_bx, .-n247_statement_end_bx
                        .type            n248_statement_begin_bx, @function
n248_statement_begin_bx:
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n248_statement_begin_α: mov              r11, 151
                        mov              r10, 9;                              jmp   n249_lit_string_α
n248_statement_begin_β: mov              r11, 151;                            jmp   n271_statement_begin_α
                        .size            n248_statement_begin_bx, .-n248_statement_begin_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_lit_string_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "["
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_lit_string_bx, @function
n250_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_458_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n251_call_α
n250_lit_string_β:      mov              r11, 153
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
.Llit_string_α_458_0:   .quad            .Llit_string_α_458_0_s
.Llit_string_α_458_0_s: .string          "EXPR$1$jelement"
                        .size            n250_lit_string_bx, .-n250_lit_string_bx
                        .type            n251_call_bx, @function
n251_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            sub              rsp, 16
                        mov              r11, 154
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd460:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd460]
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
                        cmp              al, 104;                             jne   .Lcall_α_459_240
                        add              rsp, 16;                             jmp   n250_lit_string_β
.Lcall_α_459_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_lit_string_α
n251_call_β:            mov              r11, 154
                        add              rsp, 16;                             jmp   n250_lit_string_β
                        .size            n251_call_bx, .-n251_call_bx
                        .type            n252_lit_string_bx, @function
n252_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_461_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n253_call_α
n252_lit_string_β:      mov              r11, 155
                        add              rsp, 32;                             jmp   n250_lit_string_β
.Llit_string_α_461_0:   .quad            .Llit_string_α_461_0_s
.Llit_string_α_461_0_s: .string          " "
                        .size            n252_lit_string_bx, .-n252_lit_string_bx
                        .type            n253_call_bx, @function
n253_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:            sub              rsp, 16
                        mov              r11, 156
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd463:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd463]
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
                        cmp              al, 104;                             jne   .Lcall_α_462_240
                        add              rsp, 16;                             jmp   n252_lit_string_β
.Lcall_α_462_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_deref_α
n253_call_β:            mov              r11, 156
                        add              rsp, 16;                             jmp   n252_lit_string_β
                        .size            n253_call_bx, .-n253_call_bx
                        .type            n254_deref_bx, @function
n254_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_deref_α:           sub              rsp, 16
                        mov              r11, 157
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
                        cmp              al, 104;                             jne   .Lderef_α_464_240
                        add              rsp, 32;                             jmp   n252_lit_string_β
.Lderef_α_464_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_lit_string_α
n254_deref_β:           mov              r11, 157
                        add              rsp, 32;                             jmp   n252_lit_string_β
                        .size            n254_deref_bx, .-n254_deref_bx
                        .type            n255_lit_string_bx, @function
n255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_binop_α
n255_lit_string_β:      mov              r11, 158
                        add              rsp, 16;                             jmp   n254_deref_β
.Llit_string_α_465_0:   .quad            .Llit_string_α_465_0_s
.Llit_string_α_465_0_s: .string          ","
                        .size            n255_lit_string_bx, .-n255_lit_string_bx
                        .type            n256_binop_bx, @function
n256_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           sub              rsp, 16
                        mov              r11, 159
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_lit_string_α
n256_binop_β:           mov              r11, 159
                        add              rsp, 16;                             jmp   n255_lit_string_β
                        .size            n256_binop_bx, .-n256_binop_bx
                        .type            n257_lit_string_bx, @function
n257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_call_α
n257_lit_string_β:      mov              r11, 160
                        add              rsp, 16;                             jmp   n256_binop_β
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          "EXPR$2$jelement"
                        .size            n257_lit_string_bx, .-n257_lit_string_bx
                        .type            n258_call_bx, @function
n258_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            sub              rsp, 16
                        mov              r11, 161
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd469:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd469]
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
                        cmp              al, 104;                             jne   .Lcall_α_468_240
                        add              rsp, 16;                             jmp   n257_lit_string_β
.Lcall_α_468_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n259_binop_α
n258_call_β:            mov              r11, 161
                        add              rsp, 16;                             jmp   n257_lit_string_β
                        .size            n258_call_bx, .-n258_call_bx
                        .type            n259_binop_bx, @function
n259_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 162
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_call_α
n259_binop_β:           mov              r11, 162
                        add              rsp, 32;                             jmp   n257_lit_string_β
                        .size            n259_binop_bx, .-n259_binop_bx
                        .type            n260_call_bx, @function
n260_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            sub              rsp, 16
                        mov              r11, 163
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd163: .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd163]
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
                        cmp              al, 104;                             jne   .Lcall_α_471_240
                        add              rsp, 16;                             jmp   n259_binop_β
.Lcall_α_471_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n261_binop_α
n260_call_β:            mov              r11, 163
                        add              rsp, 16;                             jmp   n259_binop_β
                        .size            n260_call_bx, .-n260_call_bx
                        .type            n261_binop_bx, @function
n261_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_binop_α:           sub              rsp, 16
                        mov              r11, 164
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_lit_string_α
n261_binop_β:           mov              r11, 164
                        add              rsp, 32;                             jmp   n259_binop_β
                        .size            n261_binop_bx, .-n261_binop_bx
                        .type            n262_lit_string_bx, @function
n262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_call_α
n262_lit_string_β:      mov              r11, 165
                        add              rsp, 16;                             jmp   n261_binop_β
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          " "
                        .size            n262_lit_string_bx, .-n262_lit_string_bx
                        .type            n263_call_bx, @function
n263_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            sub              rsp, 16
                        mov              r11, 166
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd475:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd475]
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
                        cmp              al, 104;                             jne   .Lcall_α_474_240
                        add              rsp, 16;                             jmp   n262_lit_string_β
.Lcall_α_474_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_deref_α
n263_call_β:            mov              r11, 166
                        add              rsp, 16;                             jmp   n262_lit_string_β
                        .size            n263_call_bx, .-n263_call_bx
                        .type            n264_deref_bx, @function
n264_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_deref_α:           sub              rsp, 16
                        mov              r11, 167
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
                        cmp              al, 104;                             jne   .Lderef_α_476_240
                        add              rsp, 32;                             jmp   n262_lit_string_β
.Lderef_α_476_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_call_α
n264_deref_β:           mov              r11, 167
                        add              rsp, 32;                             jmp   n262_lit_string_β
                        .size            n264_deref_bx, .-n264_deref_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            sub              rsp, 16
                        mov              r11, 168
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
.Lcall_α_bynamefnzd168: .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd168]
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
                        cmp              al, 104;                             jne   .Lcall_α_477_240
                        add              rsp, 16;                             jmp   n264_deref_β
.Lcall_α_477_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_binop_α
n265_call_β:            mov              r11, 168
                        add              rsp, 16;                             jmp   n264_deref_β
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_binop_bx, @function
n266_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              r11, 169
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n267_lit_string_α
n266_binop_β:           mov              r11, 169
                        add              rsp, 32;                             jmp   n264_deref_β
                        .size            n266_binop_bx, .-n266_binop_bx
                        .type            n267_lit_string_bx, @function
n267_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n268_binop_α
n267_lit_string_β:      mov              r11, 170
                        add              rsp, 16;                             jmp   n266_binop_β
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "]"
                        .size            n267_lit_string_bx, .-n267_lit_string_bx
                        .type            n268_binop_bx, @function
n268_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 171
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_assign_α
                        .size            n268_binop_bx, .-n268_binop_bx
                        .type            n269_assign_bx, @function
n269_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # jarray
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
                        mov              rdi, qword ptr [rip + .Lassign_α_481_0]
                        .section         .rodata
.Lassign_α_481_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_481_1_s]
                        mov              r8, 25
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
                        pop              rax;                                 jmp   n270_statement_end_α
.Lassign_α_481_0:       .quad            .Lassign_α_481_0_s
.Lassign_α_481_0_s:     .string          "jarray"
                        .size            n269_assign_bx, .-n269_assign_bx
                        .type            n270_statement_end_bx, @function
n270_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 173
                        mov              r10, 9
                        add              rsp, 320;                            jmp   n271_statement_begin_α
                        .size            n270_statement_end_bx, .-n270_statement_end_bx
                        .type            n271_statement_begin_bx, @function
n271_statement_begin_bx:
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n271_statement_begin_α: mov              r11, 174
                        mov              r10, 10;                             jmp   n272_var_α
n271_statement_begin_β: mov              r11, 174;                            jmp   n285_statement_begin_α
                        .size            n271_statement_begin_bx, .-n271_statement_begin_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 175
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_var_α
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_var_bx, @function
n273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 176
                        mov              rax, qword ptr [r9 + 48]             # jnumber
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
n273_var_β:             mov              r11, 176
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n271_statement_begin_β
                        .size            n273_var_bx, .-n273_var_bx
                        .type            n274_var_bx, @function
n274_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 177
                        mov              rax, qword ptr [r9 + 80]             # jobject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_var_α
n274_var_β:             mov              r11, 177
                        add              rsp, 16;                             jmp   n273_var_β
                        .size            n274_var_bx, .-n274_var_bx
                        .type            n275_var_bx, @function
n275_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 96]             # jarray
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_assign_α
n275_var_β:             mov              r11, 178
                        add              rsp, 16;                             jmp   n274_var_β
                        .size            n275_var_bx, .-n275_var_bx
                        .type            n276_assign_bx, @function
n276_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:          mov              r11, 179
                        mov              rax, qword ptr [rsp + 48]            # var
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 288], rax            # PAT$4$V0
                        mov              qword ptr [r9 + 296], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_490_0]
                        .section         .rodata
.Lassign_α_490_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_490_1_s]
                        mov              r8, 26
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
                        pop              rax;                                 jmp   n277_assign_α
.Lassign_α_490_0:       .quad            .Lassign_α_490_0_s
.Lassign_α_490_0_s:     .string          "PAT$4$V0"
                        .size            n276_assign_bx, .-n276_assign_bx
                        .type            n277_assign_bx, @function
n277_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [r9 + 304], rax            # PAT$4$V1
                        mov              qword ptr [r9 + 312], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_491_0]
                        .section         .rodata
.Lassign_α_491_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_491_1_s]
                        mov              r8, 26
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
                        pop              rax;                                 jmp   n278_assign_α
.Lassign_α_491_0:       .quad            .Lassign_α_491_0_s
.Lassign_α_491_0_s:     .string          "PAT$4$V1"
                        .size            n277_assign_bx, .-n277_assign_bx
                        .type            n278_assign_bx, @function
n278_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 320], rax            # PAT$4$V2
                        mov              qword ptr [r9 + 328], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_492_0]
                        .section         .rodata
.Lassign_α_492_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_492_1_s]
                        mov              r8, 26
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
                        pop              rax;                                 jmp   n279_assign_α
.Lassign_α_492_0:       .quad            .Lassign_α_492_0_s
.Lassign_α_492_0_s:     .string          "PAT$4$V2"
                        .size            n278_assign_bx, .-n278_assign_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 182
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax            # PAT$4$V3
                        mov              qword ptr [r9 + 344], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_493_0]
                        .section         .rodata
.Lassign_α_493_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_493_1_s]
                        mov              r8, 26
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
                        pop              rax;                                 jmp   n280_lit_string_α
.Lassign_α_493_0:       .quad            .Lassign_α_493_0_s
.Lassign_α_493_0_s:     .string          "PAT$4$V3"
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      sub              rsp, 16
                        mov              r11, 183
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_lit_string_α
n280_lit_string_β:      mov              r11, 183
                        add              rsp, 16;                             jmp   n275_var_β
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "PAT$4"
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_lit_string_bx, @function
n281_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      sub              rsp, 16
                        mov              r11, 184
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n282_call_α
n281_lit_string_β:      mov              r11, 184
                        add              rsp, 16;                             jmp   n280_lit_string_β
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "4"
                        .size            n281_lit_string_bx, .-n281_lit_string_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            sub              rsp, 16
                        mov              r11, 185
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
.Lcall_α_rkfnzd497:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd497]
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
                        cmp              al, 104;                             jne   .Lcall_α_496_240
                        add              rsp, 16;                             jmp   n281_lit_string_β
.Lcall_α_496_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_assign_α
n282_call_β:            mov              r11, 185
                        add              rsp, 16;                             jmp   n281_lit_string_β
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_assign_bx, @function
n283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # jvalue
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
                        mov              rdi, qword ptr [rip + .Lassign_α_498_0]
                        .section         .rodata
.Lassign_α_498_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_498_1_s]
                        mov              r8, 26
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
                        pop              rax;                                 jmp   n284_statement_end_α
.Lassign_α_498_0:       .quad            .Lassign_α_498_0_s
.Lassign_α_498_0_s:     .string          "jvalue"
                        .size            n283_assign_bx, .-n283_assign_bx
                        .type            n284_statement_end_bx, @function
n284_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   mov              r11, 187
                        mov              r10, 10
                        add              rsp, 112;                            jmp   n285_statement_begin_α
                        .size            n284_statement_end_bx, .-n284_statement_end_bx
                        .type            n285_statement_begin_bx, @function
n285_statement_begin_bx:
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n285_statement_begin_α: mov              r11, 188
                        mov              r10, 11;                             jmp   n286_lit_string_α
n285_statement_begin_β: mov              r11, 188;                            jmp   n298_statement_begin_α
                        .size            n285_statement_begin_bx, .-n285_statement_begin_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              r11, 189
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_503_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_call_α
.Llit_string_α_503_0:   .quad            .Llit_string_α_503_0_s
.Llit_string_α_503_0_s: .string          " "
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            sub              rsp, 16
                        mov              r11, 190
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd505:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd505]
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
                        cmp              al, 104;                             jne   .Lcall_α_504_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n285_statement_begin_β
.Lcall_α_504_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_deref_α
n287_call_β:            mov              r11, 190
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n285_statement_begin_β
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_deref_bx, @function
n288_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_deref_α:           sub              rsp, 16
                        mov              r11, 191
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
                        cmp              al, 104;                             jne   .Lderef_α_506_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n285_statement_begin_β
.Lderef_α_506_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_string_α
n288_deref_β:           mov              r11, 191
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n285_statement_begin_β
                        .size            n288_deref_bx, .-n288_deref_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      sub              rsp, 16
                        mov              r11, 192
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_call_α
n289_lit_string_β:      mov              r11, 192
                        add              rsp, 16;                             jmp   n288_deref_β
.Llit_string_α_507_0:   .quad            .Llit_string_α_507_0_s
.Llit_string_α_507_0_s: .string          "EXPR$3$jvalue"
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_call_bx, @function
n290_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:            sub              rsp, 16
                        mov              r11, 193
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd509:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd509]
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
                        cmp              al, 104;                             jne   .Lcall_α_508_240
                        add              rsp, 16;                             jmp   n289_lit_string_β
.Lcall_α_508_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n291_binop_α
n290_call_β:            mov              r11, 193
                        add              rsp, 16;                             jmp   n289_lit_string_β
                        .size            n290_call_bx, .-n290_call_bx
                        .type            n291_binop_bx, @function
n291_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:           sub              rsp, 16
                        mov              r11, 194
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_lit_string_α
n291_binop_β:           mov              r11, 194
                        add              rsp, 32;                             jmp   n289_lit_string_β
                        .size            n291_binop_bx, .-n291_binop_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n293_call_α
n292_lit_string_β:      mov              r11, 195
                        add              rsp, 16;                             jmp   n291_binop_β
.Llit_string_α_511_0:   .quad            .Llit_string_α_511_0_s
.Llit_string_α_511_0_s: .string          " "
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_call_bx, @function
n293_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_α:            sub              rsp, 16
                        mov              r11, 196
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd513:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd513]
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
                        cmp              al, 104;                             jne   .Lcall_α_512_240
                        add              rsp, 16;                             jmp   n292_lit_string_β
.Lcall_α_512_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n294_deref_α
n293_call_β:            mov              r11, 196
                        add              rsp, 16;                             jmp   n292_lit_string_β
                        .size            n293_call_bx, .-n293_call_bx
                        .type            n294_deref_bx, @function
n294_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_deref_α:           sub              rsp, 16
                        mov              r11, 197
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
                        cmp              al, 104;                             jne   .Lderef_α_514_240
                        add              rsp, 32;                             jmp   n292_lit_string_β
.Lderef_α_514_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_binop_α
n294_deref_β:           mov              r11, 197
                        add              rsp, 32;                             jmp   n292_lit_string_β
                        .size            n294_deref_bx, .-n294_deref_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 198
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_assign_α
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_assign_bx, @function
n296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # jelement
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
                        mov              rdi, qword ptr [rip + .Lassign_α_516_0]
                        .section         .rodata
.Lassign_α_516_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_516_1_s]
                        mov              r8, 34
                        mov              r9, 11
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
                        pop              rax;                                 jmp   n297_statement_end_α
.Lassign_α_516_0:       .quad            .Lassign_α_516_0_s
.Lassign_α_516_0_s:     .string          "jelement"
                        .size            n296_assign_bx, .-n296_assign_bx
                        .type            n297_statement_end_bx, @function
n297_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_statement_end_α:   mov              r11, 200
                        mov              r10, 11
                        add              rsp, 160;                            jmp   n298_statement_begin_α
                        .size            n297_statement_end_bx, .-n297_statement_end_bx
                        .type            n298_statement_begin_bx, @function
n298_statement_begin_bx:
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n298_statement_begin_α: mov              r11, 201
                        mov              r10, 12;                             jmp   n299_var_α
n298_statement_begin_β: mov              r11, 201;                            jmp   n306_statement_begin_α
                        .size            n298_statement_begin_bx, .-n298_statement_begin_bx
                        .type            n299_var_bx, @function
n299_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              r11, 202
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_assign_α
                        .size            n299_var_bx, .-n299_var_bx
                        .type            n300_assign_bx, @function
n300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax            # PAT$5$V0
                        mov              qword ptr [r9 + 360], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_522_0]
                        .section         .rodata
.Lassign_α_522_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_522_1_s]
                        mov              r8, 35
                        mov              r9, 12
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
                        pop              rax;                                 jmp   n301_lit_string_α
.Lassign_α_522_0:       .quad            .Lassign_α_522_0_s
.Lassign_α_522_0_s:     .string          "PAT$5$V0"
                        .size            n300_assign_bx, .-n300_assign_bx
                        .type            n301_lit_string_bx, @function
n301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      sub              rsp, 16
                        mov              r11, 204
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_lit_string_α
n301_lit_string_β:      mov              r11, 204
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n298_statement_begin_β
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          "PAT$5"
                        .size            n301_lit_string_bx, .-n301_lit_string_bx
                        .type            n302_lit_string_bx, @function
n302_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      sub              rsp, 16
                        mov              r11, 205
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_524_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n303_call_α
n302_lit_string_β:      mov              r11, 205
                        add              rsp, 16;                             jmp   n301_lit_string_β
.Llit_string_α_524_0:   .quad            .Llit_string_α_524_0_s
.Llit_string_α_524_0_s: .string          "1"
                        .size            n302_lit_string_bx, .-n302_lit_string_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            sub              rsp, 16
                        mov              r11, 206
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
.Lcall_α_rkfnzd526:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd526]
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
                        cmp              al, 104;                             jne   .Lcall_α_525_240
                        add              rsp, 16;                             jmp   n302_lit_string_β
.Lcall_α_525_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_assign_α
n303_call_β:            mov              r11, 206
                        add              rsp, 16;                             jmp   n302_lit_string_β
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_assign_bx, @function
n304_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # json
                        mov              qword ptr [r9 + 152], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_527_0]
                        .section         .rodata
.Lassign_α_527_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_527_1_s]
                        mov              r8, 35
                        mov              r9, 12
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
                        pop              rax;                                 jmp   n305_statement_end_α
.Lassign_α_527_0:       .quad            .Lassign_α_527_0_s
.Lassign_α_527_0_s:     .string          "json"
                        .size            n304_assign_bx, .-n304_assign_bx
                        .type            n305_statement_end_bx, @function
n305_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_end_α:   mov              r11, 208
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n306_statement_begin_α
                        .size            n305_statement_end_bx, .-n305_statement_end_bx
                        .type            n306_statement_begin_bx, @function
n306_statement_begin_bx:
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n306_statement_begin_α: mov              r11, 209
                        mov              r10, 13;                             jmp   n307_lit_name_α
n306_statement_begin_β: mov              r11, 209;                            jmp   n312_statement_begin_α
                        .size            n306_statement_begin_bx, .-n306_statement_begin_bx
                        .type            n307_lit_name_bx, @function
n307_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_name_α:        sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n308_lit_integer_α
.Llit_name_α_532_0:     .quad            .Llit_name_α_532_0_s
.Llit_name_α_532_0_s:   .string          "INPUT"
                        .size            n307_lit_name_bx, .-n307_lit_name_bx
                        .type            n308_lit_integer_bx, @function
n308_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:     sub              rsp, 16
                        mov              r11, 211
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n309_lit_string_α
n308_lit_integer_β:     mov              r11, 211
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
.Llit_integer_α_533_0:  .quad            9
                        .size            n308_lit_integer_bx, .-n308_lit_integer_bx
                        .type            n309_lit_string_bx, @function
n309_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n310_call_α
n309_lit_string_β:      mov              r11, 212
                        add              rsp, 16;                             jmp   n308_lit_integer_β
.Llit_string_α_534_0:   .quad            .Llit_string_α_534_0_s
.Llit_string_α_534_0_s: .string          "[-f0 -r4194304]"
                        .size            n309_lit_string_bx, .-n309_lit_string_bx
                        .type            n310_call_bx, @function
n310_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:            sub              rsp, 16
                        mov              r11, 213
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
.Lcall_α_bynamefnzd213: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd213]
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
                        cmp              al, 104;                             jne   .Lcall_α_535_240
                        add              rsp, 16;                             jmp   n309_lit_string_β
.Lcall_α_535_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_statement_end_α
n310_call_β:            mov              r11, 213
                        add              rsp, 16;                             jmp   n309_lit_string_β
                        .size            n310_call_bx, .-n310_call_bx
                        .type            n311_statement_end_bx, @function
n311_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_statement_end_α:   mov              r11, 214
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n312_statement_begin_α
                        .size            n311_statement_end_bx, .-n311_statement_end_bx
                        .type            n312_statement_begin_bx, @function
n312_statement_begin_bx:
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n312_statement_begin_α: mov              r11, 215
                        mov              r10, 14;                             jmp   n313_var_α
n312_statement_begin_β: mov              r11, 215;                            jmp   n331_statement_begin_α
                        .size            n312_statement_begin_bx, .-n312_statement_begin_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             sub              rsp, 16
                        mov              r11, 216
                        mov              rdi, qword ptr [rip + .Lvar_α_540_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_540_240
                        add              rsp, 16;                             jmp   n312_statement_begin_β
.Lvar_α_540_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n314_assign_α
.Lvar_α_540_0:          .quad            .Lvar_α_540_0_s
.Lvar_α_540_0_s:        .string          "INPUT"
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_assign_bx, @function
n314_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:          mov              r11, 217
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # src
                        mov              qword ptr [r9 + 168], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_541_0]
                        .section         .rodata
.Lassign_α_541_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_541_1_s]
                        mov              r8, 38
                        mov              r9, 14
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
                        pop              rax;                                 jmp   n315_statement_end_α
.Lassign_α_541_0:       .quad            .Lassign_α_541_0_s
.Lassign_α_541_0_s:     .string          "src"
                        .size            n314_assign_bx, .-n314_assign_bx
                        .type            n315_statement_end_bx, @function
n315_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_statement_end_α:   mov              r11, 218
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n316_statement_begin_α
                        .size            n315_statement_end_bx, .-n315_statement_end_bx
                        .type            n316_statement_begin_bx, @function
n316_statement_begin_bx:
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n316_statement_begin_α: mov              r11, 219
                        mov              r10, 15;                             jmp   n317_var_α
n316_statement_begin_β: mov              r11, 219;                            jmp   n331_statement_begin_α
                        .size            n316_statement_begin_bx, .-n316_statement_begin_bx
                        .type            n317_var_bx, @function
n317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_var_α
                        .size            n317_var_bx, .-n317_var_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 144]            # json
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_assign_α
n318_var_β:             mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n331_statement_begin_α
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_assign_bx, @function
n319_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:          mov              r11, 222
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
                        mov              rdi, qword ptr [rip + .Lassign_α_548_0]
                        .section         .rodata
.Lassign_α_548_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_548_1_s]
                        mov              r8, 39
                        mov              r9, 15
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
                        mov              rdi, qword ptr [rip + .Lassign_α_548_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n320_match_begin_α
n319_assign_β:          mov              r11, 222;                            jmp   n318_var_β
.Lassign_α_548_0:       .quad            .Lassign_α_548_0_s
.Lassign_α_548_0_s:     .string          "PATV$0"
                        .size            n319_assign_bx, .-n319_assign_bx
                        .type            n320_match_begin_bx, @function
n320_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_match_begin_α:     mov              r11, 223
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
.Lmatch_begin_α_550_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_550_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n321_match_defer_α
n320_match_begin_β:     mov              r11, 223
.Lmatch_begin_α_550_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_550_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_550_1
                                                                              jmp   .Lmatch_begin_α_550_0
.Lmatch_begin_β_550_1:
.Lmatch_begin_γ_320_af: mov              r11, 223
.Lmatch_begin_ω_320_af: mov              r11, 223
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
                        pop              rbp;                                 jmp   n319_assign_β
                        .size            n320_match_begin_bx, .-n320_match_begin_bx
                        .type            n321_match_defer_bx, @function
n321_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_match_defer_α:     mov              r11, 224
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S8]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_551_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_551_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_551_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_551_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_551_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_551_23
                                                                              jmp   .Lmatch_defer_α_551_22
.Lmatch_defer_α_551_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_551_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_551_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_551_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_551_0
.Lmatch_defer_α_551_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_551_0
.Lmatch_defer_α_551_22: push             r14
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
.Lmatch_defer_α_551_23: test             rax, rax;                            jz    .Lmatch_defer_α_551_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_551_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_551_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_551_4:                                                        jmp   n322_match_end_α
.Lmatch_defer_α_551_5:                                                        jmp   n320_match_begin_β
.Lmatch_defer_α_551_0:  mov              eax, edx
                        test             eax, eax;                            js    n320_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_551_6]
                        push             rcx
                        push             rax;                                 jmp   n322_match_end_α
.Lmatch_defer_α_551_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n320_match_begin_β
n321_match_defer_β:     mov              r11, 224
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_551_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_551_12
                                                                              jmp   rax
.Lmatch_defer_β_551_12:                                                       jmp   qword ptr [rsp]
                        .size            n321_match_defer_bx, .-n321_match_defer_bx
                        .type            n322_match_end_bx, @function
n322_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_match_end_α:       mov              r11, 225
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
                        test             rax, rax;                            je    .Lmatch_end_α_553_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_320_af
.Lmatch_end_α_553_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n323_statement_end_α
                        .size            n322_match_end_bx, .-n322_match_end_bx
                        .type            n323_statement_end_bx, @function
n323_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_statement_end_α:   mov              r11, 226
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n324_statement_begin_α
                        .size            n323_statement_end_bx, .-n323_statement_end_bx
                        .type            n324_statement_begin_bx, @function
n324_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n324_statement_begin_α: mov              r11, 227
                        mov              r10, 16;                             jmp   n325_lit_string_α
n324_statement_begin_β: mov              r11, 227;                            jmp   main_γ
                        .size            n324_statement_begin_bx, .-n324_statement_begin_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_var_α
.Llit_string_α_558_0:   .quad            .Llit_string_α_558_0_s
.Llit_string_α_558_0_s: .string          "matched bytes="
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_var_bx, @function
n326_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              r11, 229
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_call_α
n326_var_β:             mov              r11, 229
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n324_statement_begin_β
                        .size            n326_var_bx, .-n326_var_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            sub              rsp, 16
                        mov              r11, 230
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd561:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd561]
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
                        cmp              al, 104;                             jne   .Lcall_α_560_240
                        add              rsp, 16;                             jmp   n326_var_β
.Lcall_α_560_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n328_binop_α
n327_call_β:            mov              r11, 230
                        add              rsp, 16;                             jmp   n326_var_β
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_binop_bx, @function
n328_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_binop_α:           sub              rsp, 16
                        mov              r11, 231
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_assign_α
                        .size            n328_binop_bx, .-n328_binop_bx
                        .type            n329_assign_bx, @function
n329_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:          mov              r11, 232
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
                        mov              rdi, qword ptr [rip + .Lassign_α_563_0]
                        .section         .rodata
.Lassign_α_563_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_563_1_s]
                        mov              r8, 40
                        mov              r9, 16
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
                        mov              rdi, qword ptr [rip + .Lassign_α_563_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_statement_end_α
.Lassign_α_563_0:       .quad            .Lassign_α_563_0_s
.Lassign_α_563_0_s:     .string          "OUTPUT"
                        .size            n329_assign_bx, .-n329_assign_bx
                        .type            n330_statement_end_bx, @function
n330_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_statement_end_α:   mov              r11, 233
                        mov              r10, 16
                        add              rsp, 64;                             jmp   main_γ
                        .size            n330_statement_end_bx, .-n330_statement_end_bx
                        .type            n331_statement_begin_bx, @function
n331_statement_begin_bx:
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n331_statement_begin_α: mov              r11, 234
                        mov              r10, 17;                             jmp   n332_lit_string_α
n331_statement_begin_β: mov              r11, 234;                            jmp   main_γ
                        .size            n331_statement_begin_bx, .-n331_statement_begin_bx
                        .type            n332_lit_string_bx, @function
n332_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      sub              rsp, 16
                        mov              r11, 235
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n333_assign_α
.Llit_string_α_568_0:   .quad            .Llit_string_α_568_0_s
.Llit_string_α_568_0_s: .string          "Pattern match failed"
                        .size            n332_lit_string_bx, .-n332_lit_string_bx
                        .type            n333_assign_bx, @function
n333_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:          mov              r11, 236
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
                        mov              rdi, qword ptr [rip + .Lassign_α_569_0]
                        .section         .rodata
.Lassign_α_569_1_s:     .string          "snobol4/json/json-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_569_1_s]
                        mov              r8, 41
                        mov              r9, 17
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
                        mov              rdi, qword ptr [rip + .Lassign_α_569_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n334_statement_end_α
.Lassign_α_569_0:       .quad            .Lassign_α_569_0_s
.Lassign_α_569_0_s:     .string          "OUTPUT"
                        .size            n333_assign_bx, .-n333_assign_bx
                        .type            n334_statement_end_bx, @function
n334_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_statement_end_α:   mov              r11, 237
                        mov              r10, 17
                        add              rsp, 16;                             jmp   main_γ
                        .size            n334_statement_end_bx, .-n334_statement_end_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 238;                            jmp   n331_statement_begin_α
n335_goto_β:            mov              r11, 238;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
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
.Lstartup_pname0:       .string          "EXPR$0$jelement"
                        .align           8
.Lstartup_pnames0:
                        .quad            0
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__EXPR$0$jelement
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
.Lstartup_pname1:       .string          "EXPR$1$jelement"
                        .align           8
.Lstartup_pnames1:
                        .quad            0
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__EXPR$1$jelement
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
.Lstartup_pname2:       .string          "EXPR$2$jelement"
                        .align           8
.Lstartup_pnames2:
                        .quad            0
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__EXPR$2$jelement
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
.Lstartup_pname3:       .string          "EXPR$3$jvalue"
                        .align           8
.Lstartup_pnames3:
                        .quad            0
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__EXPR$3$jvalue
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
