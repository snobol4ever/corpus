                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/json/json-match-fence.sno"
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
.Lassign_α_6_1_s:       .string          "snobol4/json/json-match-fence.sno"
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
.Lassign_α_13_1_s:      .string          "snobol4/json/json-match-fence.sno"
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
.Lassign_α_20_1_s:      .string          "snobol4/json/json-match-fence.sno"
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
.Lassign_α_27_1_s:      .string          "snobol4/json/json-match-fence.sno"
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
                        test             rdi, rdi;                            je    .Lmatch_defer_α_64_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_64_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_64_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_64_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_64_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_64_18
.Lmatch_defer_α_64_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_64_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_64_16:
.Lmatch_defer_α_64_18:  test             rax, rax;                            jz    .Lmatch_defer_α_64_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_64_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_64_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_64_4:                                                         jmp   n57_match_arbno_α
.Lmatch_defer_α_64_5:   add              rsp, 16;                             jmp   n55_match_lit_β
.Lmatch_defer_α_64_0:   push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_64_240
                        add              rsp, 16;                             jmp   n55_match_lit_β
.Lmatch_defer_α_64_240: mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_64_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_arbno_α
.Lmatch_defer_α_64_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n55_match_lit_β
n56_match_defer_β:      mov              r11, 23
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_64_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_64_12
                                                                              jmp   rax
.Lmatch_defer_β_64_12:                                                        jmp   qword ptr [rsp]
                        .size            n56_match_defer_bx, .-n56_match_defer_bx
                        .type            n57_match_arbno_bx, @function
n57_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_match_arbno_α:      mov              r11, 24
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n58_match_lit_α
n57_match_arbno_β:      mov              r11, 24
                        mov              r12, qword ptr [rbp + -40];          jmp   n60_match_defer_α
.Lmatch_arbno_γ_57_as:  mov              r11, 24
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n61_match_defer_β
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
                        add              r14d, 1;                             jmp   n59_match_fence0_α
n58_match_lit_β:        mov              r11, 25
                        sub              r14d, 1;                             jmp   n57_match_arbno_β
                        .size            n58_match_lit_bx, .-n58_match_lit_bx
                        .type            n59_match_fence0_bx, @function
n59_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_match_fence0_α:     mov              r11, 26
                        mov              rsp, rbp
                        sub              rsp, 72;                             jmp   PAT$2_γ
n59_match_fence0_β:     mov              r11, 26;                             jmp   PAT$2_ω
                        .size            n59_match_fence0_bx, .-n59_match_fence0_bx
                        .type            n60_match_defer_bx, @function
n60_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_defer_α:      mov              r11, 27
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_71_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_71_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_71_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_71_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_71_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_71_18
.Lmatch_defer_α_71_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_71_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_71_16:
.Lmatch_defer_α_71_18:  test             rax, rax;                            jz    .Lmatch_defer_α_71_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_71_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_71_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_71_4:                                                         jmp   n61_match_defer_α
.Lmatch_defer_α_71_5:                                                         jmp   .Lmatch_arbno_ω_57_af
.Lmatch_defer_α_71_0:   push             r14
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
                        lea              rax, [rip + .Lmatch_defer_α_71_6]
                        push             rcx
                        push             rax;                                 jmp   n61_match_defer_α
.Lmatch_defer_α_71_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_arbno_ω_57_af
n60_match_defer_β:      mov              r11, 27
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_71_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_71_12
                                                                              jmp   rax
.Lmatch_defer_β_71_12:                                                        jmp   qword ptr [rsp]
                        .size            n60_match_defer_bx, .-n60_match_defer_bx
                        .type            n61_match_defer_bx, @function
n61_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      mov              r11, 28
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_72_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_72_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_72_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_72_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_72_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_72_18
.Lmatch_defer_α_72_17:  mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_72_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_72_16:
.Lmatch_defer_α_72_18:  test             rax, rax;                            jz    .Lmatch_defer_α_72_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_72_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_72_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_72_4:                                                         jmp   .Lmatch_arbno_γ_57_as
.Lmatch_defer_α_72_5:                                                         jmp   n60_match_defer_β
.Lmatch_defer_α_72_0:   push             r14
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
                        lea              rax, [rip + .Lmatch_defer_α_72_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_arbno_γ_57_as
.Lmatch_defer_α_72_6:   add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_defer_β
n61_match_defer_β:      mov              r11, 28
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_72_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_72_12
                                                                              jmp   rax
.Lmatch_defer_β_72_12:                                                        jmp   qword ptr [rsp]
                        .size            n61_match_defer_bx, .-n61_match_defer_bx
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
                        .type            n73_match_fence1_bx, @function
n73_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_fence1_α:     mov              r11, 29
                        mov              qword ptr [rbp + -368], rsp
                        sub              rsp, 0;                              jmp   n95_match_alternate_α
.Lmatch_fence1_γ_73_as: mov              r11, 29
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -368];         jmp   n74_match_alternate_α
.Lmatch_fence1_γ_73_af: mov              r11, 29
.Lmatch_fence1_ω_73_af: mov              r11, 29
                        add              rsp, 0
n73_match_fence1_β:     mov              r11, 29
                        mov              rsp, qword ptr [rbp + -368];         jmp   PAT$3_ω
                        .size            n73_match_fence1_bx, .-n73_match_fence1_bx
                        .type            n74_match_alternate_bx, @function
n74_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_alternate_α:  mov              r11, 30
                        mov              dword ptr [rbp + -272], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_101_21]
                        mov              qword ptr [rbp + -256], rax;         jmp   n94_match_lit_α
.Lmatch_alternate_α_101_21:
                        lea              rax, [rip + .Lmatch_alternate_α_101_19]
                        mov              qword ptr [rbp + -256], rax;         jmp   n89_match_any_α
.Lmatch_alternate_γ_74_s0:
                        mov              r11, 30
                        lea              rax, [rip + .Lmatch_alternate_α_101_40]
                        mov              qword ptr [rbp + -264], rax;         jmp   .Lmatch_alternate_γ_74_as
.Lmatch_alternate_γ_74_s1:
                        mov              r11, 30
                        lea              rax, [rip + .Lmatch_alternate_α_101_41]
                        mov              qword ptr [rbp + -264], rax;         jmp   .Lmatch_alternate_γ_74_as
.Lmatch_alternate_α_101_40:
                                                                              jmp   n94_match_lit_β
.Lmatch_alternate_α_101_41:
                                                                              jmp   n90_match_fence1_β
.Lmatch_alternate_γ_74_as:
                        mov              r11, 30;                             jmp   n75_match_fence1_α
n74_match_alternate_β:  mov              r11, 30
                        mov              rax, qword ptr [rbp + -264];         jmp   rax
.Lmatch_alternate_γ_74_af:
                        mov              r11, 30
.Lmatch_alternate_ω_74_af:
                        mov              r11, 30
                        mov              r14d, dword ptr [rbp + -272]
                        mov              rax, qword ptr [rbp + -256];         jmp   rax
.Lmatch_alternate_α_101_19:
                                                                              jmp   n73_match_fence1_β
                        .size            n74_match_alternate_bx, .-n74_match_alternate_bx
                        .type            n75_match_fence1_bx, @function
n75_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_fence1_α:     mov              r11, 31
                        mov              qword ptr [rbp + -176], rsp
                        sub              rsp, 0;                              jmp   n85_match_alternate_α
.Lmatch_fence1_γ_75_as: mov              r11, 31
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -176];         jmp   n76_match_fence1_α
.Lmatch_fence1_γ_75_af: mov              r11, 31
.Lmatch_fence1_ω_75_af: mov              r11, 31
                        add              rsp, 0
n75_match_fence1_β:     mov              r11, 31
                        mov              rsp, qword ptr [rbp + -176];         jmp   n74_match_alternate_β
                        .size            n75_match_fence1_bx, .-n75_match_fence1_bx
                        .type            n76_match_fence1_bx, @function
n76_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_fence1_α:     mov              r11, 32
                        mov              qword ptr [rbp + -48], rsp
                        sub              rsp, 0;                              jmp   n77_match_alternate_α
.Lmatch_fence1_γ_76_as: mov              r11, 32
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -48];          jmp   PAT$3_γ
.Lmatch_fence1_γ_76_af: mov              r11, 32
.Lmatch_fence1_ω_76_af: mov              r11, 32
                        add              rsp, 0
n76_match_fence1_β:     mov              r11, 32
                        mov              rsp, qword ptr [rbp + -48];          jmp   n75_match_fence1_β
                        .size            n76_match_fence1_bx, .-n76_match_fence1_bx
                        .type            n77_match_alternate_bx, @function
n77_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_alternate_α:  mov              r11, 33
                        mov              dword ptr [rbp + -80], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_107_21]
                        mov              qword ptr [rbp + -64], rax;          jmp   n79_match_any_α
.Lmatch_alternate_α_107_21:
                        lea              rax, [rip + .Lmatch_alternate_α_107_19]
                        mov              qword ptr [rbp + -64], rax;          jmp   n78_match_lit_α
.Lmatch_alternate_γ_77_s0:
                        mov              r11, 33
                        lea              rax, [rip + .Lmatch_alternate_α_107_40]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_77_as
.Lmatch_alternate_γ_77_s1:
                        mov              r11, 33
                        lea              rax, [rip + .Lmatch_alternate_α_107_41]
                        mov              qword ptr [rbp + -72], rax;          jmp   .Lmatch_alternate_γ_77_as
.Lmatch_alternate_α_107_40:
                                                                              jmp   n81_match_span_β
.Lmatch_alternate_α_107_41:
                                                                              jmp   n78_match_lit_β
.Lmatch_alternate_γ_77_as:
                        mov              r11, 33;                             jmp   .Lmatch_fence1_γ_76_as
n77_match_alternate_β:  mov              r11, 33
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_γ_77_af:
                        mov              r11, 33
.Lmatch_alternate_ω_77_af:
                        mov              r11, 33
                        mov              r14d, dword ptr [rbp + -80]
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
.Lmatch_alternate_α_107_19:
                                                                              jmp   .Lmatch_fence1_ω_76_af
                        .size            n77_match_alternate_bx, .-n77_match_alternate_bx
                        .type            n78_match_lit_bx, @function
n78_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_lit_α:        mov              r11, 34;                             jmp   .Lmatch_alternate_γ_77_s1
n78_match_lit_β:        mov              r11, 34;                             jmp   .Lmatch_alternate_ω_77_af
                        .size            n78_match_lit_bx, .-n78_match_lit_bx
                        .type            n79_match_any_bx, @function
n79_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_any_α:        mov              r11, 35
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_77_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 101;                            je    .Lmatch_any_α_111_0
                        cmp              esi, 69;                             je    .Lmatch_any_α_111_0
                                                                              jmp   .Lmatch_alternate_ω_77_af
.Lmatch_any_α_111_0:    add              r14d, 1;                             jmp   n80_match_fence1_α
n79_match_any_β:        mov              r11, 35
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_77_af
                        .size            n79_match_any_bx, .-n79_match_any_bx
                        .type            n80_match_fence1_bx, @function
n80_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_fence1_α:     mov              r11, 36
                        mov              qword ptr [rbp + -128], rsp
                        sub              rsp, 0;                              jmp   n82_match_alternate_α
.Lmatch_fence1_γ_80_as: mov              r11, 36
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -128];         jmp   n81_match_span_α
.Lmatch_fence1_γ_80_af: mov              r11, 36
.Lmatch_fence1_ω_80_af: mov              r11, 36
                        add              rsp, 0
n80_match_fence1_β:     mov              r11, 36
                        mov              rsp, qword ptr [rbp + -128];         jmp   n79_match_any_β
                        .size            n80_match_fence1_bx, .-n80_match_fence1_bx
                        .type            n81_match_span_bx, @function
n81_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_match_span_α:       sub              rsp, 16
                        mov              r11, 37
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_115_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_115_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_115_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_115_0
.Lmatch_span_α_115_1:   cmp              ecx, r14d;                           jg    .Lmatch_span_α_115_240
                        add              rsp, 16;                             jmp   n80_match_fence1_β
.Lmatch_span_α_115_240: mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_77_s0
n81_match_span_β:       mov              r11, 37
                        mov              r14d, dword ptr [rbp + -108]
                        add              rsp, 16;                             jmp   n80_match_fence1_β
                        .size            n81_match_span_bx, .-n81_match_span_bx
                        .type            n82_match_alternate_bx, @function
n82_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_match_alternate_α:  mov              r11, 38
                        mov              dword ptr [rbp + -160], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_117_21]
                        mov              qword ptr [rbp + -144], rax;         jmp   n84_match_any_α
.Lmatch_alternate_α_117_21:
                        lea              rax, [rip + .Lmatch_alternate_α_117_19]
                        mov              qword ptr [rbp + -144], rax;         jmp   n83_match_lit_α
.Lmatch_alternate_γ_82_s0:
                        mov              r11, 38
                        lea              rax, [rip + .Lmatch_alternate_α_117_40]
                        mov              qword ptr [rbp + -152], rax;         jmp   .Lmatch_alternate_γ_82_as
.Lmatch_alternate_γ_82_s1:
                        mov              r11, 38
                        lea              rax, [rip + .Lmatch_alternate_α_117_41]
                        mov              qword ptr [rbp + -152], rax;         jmp   .Lmatch_alternate_γ_82_as
.Lmatch_alternate_α_117_40:
                                                                              jmp   n84_match_any_β
.Lmatch_alternate_α_117_41:
                                                                              jmp   n83_match_lit_β
.Lmatch_alternate_γ_82_as:
                        mov              r11, 38;                             jmp   .Lmatch_fence1_γ_80_as
n82_match_alternate_β:  mov              r11, 38
                        mov              rax, qword ptr [rbp + -152];         jmp   rax
.Lmatch_alternate_γ_82_af:
                        mov              r11, 38
.Lmatch_alternate_ω_82_af:
                        mov              r11, 38
                        mov              r14d, dword ptr [rbp + -160]
                        mov              rax, qword ptr [rbp + -144];         jmp   rax
.Lmatch_alternate_α_117_19:
                                                                              jmp   .Lmatch_fence1_ω_80_af
                        .size            n82_match_alternate_bx, .-n82_match_alternate_bx
                        .type            n83_match_lit_bx, @function
n83_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_match_lit_α:        mov              r11, 39;                             jmp   .Lmatch_alternate_γ_82_s1
n83_match_lit_β:        mov              r11, 39;                             jmp   .Lmatch_alternate_ω_82_af
                        .size            n83_match_lit_bx, .-n83_match_lit_bx
                        .type            n84_match_any_bx, @function
n84_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_match_any_α:        mov              r11, 40
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_82_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43;                             je    .Lmatch_any_α_121_0
                        cmp              esi, 45;                             je    .Lmatch_any_α_121_0
                                                                              jmp   .Lmatch_alternate_ω_82_af
.Lmatch_any_α_121_0:    add              r14d, 1;                             jmp   .Lmatch_alternate_γ_82_s0
n84_match_any_β:        mov              r11, 40
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_82_af
                        .size            n84_match_any_bx, .-n84_match_any_bx
                        .type            n85_match_alternate_bx, @function
n85_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_match_alternate_α:  mov              r11, 41
                        mov              dword ptr [rbp + -208], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_123_21]
                        mov              qword ptr [rbp + -192], rax;         jmp   n87_match_lit_α
.Lmatch_alternate_α_123_21:
                        lea              rax, [rip + .Lmatch_alternate_α_123_19]
                        mov              qword ptr [rbp + -192], rax;         jmp   n86_match_lit_α
.Lmatch_alternate_γ_85_s0:
                        mov              r11, 41
                        lea              rax, [rip + .Lmatch_alternate_α_123_40]
                        mov              qword ptr [rbp + -200], rax;         jmp   .Lmatch_alternate_γ_85_as
.Lmatch_alternate_γ_85_s1:
                        mov              r11, 41
                        lea              rax, [rip + .Lmatch_alternate_α_123_41]
                        mov              qword ptr [rbp + -200], rax;         jmp   .Lmatch_alternate_γ_85_as
.Lmatch_alternate_α_123_40:
                                                                              jmp   n88_match_span_β
.Lmatch_alternate_α_123_41:
                                                                              jmp   n86_match_lit_β
.Lmatch_alternate_γ_85_as:
                        mov              r11, 41;                             jmp   .Lmatch_fence1_γ_75_as
n85_match_alternate_β:  mov              r11, 41
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lmatch_alternate_γ_85_af:
                        mov              r11, 41
.Lmatch_alternate_ω_85_af:
                        mov              r11, 41
                        mov              r14d, dword ptr [rbp + -208]
                        mov              rax, qword ptr [rbp + -192];         jmp   rax
.Lmatch_alternate_α_123_19:
                                                                              jmp   .Lmatch_fence1_ω_75_af
                        .size            n85_match_alternate_bx, .-n85_match_alternate_bx
                        .type            n86_match_lit_bx, @function
n86_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_match_lit_α:        mov              r11, 42;                             jmp   .Lmatch_alternate_γ_85_s1
n86_match_lit_β:        mov              r11, 42;                             jmp   .Lmatch_alternate_ω_85_af
                        .size            n86_match_lit_bx, .-n86_match_lit_bx
                        .type            n87_match_lit_bx, @function
n87_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_match_lit_α:        mov              r11, 43
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_85_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 46;                             jne   .Lmatch_alternate_ω_85_af
                        add              r14d, 1;                             jmp   n88_match_span_α
n87_match_lit_β:        mov              r11, 43
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_85_af
                        .size            n87_match_lit_bx, .-n87_match_lit_bx
                        .type            n88_match_span_bx, @function
n88_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_span_α:       mov              r11, 44
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_129_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_129_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_129_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_129_0
.Lmatch_span_α_129_1:   cmp              ecx, r14d;                           jle   n87_match_lit_β
                        mov              dword ptr [rbp + -236], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_85_s0
n88_match_span_β:       mov              r11, 44
                        mov              r14d, dword ptr [rbp + -236];        jmp   n87_match_lit_β
                        .size            n88_match_span_bx, .-n88_match_span_bx
                        .type            n89_match_any_bx, @function
n89_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_any_α:        mov              r11, 45
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_74_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C4]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_alternate_ω_74_af
                        add              r14d, 1;                             jmp   n90_match_fence1_α
n89_match_any_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_74_af
                        .size            n89_match_any_bx, .-n89_match_any_bx
                        .type            n90_match_fence1_bx, @function
n90_match_fence1_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_fence1_α:     mov              r11, 46
                        mov              qword ptr [rbp + -288], rsp
                        sub              rsp, 0;                              jmp   n91_match_alternate_α
.Lmatch_fence1_γ_90_as: mov              r11, 46
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -288];         jmp   .Lmatch_alternate_γ_74_s1
.Lmatch_fence1_γ_90_af: mov              r11, 46
.Lmatch_fence1_ω_90_af: mov              r11, 46
                        add              rsp, 0
n90_match_fence1_β:     mov              r11, 46
                        mov              rsp, qword ptr [rbp + -288];         jmp   n89_match_any_β
                        .size            n90_match_fence1_bx, .-n90_match_fence1_bx
                        .type            n91_match_alternate_bx, @function
n91_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_match_alternate_α:  mov              r11, 47
                        mov              dword ptr [rbp + -320], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_135_21]
                        mov              qword ptr [rbp + -304], rax;         jmp   n93_match_span_α
.Lmatch_alternate_α_135_21:
                        lea              rax, [rip + .Lmatch_alternate_α_135_19]
                        mov              qword ptr [rbp + -304], rax;         jmp   n92_match_lit_α
.Lmatch_alternate_γ_91_s0:
                        mov              r11, 47
                        lea              rax, [rip + .Lmatch_alternate_α_135_40]
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lmatch_alternate_γ_91_as
.Lmatch_alternate_γ_91_s1:
                        mov              r11, 47
                        lea              rax, [rip + .Lmatch_alternate_α_135_41]
                        mov              qword ptr [rbp + -312], rax;         jmp   .Lmatch_alternate_γ_91_as
.Lmatch_alternate_α_135_40:
                                                                              jmp   n93_match_span_β
.Lmatch_alternate_α_135_41:
                                                                              jmp   n92_match_lit_β
.Lmatch_alternate_γ_91_as:
                        mov              r11, 47;                             jmp   .Lmatch_fence1_γ_90_as
n91_match_alternate_β:  mov              r11, 47
                        mov              rax, qword ptr [rbp + -312];         jmp   rax
.Lmatch_alternate_γ_91_af:
                        mov              r11, 47
.Lmatch_alternate_ω_91_af:
                        mov              r11, 47
                        mov              r14d, dword ptr [rbp + -320]
                        mov              rax, qword ptr [rbp + -304];         jmp   rax
.Lmatch_alternate_α_135_19:
                                                                              jmp   .Lmatch_fence1_ω_90_af
                        .size            n91_match_alternate_bx, .-n91_match_alternate_bx
                        .type            n92_match_lit_bx, @function
n92_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_match_lit_α:        mov              r11, 48;                             jmp   .Lmatch_alternate_γ_91_s1
n92_match_lit_β:        mov              r11, 48;                             jmp   .Lmatch_alternate_ω_91_af
                        .size            n92_match_lit_bx, .-n92_match_lit_bx
                        .type            n93_match_span_bx, @function
n93_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_match_span_α:       mov              r11, 49
                        lea              rdi, [rip + .C3]
                        movsxd           rcx, r14d
.Lmatch_span_α_139_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_139_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_139_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_139_0
.Lmatch_span_α_139_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_91_af
                        mov              dword ptr [rbp + -348], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_91_s0
n93_match_span_β:       mov              r11, 49
                        mov              r14d, dword ptr [rbp + -348];        jmp   .Lmatch_alternate_ω_91_af
                        .size            n93_match_span_bx, .-n93_match_span_bx
                        .type            n94_match_lit_bx, @function
n94_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_match_lit_α:        mov              r11, 50
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_74_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 48;                             jne   .Lmatch_alternate_ω_74_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_74_s0
n94_match_lit_β:        mov              r11, 50
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_74_af
                        .size            n94_match_lit_bx, .-n94_match_lit_bx
                        .type            n95_match_alternate_bx, @function
n95_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_match_alternate_α:  mov              r11, 51
                        mov              dword ptr [rbp + -400], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_143_21]
                        mov              qword ptr [rbp + -384], rax;         jmp   n97_match_lit_α
.Lmatch_alternate_α_143_21:
                        lea              rax, [rip + .Lmatch_alternate_α_143_19]
                        mov              qword ptr [rbp + -384], rax;         jmp   n96_match_lit_α
.Lmatch_alternate_γ_95_s0:
                        mov              r11, 51
                        lea              rax, [rip + .Lmatch_alternate_α_143_40]
                        mov              qword ptr [rbp + -392], rax;         jmp   .Lmatch_alternate_γ_95_as
.Lmatch_alternate_γ_95_s1:
                        mov              r11, 51
                        lea              rax, [rip + .Lmatch_alternate_α_143_41]
                        mov              qword ptr [rbp + -392], rax;         jmp   .Lmatch_alternate_γ_95_as
.Lmatch_alternate_α_143_40:
                                                                              jmp   n97_match_lit_β
.Lmatch_alternate_α_143_41:
                                                                              jmp   n96_match_lit_β
.Lmatch_alternate_γ_95_as:
                        mov              r11, 51;                             jmp   .Lmatch_fence1_γ_73_as
n95_match_alternate_β:  mov              r11, 51
                        mov              rax, qword ptr [rbp + -392];         jmp   rax
.Lmatch_alternate_γ_95_af:
                        mov              r11, 51
.Lmatch_alternate_ω_95_af:
                        mov              r11, 51
                        mov              r14d, dword ptr [rbp + -400]
                        mov              rax, qword ptr [rbp + -384];         jmp   rax
.Lmatch_alternate_α_143_19:
                                                                              jmp   .Lmatch_fence1_ω_73_af
                        .size            n95_match_alternate_bx, .-n95_match_alternate_bx
                        .type            n96_match_lit_bx, @function
n96_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_match_lit_α:        mov              r11, 52;                             jmp   .Lmatch_alternate_γ_95_s1
n96_match_lit_β:        mov              r11, 52;                             jmp   .Lmatch_alternate_ω_95_af
                        .size            n96_match_lit_bx, .-n96_match_lit_bx
                        .type            n97_match_lit_bx, @function
n97_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_match_lit_α:        mov              r11, 53
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_95_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   .Lmatch_alternate_ω_95_af
                        add              r14d, 1;                             jmp   .Lmatch_alternate_γ_95_s0
n97_match_lit_β:        mov              r11, 53
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_95_af
                        .size            n97_match_lit_bx, .-n97_match_lit_bx
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
                        .type            n148_match_alternate_bx, @function
n148_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_match_alternate_α: mov              r11, 54
                        mov              dword ptr [rbp + -64], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_159_21]
                        mov              qword ptr [rbp + -48], rax;          jmp   n157_match_defer_α
.Lmatch_alternate_α_159_21:
                        lea              rax, [rip + .Lmatch_alternate_α_159_22]
                        mov              qword ptr [rbp + -48], rax;          jmp   n156_match_defer_α
.Lmatch_alternate_α_159_22:
                        lea              rax, [rip + .Lmatch_alternate_α_159_23]
                        mov              qword ptr [rbp + -48], rax;          jmp   n154_match_defer_α
.Lmatch_alternate_α_159_23:
                        lea              rax, [rip + .Lmatch_alternate_α_159_24]
                        mov              qword ptr [rbp + -48], rax;          jmp   n152_match_defer_α
.Lmatch_alternate_α_159_24:
                        lea              rax, [rip + .Lmatch_alternate_α_159_25]
                        mov              qword ptr [rbp + -48], rax;          jmp   n151_match_lit_α
.Lmatch_alternate_α_159_25:
                        lea              rax, [rip + .Lmatch_alternate_α_159_26]
                        mov              qword ptr [rbp + -48], rax;          jmp   n150_match_lit_α
.Lmatch_alternate_α_159_26:
                        lea              rax, [rip + .Lmatch_alternate_α_159_19]
                        mov              qword ptr [rbp + -48], rax;          jmp   n149_match_lit_α
.Lmatch_alternate_γ_148_s0:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_40]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s1:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_41]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s2:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_42]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s3:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_43]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s4:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_44]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s5:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_45]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_γ_148_s6:
                        mov              r11, 54
                        lea              rax, [rip + .Lmatch_alternate_α_159_46]
                        mov              qword ptr [rbp + -56], rax;          jmp   .Lmatch_alternate_γ_148_as
.Lmatch_alternate_α_159_40:
                                                                              jmp   n157_match_defer_β
.Lmatch_alternate_α_159_41:
                                                                              jmp   n156_match_defer_β
.Lmatch_alternate_α_159_42:
                                                                              jmp   n155_match_fence0_β
.Lmatch_alternate_α_159_43:
                                                                              jmp   n153_match_fence0_β
.Lmatch_alternate_α_159_44:
                                                                              jmp   n151_match_lit_β
.Lmatch_alternate_α_159_45:
                                                                              jmp   n150_match_lit_β
.Lmatch_alternate_α_159_46:
                                                                              jmp   n149_match_lit_β
.Lmatch_alternate_γ_148_as:
                        mov              r11, 54;                             jmp   PAT$4_γ
n148_match_alternate_β: mov              r11, 54
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lmatch_alternate_γ_148_af:
                        mov              r11, 54
.Lmatch_alternate_ω_148_af:
                        mov              r11, 54
                        mov              r14d, dword ptr [rbp + -64]
                        mov              rax, qword ptr [rbp + -48];          jmp   rax
.Lmatch_alternate_α_159_19:
                                                                              jmp   PAT$4_ω
                        .size            n148_match_alternate_bx, .-n148_match_alternate_bx
                        .type            n149_match_lit_bx, @function
n149_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_match_lit_α:       mov              r11, 55
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_148_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819047278;                     jne   .Lmatch_alternate_ω_148_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_148_s6
n149_match_lit_β:       mov              r11, 55
                        sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_148_af
                        .size            n149_match_lit_bx, .-n149_match_lit_bx
                        .type            n150_match_lit_bx, @function
n150_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_match_lit_α:       mov              r11, 56
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_148_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1936482662;                     jne   .Lmatch_alternate_ω_148_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   .Lmatch_alternate_ω_148_af
                        add              r14d, 5;                             jmp   .Lmatch_alternate_γ_148_s5
n150_match_lit_β:       mov              r11, 56
                        sub              r14d, 5;                             jmp   .Lmatch_alternate_ω_148_af
                        .size            n150_match_lit_bx, .-n150_match_lit_bx
                        .type            n151_match_lit_bx, @function
n151_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_match_lit_α:       mov              r11, 57
                        mov              eax, r14d
                        add              eax, 4
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_148_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1702195828;                     jne   .Lmatch_alternate_ω_148_af
                        add              r14d, 4;                             jmp   .Lmatch_alternate_γ_148_s4
n151_match_lit_β:       mov              r11, 57
                        sub              r14d, 4;                             jmp   .Lmatch_alternate_ω_148_af
                        .size            n151_match_lit_bx, .-n151_match_lit_bx
                        .type            n152_match_defer_bx, @function
n152_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_match_defer_α:     mov              r11, 58
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_166_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_166_17
                        cmp              qword ptr [rdi + 40], 4;             jl    .Lmatch_defer_α_166_17
                        mov              rax, qword ptr [rsi + 48]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_166_17
                        mov              rdx, qword ptr [rsi + 56]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_166_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_166_18
.Lmatch_defer_α_166_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_166_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_166_16:
.Lmatch_defer_α_166_18: test             rax, rax;                            jz    .Lmatch_defer_α_166_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_166_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_166_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_166_4:                                                        jmp   n153_match_fence0_α
.Lmatch_defer_α_166_5:                                                        jmp   .Lmatch_alternate_ω_148_af
.Lmatch_defer_α_166_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_148_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_166_6]
                        push             rcx
                        push             rax;                                 jmp   n153_match_fence0_α
.Lmatch_defer_α_166_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_148_af
n152_match_defer_β:     mov              r11, 58
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_166_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_166_12
                                                                              jmp   rax
.Lmatch_defer_β_166_12:                                                       jmp   qword ptr [rsp]
                        .size            n152_match_defer_bx, .-n152_match_defer_bx
                        .type            n153_match_fence0_bx, @function
n153_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_match_fence0_α:    mov              r11, 59;                             jmp   .Lmatch_alternate_γ_148_s3
n153_match_fence0_β:    mov              r11, 59;                             jmp   .Lmatch_alternate_ω_148_af
                        .size            n153_match_fence0_bx, .-n153_match_fence0_bx
                        .type            n154_match_defer_bx, @function
n154_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_match_defer_α:     mov              r11, 60
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_169_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_169_17
                        cmp              qword ptr [rdi + 40], 3;             jl    .Lmatch_defer_α_169_17
                        mov              rax, qword ptr [rsi + 32]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_169_17
                        mov              rdx, qword ptr [rsi + 40]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_169_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_169_18
.Lmatch_defer_α_169_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_169_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_169_16:
.Lmatch_defer_α_169_18: test             rax, rax;                            jz    .Lmatch_defer_α_169_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_169_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_169_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_169_4:                                                        jmp   n155_match_fence0_α
.Lmatch_defer_α_169_5:                                                        jmp   .Lmatch_alternate_ω_148_af
.Lmatch_defer_α_169_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_148_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_169_6]
                        push             rcx
                        push             rax;                                 jmp   n155_match_fence0_α
.Lmatch_defer_α_169_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_148_af
n154_match_defer_β:     mov              r11, 60
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_169_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_169_12
                                                                              jmp   rax
.Lmatch_defer_β_169_12:                                                       jmp   qword ptr [rsp]
                        .size            n154_match_defer_bx, .-n154_match_defer_bx
                        .type            n155_match_fence0_bx, @function
n155_match_fence0_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_match_fence0_α:    mov              r11, 61;                             jmp   .Lmatch_alternate_γ_148_s2
n155_match_fence0_β:    mov              r11, 61;                             jmp   .Lmatch_alternate_ω_148_af
                        .size            n155_match_fence0_bx, .-n155_match_fence0_bx
                        .type            n156_match_defer_bx, @function
n156_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_match_defer_α:     mov              r11, 62
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_172_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_172_17
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lmatch_defer_α_172_17
                        mov              rax, qword ptr [rsi + 16]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_172_17
                        mov              rdx, qword ptr [rsi + 24]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_172_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_172_18
.Lmatch_defer_α_172_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_172_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_172_16:
.Lmatch_defer_α_172_18: test             rax, rax;                            jz    .Lmatch_defer_α_172_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_172_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_172_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_172_4:                                                        jmp   .Lmatch_alternate_γ_148_s1
.Lmatch_defer_α_172_5:                                                        jmp   .Lmatch_alternate_ω_148_af
.Lmatch_defer_α_172_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_148_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_172_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_148_s1
.Lmatch_defer_α_172_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_148_af
n156_match_defer_β:     mov              r11, 62
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_172_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_172_12
                                                                              jmp   rax
.Lmatch_defer_β_172_12:                                                       jmp   qword ptr [rsp]
                        .size            n156_match_defer_bx, .-n156_match_defer_bx
                        .type            n157_match_defer_bx, @function
n157_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:     mov              r11, 63
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_173_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_173_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_173_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_173_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_173_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_173_18
.Lmatch_defer_α_173_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_173_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_173_16:
.Lmatch_defer_α_173_18: test             rax, rax;                            jz    .Lmatch_defer_α_173_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_173_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_173_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_173_4:                                                        jmp   .Lmatch_alternate_γ_148_s0
.Lmatch_defer_α_173_5:                                                        jmp   .Lmatch_alternate_ω_148_af
.Lmatch_defer_α_173_0:  push             r14
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
                        test             eax, eax;                            js    .Lmatch_alternate_ω_148_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_173_6]
                        push             rcx
                        push             rax;                                 jmp   .Lmatch_alternate_γ_148_s0
.Lmatch_defer_α_173_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   .Lmatch_alternate_ω_148_af
n157_match_defer_β:     mov              r11, 63
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_173_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_173_12
                                                                              jmp   rax
.Lmatch_defer_β_173_12:                                                       jmp   qword ptr [rsp]
                        .size            n157_match_defer_bx, .-n157_match_defer_bx
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
                        .type            n174_match_pos_bx, @function
n174_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_match_pos_α:       mov              r11, 64
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$5_ω
                                                                              jmp   n175_match_defer_α
n174_match_pos_β:       mov              r11, 64;                             jmp   PAT$5_ω
                        .size            n174_match_pos_bx, .-n174_match_pos_bx
                        .type            n175_match_defer_bx, @function
n175_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_match_defer_α:     sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lmatch_defer_α_178_17
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lmatch_defer_α_178_17
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lmatch_defer_α_178_17
                        mov              rax, qword ptr [rsi + 0]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_178_17
                        mov              rdx, qword ptr [rsi + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_178_17
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_178_18
.Lmatch_defer_α_178_17: mov              rdi, qword ptr [rbp + -24]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_178_16
                        mov              rax, qword ptr [rdx + 0]
.Lmatch_defer_α_178_16:
.Lmatch_defer_α_178_18: test             rax, rax;                            jz    .Lmatch_defer_α_178_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_178_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_178_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_178_4:                                                        jmp   n176_match_rpos_α
.Lmatch_defer_α_178_5:  add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_178_0:  push             r14
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
                        test             eax, eax;                            jns   .Lmatch_defer_α_178_240
                        add              rsp, 16;                             jmp   PAT$5_ω
.Lmatch_defer_α_178_240:
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_178_6]
                        push             rcx
                        push             rax;                                 jmp   n176_match_rpos_α
.Lmatch_defer_α_178_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$5_ω
n175_match_defer_β:     mov              r11, 65
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_178_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_178_12
                                                                              jmp   rax
.Lmatch_defer_β_178_12:                                                       jmp   qword ptr [rsp]
                        .size            n175_match_defer_bx, .-n175_match_defer_bx
                        .type            n176_match_rpos_bx, @function
n176_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_match_rpos_α:      mov              r11, 66
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n175_match_defer_β
                                                                              jmp   PAT$5_γ
n176_match_rpos_β:      mov              r11, 66;                             jmp   n175_match_defer_β
                        .size            n176_match_rpos_bx, .-n176_match_rpos_bx
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
                        .type            n180_lit_integer_bx, @function
n180_lit_integer_bx:
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n180_lit_integer_α:     sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_lit_integer_α
.Llit_integer_α_378_0:  .quad            18446744073709551615
                        .size            n180_lit_integer_bx, .-n180_lit_integer_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_lit_string_α
.Llit_integer_α_379_0:  .quad            0
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_lit_string_bx, @function
n182_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Llit_string_α_380_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_call_α
.Llit_string_α_380_0:   .quad            .Llit_string_α_380_0_s
.Llit_string_α_380_0_s: .string          "snobol4/json/json-match-fence.sno"
                        .size            n182_lit_string_bx, .-n182_lit_string_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        mov              r11, 70
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
.Lcall_α_rkfnzd382:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd382]
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
                        cmp              al, 104;                             jne   .Lcall_α_381_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n184_stmt_mark_α
.Lcall_α_381_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_stmt_mark_α
n183_call_β:            mov              r11, 70
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n184_stmt_mark_α
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_stmt_mark_bx, @function
n184_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_stmt_mark_α:       mov              r11, 71
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n185_statement_begin_α
                        .size            n184_stmt_mark_bx, .-n184_stmt_mark_bx
                        .type            n185_statement_begin_bx, @function
n185_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α: mov              r11, 72
                        mov              r10, 1;                              jmp   n186_lit_integer_α
n185_statement_begin_β: mov              r11, 72
                        add              rsp, 64;                             jmp   n189_stmt_mark_α
                        .size            n185_statement_begin_bx, .-n185_statement_begin_bx
                        .type            n186_lit_integer_bx, @function
n186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_387_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_kw_assign_snobol4_α
.Llit_integer_α_387_0:  .quad            0
                        .size            n186_lit_integer_bx, .-n186_lit_integer_bx
                        .type            n187_kw_assign_snobol4_bx, @function
n187_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 74
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_388_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_388_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n185_statement_begin_β
.Lkw_assign_snobol4_α_388_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_statement_end_α
.Lkw_assign_snobol4_α_388_0:
                        .quad            1
                        .size            n187_kw_assign_snobol4_bx, .-n187_kw_assign_snobol4_bx
                        .type            n188_statement_end_bx, @function
n188_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:   mov              r11, 75
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n189_stmt_mark_α
                        .size            n188_statement_end_bx, .-n188_statement_end_bx
                        .type            n189_stmt_mark_bx, @function
n189_stmt_mark_bx:
#=======================================================================================================================
#                 $' '           =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n189_stmt_mark_α:       mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n190_statement_begin_α
                        .size            n189_stmt_mark_bx, .-n189_stmt_mark_bx
                        .type            n190_statement_begin_bx, @function
n190_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α: mov              r11, 77
                        mov              r10, 2;                              jmp   n191_lit_string_α
n190_statement_begin_β: mov              r11, 77;                             jmp   n210_stmt_mark_α
                        .size            n190_statement_begin_bx, .-n190_statement_begin_bx
                        .type            n191_lit_string_bx, @function
n191_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_call_α
.Llit_string_α_395_0:   .quad            .Llit_string_α_395_0_s
.Llit_string_α_395_0_s: .string          " "
                        .size            n191_lit_string_bx, .-n191_lit_string_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            sub              rsp, 16
                        mov              r11, 79
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd397:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd397]
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
                        cmp              al, 104;                             jne   .Lcall_α_396_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
.Lcall_α_396_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_lit_integer_α
n192_call_β:            mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n190_statement_begin_β
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_lit_string_α
n193_lit_integer_β:     mov              r11, 80
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n190_statement_begin_β
.Llit_integer_α_398_0:  .quad            30
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_lit_string_bx, @function
n194_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_lit_integer_α
n194_lit_string_β:      mov              r11, 81
                        add              rsp, 16;                             jmp   n193_lit_integer_β
.Llit_string_α_399_0:   .quad            .Llit_string_α_399_0_s
.Llit_string_α_399_0_s: .string          " "
                        .size            n194_lit_string_bx, .-n194_lit_string_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_400_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_call_α
n195_lit_integer_β:     mov              r11, 82
                        add              rsp, 16;                             jmp   n194_lit_string_β
.Llit_integer_α_400_0:  .quad            9
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_call_bx, @function
n196_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            sub              rsp, 16
                        mov              r11, 83
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd83:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd83]
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
                        cmp              al, 104;                             jne   .Lcall_α_401_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lcall_α_401_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_binop_α
n196_call_β:            mov              r11, 83
                        add              rsp, 16;                             jmp   n195_lit_integer_β
                        .size            n196_call_bx, .-n196_call_bx
                        .type            n197_binop_bx, @function
n197_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 84
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_lit_integer_α
n197_binop_β:           mov              r11, 84
                        add              rsp, 32;                             jmp   n195_lit_integer_β
                        .size            n197_binop_bx, .-n197_binop_bx
                        .type            n198_lit_integer_bx, @function
n198_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_call_α
n198_lit_integer_β:     mov              r11, 85
                        add              rsp, 16;                             jmp   n197_binop_β
.Llit_integer_α_403_0:  .quad            10
                        .size            n198_lit_integer_bx, .-n198_lit_integer_bx
                        .type            n199_call_bx, @function
n199_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:            sub              rsp, 16
                        mov              r11, 86
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd86:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd86]
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
                        cmp              al, 104;                             jne   .Lcall_α_404_240
                        add              rsp, 16;                             jmp   n198_lit_integer_β
.Lcall_α_404_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_binop_α
n199_call_β:            mov              r11, 86
                        add              rsp, 16;                             jmp   n198_lit_integer_β
                        .size            n199_call_bx, .-n199_call_bx
                        .type            n200_binop_bx, @function
n200_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_binop_α:           sub              rsp, 16
                        mov              r11, 87
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_lit_integer_α
n200_binop_β:           mov              r11, 87
                        add              rsp, 32;                             jmp   n198_lit_integer_β
                        .size            n200_binop_bx, .-n200_binop_bx
                        .type            n201_lit_integer_bx, @function
n201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_406_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_call_α
n201_lit_integer_β:     mov              r11, 88
                        add              rsp, 16;                             jmp   n200_binop_β
.Llit_integer_α_406_0:  .quad            13
                        .size            n201_lit_integer_bx, .-n201_lit_integer_bx
                        .type            n202_call_bx, @function
n202_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            sub              rsp, 16
                        mov              r11, 89
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd89:  .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd89]
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
                        cmp              al, 104;                             jne   .Lcall_α_407_240
                        add              rsp, 16;                             jmp   n201_lit_integer_β
.Lcall_α_407_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n203_binop_α
n202_call_β:            mov              r11, 89
                        add              rsp, 16;                             jmp   n201_lit_integer_β
                        .size            n202_call_bx, .-n202_call_bx
                        .type            n203_binop_bx, @function
n203_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:           sub              rsp, 16
                        mov              r11, 90
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_call_α
n203_binop_β:           mov              r11, 90
                        add              rsp, 32;                             jmp   n201_lit_integer_β
                        .size            n203_binop_bx, .-n203_binop_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            sub              rsp, 16
                        mov              r11, 91
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
.Lcall_α_bynamefnzd91:  .string          "SNO$PBK"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd91]
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
                        cmp              al, 104;                             jne   .Lcall_α_409_240
                        add              rsp, 16;                             jmp   n203_binop_β
.Lcall_α_409_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_lit_string_α
n204_call_β:            mov              r11, 91
                        add              rsp, 16;                             jmp   n203_binop_β
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_call_α
n205_lit_string_β:      mov              r11, 92
                        add              rsp, 32;                             jmp   n203_binop_β
.Llit_string_α_410_0:   .quad            .Llit_string_α_410_0_s
.Llit_string_α_410_0_s: .string          ""
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
                        .type            n206_call_bx, @function
n206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            sub              rsp, 16
                        mov              r11, 93
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
.Lcall_α_bynamefnzd93:  .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd93]
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
                        cmp              al, 104;                             jne   .Lcall_α_411_240
                        add              rsp, 16;                             jmp   n205_lit_string_β
.Lcall_α_411_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_call_α
n206_call_β:            mov              r11, 93
                        add              rsp, 16;                             jmp   n205_lit_string_β
                        .size            n206_call_bx, .-n206_call_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            sub              rsp, 16
                        mov              r11, 94
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd94:  .string          "SNO$PFEN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd94]
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
                        cmp              al, 104;                             jne   .Lcall_α_412_240
                        add              rsp, 32;                             jmp   n205_lit_string_β
.Lcall_α_412_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_assign_var_α
n207_call_β:            mov              r11, 94
                        add              rsp, 32;                             jmp   n205_lit_string_β
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_assign_var_bx, @function
n208_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_var_α:      sub              rsp, 16
                        mov              r11, 95
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
                        cmp              al, 104;                             jne   .Lassign_var_α_413_240
                        add              rsp, 48;                             jmp   n205_lit_string_β
.Lassign_var_α_413_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_statement_end_α
                        .size            n208_assign_var_bx, .-n208_assign_var_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 96
                        mov              r10, 2
                        add              rsp, 288;                            jmp   n210_stmt_mark_α
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_stmt_mark_bx, @function
n210_stmt_mark_bx:
#=======================================================================================================================
#                 jescape        =  '\'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n210_stmt_mark_α:       mov              r11, 97
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n211_statement_begin_α
                        .size            n210_stmt_mark_bx, .-n210_stmt_mark_bx
                        .type            n211_statement_begin_bx, @function
n211_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_begin_α: mov              r11, 98
                        mov              r10, 3;                              jmp   n212_lit_string_α
n211_statement_begin_β: mov              r11, 98;                             jmp   n216_stmt_mark_α
                        .size            n211_statement_begin_bx, .-n211_statement_begin_bx
                        .type            n212_lit_string_bx, @function
n212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_420_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_call_α
.Llit_string_α_420_0:   .quad            .Llit_string_α_420_0_s
.Llit_string_α_420_0_s: .string          "PAT$0"
                        .size            n212_lit_string_bx, .-n212_lit_string_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            sub              rsp, 16
                        mov              r11, 100
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd422:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd422]
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
                        cmp              al, 104;                             jne   .Lcall_α_421_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n211_statement_begin_β
.Lcall_α_421_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_assign_α
n213_call_β:            mov              r11, 100
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n211_statement_begin_β
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_assign_bx, @function
n214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 101
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
                        mov              rdi, qword ptr [rip + .Lassign_α_423_0]
                        .section         .rodata
.Lassign_α_423_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_423_1_s]
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
                        pop              rax;                                 jmp   n215_statement_end_α
.Lassign_α_423_0:       .quad            .Lassign_α_423_0_s
.Lassign_α_423_0_s:     .string          "jescape"
                        .size            n214_assign_bx, .-n214_assign_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 102
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n216_stmt_mark_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_stmt_mark_bx, @function
n216_stmt_mark_bx:
#=======================================================================================================================
#                 jchunk         =  BREAK('"\' CHAR(10) CHAR(13))
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n216_stmt_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n217_statement_begin_α
                        .size            n216_stmt_mark_bx, .-n216_stmt_mark_bx
                        .type            n217_statement_begin_bx, @function
n217_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 104
                        mov              r10, 4;                              jmp   n218_lit_string_α
n217_statement_begin_β: mov              r11, 104;                            jmp   n222_stmt_mark_α
                        .size            n217_statement_begin_bx, .-n217_statement_begin_bx
                        .type            n218_lit_string_bx, @function
n218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_α
.Llit_string_α_430_0:   .quad            .Llit_string_α_430_0_s
.Llit_string_α_430_0_s: .string          "PAT$1"
                        .size            n218_lit_string_bx, .-n218_lit_string_bx
                        .type            n219_call_bx, @function
n219_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:            sub              rsp, 16
                        mov              r11, 106
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd432:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd432]
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
                        cmp              al, 104;                             jne   .Lcall_α_431_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
.Lcall_α_431_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_assign_α
n219_call_β:            mov              r11, 106
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
                        .size            n219_call_bx, .-n219_call_bx
                        .type            n220_assign_bx, @function
n220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 107
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
                        mov              rdi, qword ptr [rip + .Lassign_α_433_0]
                        .section         .rodata
.Lassign_α_433_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_433_1_s]
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
                        pop              rax;                                 jmp   n221_statement_end_α
.Lassign_α_433_0:       .quad            .Lassign_α_433_0_s
.Lassign_α_433_0_s:     .string          "jchunk"
                        .size            n220_assign_bx, .-n220_assign_bx
                        .type            n221_statement_end_bx, @function
n221_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 108
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n222_stmt_mark_α
                        .size            n221_statement_end_bx, .-n221_statement_end_bx
                        .type            n222_stmt_mark_bx, @function
n222_stmt_mark_bx:
#=======================================================================================================================
#                 jstring        =  '"' jchunk ARBNO(jescape jchunk) '"' FENCE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n222_stmt_mark_α:       mov              r11, 109
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n223_statement_begin_α
                        .size            n222_stmt_mark_bx, .-n222_stmt_mark_bx
                        .type            n223_statement_begin_bx, @function
n223_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 110
                        mov              r10, 5;                              jmp   n224_var_α
n223_statement_begin_β: mov              r11, 110;                            jmp   n235_stmt_mark_α
                        .size            n223_statement_begin_bx, .-n223_statement_begin_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_var_α
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 0]              # jescape
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_var_α
n225_var_β:             mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 113
                        mov              rax, qword ptr [r9 + 16]             # jchunk
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_assign_α
n226_var_β:             mov              r11, 113
                        add              rsp, 16;                             jmp   n225_var_β
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_assign_bx, @function
n227_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_assign_α:          mov              r11, 114
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
                        mov              rdi, qword ptr [rip + .Lassign_α_443_0]
                        .section         .rodata
.Lassign_α_443_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_443_1_s]
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
                        pop              rax;                                 jmp   n228_assign_α
.Lassign_α_443_0:       .quad            .Lassign_α_443_0_s
.Lassign_α_443_0_s:     .string          "PAT$2$V0"
                        .size            n227_assign_bx, .-n227_assign_bx
                        .type            n228_assign_bx, @function
n228_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              r11, 115
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
                        mov              rdi, qword ptr [rip + .Lassign_α_444_0]
                        .section         .rodata
.Lassign_α_444_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_444_1_s]
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
                        pop              rax;                                 jmp   n229_assign_α
.Lassign_α_444_0:       .quad            .Lassign_α_444_0_s
.Lassign_α_444_0_s:     .string          "PAT$2$V1"
                        .size            n228_assign_bx, .-n228_assign_bx
                        .type            n229_assign_bx, @function
n229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_assign_α:          mov              r11, 116
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
                        mov              rdi, qword ptr [rip + .Lassign_α_445_0]
                        .section         .rodata
.Lassign_α_445_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_445_1_s]
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
                        pop              rax;                                 jmp   n230_lit_string_α
.Lassign_α_445_0:       .quad            .Lassign_α_445_0_s
.Lassign_α_445_0_s:     .string          "PAT$2$V2"
                        .size            n229_assign_bx, .-n229_assign_bx
                        .type            n230_lit_string_bx, @function
n230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_446_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_lit_string_α
n230_lit_string_β:      mov              r11, 117
                        add              rsp, 16;                             jmp   n226_var_β
.Llit_string_α_446_0:   .quad            .Llit_string_α_446_0_s
.Llit_string_α_446_0_s: .string          "PAT$2"
                        .size            n230_lit_string_bx, .-n230_lit_string_bx
                        .type            n231_lit_string_bx, @function
n231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_call_α
n231_lit_string_β:      mov              r11, 118
                        add              rsp, 16;                             jmp   n230_lit_string_β
.Llit_string_α_447_0:   .quad            .Llit_string_α_447_0_s
.Llit_string_α_447_0_s: .string          "3"
                        .size            n231_lit_string_bx, .-n231_lit_string_bx
                        .type            n232_call_bx, @function
n232_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        mov              r11, 119
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
.Lcall_α_rkfnzd449:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd449]
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
                        cmp              al, 104;                             jne   .Lcall_α_448_240
                        add              rsp, 16;                             jmp   n231_lit_string_β
.Lcall_α_448_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_assign_α
n232_call_β:            mov              r11, 119
                        add              rsp, 16;                             jmp   n231_lit_string_β
                        .size            n232_call_bx, .-n232_call_bx
                        .type            n233_assign_bx, @function
n233_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 120
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
                        mov              rdi, qword ptr [rip + .Lassign_α_450_0]
                        .section         .rodata
.Lassign_α_450_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_450_1_s]
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
                        pop              rax;                                 jmp   n234_statement_end_α
.Lassign_α_450_0:       .quad            .Lassign_α_450_0_s
.Lassign_α_450_0_s:     .string          "jstring"
                        .size            n233_assign_bx, .-n233_assign_bx
                        .type            n234_statement_end_bx, @function
n234_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 121
                        mov              r10, 5
                        add              rsp, 96;                             jmp   n235_stmt_mark_α
                        .size            n234_statement_end_bx, .-n234_statement_end_bx
                        .type            n235_stmt_mark_bx, @function
n235_stmt_mark_bx:
#=======================================================================================================================
#                 jnumber        =  FENCE('-' | '')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n235_stmt_mark_α:       mov              r11, 122
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n236_statement_begin_α
                        .size            n235_stmt_mark_bx, .-n235_stmt_mark_bx
                        .type            n236_statement_begin_bx, @function
n236_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_begin_α: mov              r11, 123
                        mov              r10, 6;                              jmp   n237_lit_string_α
n236_statement_begin_β: mov              r11, 123;                            jmp   n241_stmt_mark_α
                        .size            n236_statement_begin_bx, .-n236_statement_begin_bx
                        .type            n237_lit_string_bx, @function
n237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n238_call_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "PAT$3"
                        .size            n237_lit_string_bx, .-n237_lit_string_bx
                        .type            n238_call_bx, @function
n238_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            sub              rsp, 16
                        mov              r11, 125
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd459:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd459]
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
                        cmp              al, 104;                             jne   .Lcall_α_458_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
.Lcall_α_458_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n239_assign_α
n238_call_β:            mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n236_statement_begin_β
                        .size            n238_call_bx, .-n238_call_bx
                        .type            n239_assign_bx, @function
n239_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_α:          mov              r11, 126
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
                        mov              rdi, qword ptr [rip + .Lassign_α_460_0]
                        .section         .rodata
.Lassign_α_460_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_460_1_s]
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
                        pop              rax;                                 jmp   n240_statement_end_α
.Lassign_α_460_0:       .quad            .Lassign_α_460_0_s
.Lassign_α_460_0_s:     .string          "jnumber"
                        .size            n239_assign_bx, .-n239_assign_bx
                        .type            n240_statement_end_bx, @function
n240_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_end_α:   mov              r11, 127
                        mov              r10, 6
                        add              rsp, 32;                             jmp   n241_stmt_mark_α
                        .size            n240_statement_end_bx, .-n240_statement_end_bx
                        .type            n241_stmt_mark_bx, @function
n241_stmt_mark_bx:
#=======================================================================================================================
#                 jmember        =  $' ' jstring $' ' ':' *jelement
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n241_stmt_mark_α:       mov              r11, 128
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n242_statement_begin_α
                        .size            n241_stmt_mark_bx, .-n241_stmt_mark_bx
                        .type            n242_statement_begin_bx, @function
n242_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_begin_α: mov              r11, 129
                        mov              r10, 7;                              jmp   n243_lit_string_α
n242_statement_begin_β: mov              r11, 129;                            jmp   n259_stmt_mark_α
                        .size            n242_statement_begin_bx, .-n242_statement_begin_bx
                        .type            n243_lit_string_bx, @function
n243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      sub              rsp, 16
                        mov              r11, 130
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_call_α
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          " "
                        .size            n243_lit_string_bx, .-n243_lit_string_bx
                        .type            n244_call_bx, @function
n244_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            sub              rsp, 16
                        mov              r11, 131
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd469:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd469]
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
                        cmp              al, 104;                             jne   .Lcall_α_468_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
.Lcall_α_468_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_deref_α
n244_call_β:            mov              r11, 131
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n242_statement_begin_β
                        .size            n244_call_bx, .-n244_call_bx
                        .type            n245_deref_bx, @function
n245_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_deref_α:           sub              rsp, 16
                        mov              r11, 132
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
                        cmp              al, 104;                             jne   .Lderef_α_470_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n242_statement_begin_β
.Lderef_α_470_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_var_α
n245_deref_β:           mov              r11, 132
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n242_statement_begin_β
                        .size            n245_deref_bx, .-n245_deref_bx
                        .type            n246_var_bx, @function
n246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_binop_α
n246_var_β:             mov              r11, 133
                        add              rsp, 16;                             jmp   n245_deref_β
                        .size            n246_var_bx, .-n246_var_bx
                        .type            n247_binop_bx, @function
n247_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:           sub              rsp, 16
                        mov              r11, 134
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n248_lit_string_α
n247_binop_β:           mov              r11, 134
                        add              rsp, 16;                             jmp   n246_var_β
                        .size            n247_binop_bx, .-n247_binop_bx
                        .type            n248_lit_string_bx, @function
n248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_call_α
n248_lit_string_β:      mov              r11, 135
                        add              rsp, 16;                             jmp   n247_binop_β
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          " "
                        .size            n248_lit_string_bx, .-n248_lit_string_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            sub              rsp, 16
                        mov              r11, 136
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
                        add              rsp, 16;                             jmp   n248_lit_string_β
.Lcall_α_474_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_deref_α
n249_call_β:            mov              r11, 136
                        add              rsp, 16;                             jmp   n248_lit_string_β
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_deref_bx, @function
n250_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:           sub              rsp, 16
                        mov              r11, 137
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
                        add              rsp, 32;                             jmp   n248_lit_string_β
.Lderef_α_476_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_binop_α
n250_deref_β:           mov              r11, 137
                        add              rsp, 32;                             jmp   n248_lit_string_β
                        .size            n250_deref_bx, .-n250_deref_bx
                        .type            n251_binop_bx, @function
n251_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:           sub              rsp, 16
                        mov              r11, 138
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_lit_string_α
n251_binop_β:           mov              r11, 138
                        add              rsp, 16;                             jmp   n250_deref_β
                        .size            n251_binop_bx, .-n251_binop_bx
                        .type            n252_lit_string_bx, @function
n252_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      sub              rsp, 16
                        mov              r11, 139
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n253_binop_α
n252_lit_string_β:      mov              r11, 139
                        add              rsp, 16;                             jmp   n251_binop_β
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          ":"
                        .size            n252_lit_string_bx, .-n252_lit_string_bx
                        .type            n253_binop_bx, @function
n253_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_binop_α:           sub              rsp, 16
                        mov              r11, 140
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n254_lit_string_α
n253_binop_β:           mov              r11, 140
                        add              rsp, 16;                             jmp   n252_lit_string_β
                        .size            n253_binop_bx, .-n253_binop_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      sub              rsp, 16
                        mov              r11, 141
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_call_α
n254_lit_string_β:      mov              r11, 141
                        add              rsp, 16;                             jmp   n253_binop_β
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "EXPR$0$jelement"
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_call_bx, @function
n255_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            sub              rsp, 16
                        mov              r11, 142
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd482:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd482]
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
                        cmp              al, 104;                             jne   .Lcall_α_481_240
                        add              rsp, 16;                             jmp   n254_lit_string_β
.Lcall_α_481_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_binop_α
n255_call_β:            mov              r11, 142
                        add              rsp, 16;                             jmp   n254_lit_string_β
                        .size            n255_call_bx, .-n255_call_bx
                        .type            n256_binop_bx, @function
n256_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           sub              rsp, 16
                        mov              r11, 143
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_assign_α
                        .size            n256_binop_bx, .-n256_binop_bx
                        .type            n257_assign_bx, @function
n257_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              r11, 144
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
                        mov              rdi, qword ptr [rip + .Lassign_α_484_0]
                        .section         .rodata
.Lassign_α_484_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_484_1_s]
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
                        pop              rax;                                 jmp   n258_statement_end_α
.Lassign_α_484_0:       .quad            .Lassign_α_484_0_s
.Lassign_α_484_0_s:     .string          "jmember"
                        .size            n257_assign_bx, .-n257_assign_bx
                        .type            n258_statement_end_bx, @function
n258_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 145
                        mov              r10, 7
                        add              rsp, 224;                            jmp   n259_stmt_mark_α
                        .size            n258_statement_end_bx, .-n258_statement_end_bx
                        .type            n259_stmt_mark_bx, @function
n259_stmt_mark_bx:
#=======================================================================================================================
#                 jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n259_stmt_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n260_statement_begin_α
                        .size            n259_stmt_mark_bx, .-n259_stmt_mark_bx
                        .type            n260_statement_begin_bx, @function
n260_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α: mov              r11, 147
                        mov              r10, 8;                              jmp   n261_lit_string_α
n260_statement_begin_β: mov              r11, 147;                            jmp   n281_stmt_mark_α
                        .size            n260_statement_begin_bx, .-n260_statement_begin_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      sub              rsp, 16
                        mov              r11, 148
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_491_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_var_α
.Llit_string_α_491_0:   .quad            .Llit_string_α_491_0_s
.Llit_string_α_491_0_s: .string          "{"
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 149
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_lit_string_α
n262_var_β:             mov              r11, 149
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n260_statement_begin_β
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_lit_string_bx, @function
n263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_call_α
n263_lit_string_β:      mov              r11, 150
                        add              rsp, 16;                             jmp   n262_var_β
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          " "
                        .size            n263_lit_string_bx, .-n263_lit_string_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            sub              rsp, 16
                        mov              r11, 151
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd495:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd495]
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
                        cmp              al, 104;                             jne   .Lcall_α_494_240
                        add              rsp, 16;                             jmp   n263_lit_string_β
.Lcall_α_494_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_deref_α
n264_call_β:            mov              r11, 151
                        add              rsp, 16;                             jmp   n263_lit_string_β
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_deref_bx, @function
n265_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_deref_α:           sub              rsp, 16
                        mov              r11, 152
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
                        cmp              al, 104;                             jne   .Lderef_α_496_240
                        add              rsp, 32;                             jmp   n263_lit_string_β
.Lderef_α_496_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_lit_string_α
n265_deref_β:           mov              r11, 152
                        add              rsp, 32;                             jmp   n263_lit_string_β
                        .size            n265_deref_bx, .-n265_deref_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_binop_α
n266_lit_string_β:      mov              r11, 153
                        add              rsp, 16;                             jmp   n265_deref_β
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          ","
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_binop_bx, @function
n267_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_binop_α:           sub              rsp, 16
                        mov              r11, 154
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_var_α
n267_binop_β:           mov              r11, 154
                        add              rsp, 16;                             jmp   n266_lit_string_β
                        .size            n267_binop_bx, .-n267_binop_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 64]             # jmember
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_binop_α
n268_var_β:             mov              r11, 155
                        add              rsp, 16;                             jmp   n267_binop_β
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_binop_bx, @function
n269_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:           sub              rsp, 16
                        mov              r11, 156
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_call_α
n269_binop_β:           mov              r11, 156
                        add              rsp, 16;                             jmp   n268_var_β
                        .size            n269_binop_bx, .-n269_binop_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            sub              rsp, 16
                        mov              r11, 157
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd157: .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd157]
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
                        cmp              al, 104;                             jne   .Lcall_α_501_240
                        add              rsp, 16;                             jmp   n269_binop_β
.Lcall_α_501_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n271_binop_α
n270_call_β:            mov              r11, 157
                        add              rsp, 16;                             jmp   n269_binop_β
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_binop_bx, @function
n271_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_binop_α:           sub              rsp, 16
                        mov              r11, 158
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_lit_string_α
n271_binop_β:           mov              r11, 158
                        add              rsp, 32;                             jmp   n269_binop_β
                        .size            n271_binop_bx, .-n271_binop_bx
                        .type            n272_lit_string_bx, @function
n272_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_503_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n273_call_α
n272_lit_string_β:      mov              r11, 159
                        add              rsp, 16;                             jmp   n271_binop_β
.Llit_string_α_503_0:   .quad            .Llit_string_α_503_0_s
.Llit_string_α_503_0_s: .string          " "
                        .size            n272_lit_string_bx, .-n272_lit_string_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            sub              rsp, 16
                        mov              r11, 160
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
                        add              rsp, 16;                             jmp   n272_lit_string_β
.Lcall_α_504_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_deref_α
n273_call_β:            mov              r11, 160
                        add              rsp, 16;                             jmp   n272_lit_string_β
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_deref_bx, @function
n274_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_deref_α:           sub              rsp, 16
                        mov              r11, 161
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
                        add              rsp, 32;                             jmp   n272_lit_string_β
.Lderef_α_506_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_call_α
n274_deref_β:           mov              r11, 161
                        add              rsp, 32;                             jmp   n272_lit_string_β
                        .size            n274_deref_bx, .-n274_deref_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            sub              rsp, 16
                        mov              r11, 162
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
.Lcall_α_bynamefnzd162: .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd162]
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
                        cmp              al, 104;                             jne   .Lcall_α_507_240
                        add              rsp, 16;                             jmp   n274_deref_β
.Lcall_α_507_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n276_binop_α
n275_call_β:            mov              r11, 162
                        add              rsp, 16;                             jmp   n274_deref_β
                        .size            n275_call_bx, .-n275_call_bx
                        .type            n276_binop_bx, @function
n276_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_binop_α:           sub              rsp, 16
                        mov              r11, 163
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n277_lit_string_α
n276_binop_β:           mov              r11, 163
                        add              rsp, 32;                             jmp   n274_deref_β
                        .size            n276_binop_bx, .-n276_binop_bx
                        .type            n277_lit_string_bx, @function
n277_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      sub              rsp, 16
                        mov              r11, 164
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n278_binop_α
n277_lit_string_β:      mov              r11, 164
                        add              rsp, 16;                             jmp   n276_binop_β
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "}"
                        .size            n277_lit_string_bx, .-n277_lit_string_bx
                        .type            n278_binop_bx, @function
n278_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 165
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n279_assign_α
                        .size            n278_binop_bx, .-n278_binop_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 166
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
                        mov              rdi, qword ptr [rip + .Lassign_α_511_0]
                        .section         .rodata
.Lassign_α_511_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_511_1_s]
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
                        pop              rax;                                 jmp   n280_statement_end_α
.Lassign_α_511_0:       .quad            .Lassign_α_511_0_s
.Lassign_α_511_0_s:     .string          "jobject"
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_statement_end_bx, @function
n280_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 167
                        mov              r10, 8
                        add              rsp, 288;                            jmp   n281_stmt_mark_α
                        .size            n280_statement_end_bx, .-n280_statement_end_bx
                        .type            n281_stmt_mark_bx, @function
n281_stmt_mark_bx:
#=======================================================================================================================
#                 jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n281_stmt_mark_α:       mov              r11, 168
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n282_statement_begin_α
                        .size            n281_stmt_mark_bx, .-n281_stmt_mark_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α: mov              r11, 169
                        mov              r10, 9;                              jmp   n283_lit_string_α
n282_statement_begin_β: mov              r11, 169;                            jmp   n305_stmt_mark_α
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              r11, 170
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_518_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_lit_string_α
.Llit_string_α_518_0:   .quad            .Llit_string_α_518_0_s
.Llit_string_α_518_0_s: .string          "["
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_lit_string_bx, @function
n284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_519_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_call_α
n284_lit_string_β:      mov              r11, 171
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n282_statement_begin_β
.Llit_string_α_519_0:   .quad            .Llit_string_α_519_0_s
.Llit_string_α_519_0_s: .string          "EXPR$1$jelement"
                        .size            n284_lit_string_bx, .-n284_lit_string_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            sub              rsp, 16
                        mov              r11, 172
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd521:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd521]
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
                        cmp              al, 104;                             jne   .Lcall_α_520_240
                        add              rsp, 16;                             jmp   n284_lit_string_β
.Lcall_α_520_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n286_lit_string_α
n285_call_β:            mov              r11, 172
                        add              rsp, 16;                             jmp   n284_lit_string_β
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_call_α
n286_lit_string_β:      mov              r11, 173
                        add              rsp, 32;                             jmp   n284_lit_string_β
.Llit_string_α_522_0:   .quad            .Llit_string_α_522_0_s
.Llit_string_α_522_0_s: .string          " "
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            sub              rsp, 16
                        mov              r11, 174
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd524:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd524]
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
                        cmp              al, 104;                             jne   .Lcall_α_523_240
                        add              rsp, 16;                             jmp   n286_lit_string_β
.Lcall_α_523_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n288_deref_α
n287_call_β:            mov              r11, 174
                        add              rsp, 16;                             jmp   n286_lit_string_β
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_deref_bx, @function
n288_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_deref_α:           sub              rsp, 16
                        mov              r11, 175
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
                        cmp              al, 104;                             jne   .Lderef_α_525_240
                        add              rsp, 32;                             jmp   n286_lit_string_β
.Lderef_α_525_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_string_α
n288_deref_β:           mov              r11, 175
                        add              rsp, 32;                             jmp   n286_lit_string_β
                        .size            n288_deref_bx, .-n288_deref_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_binop_α
n289_lit_string_β:      mov              r11, 176
                        add              rsp, 16;                             jmp   n288_deref_β
.Llit_string_α_526_0:   .quad            .Llit_string_α_526_0_s
.Llit_string_α_526_0_s: .string          ","
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_binop_bx, @function
n290_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:           sub              rsp, 16
                        mov              r11, 177
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_lit_string_α
n290_binop_β:           mov              r11, 177
                        add              rsp, 16;                             jmp   n289_lit_string_β
                        .size            n290_binop_bx, .-n290_binop_bx
                        .type            n291_lit_string_bx, @function
n291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      sub              rsp, 16
                        mov              r11, 178
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n292_call_α
n291_lit_string_β:      mov              r11, 178
                        add              rsp, 16;                             jmp   n290_binop_β
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "EXPR$2$jelement"
                        .size            n291_lit_string_bx, .-n291_lit_string_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        mov              r11, 179
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd530:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd530]
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
                        cmp              al, 104;                             jne   .Lcall_α_529_240
                        add              rsp, 16;                             jmp   n291_lit_string_β
.Lcall_α_529_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_binop_α
n292_call_β:            mov              r11, 179
                        add              rsp, 16;                             jmp   n291_lit_string_β
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_binop_bx, @function
n293_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:           sub              rsp, 16
                        mov              r11, 180
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n294_call_α
n293_binop_β:           mov              r11, 180
                        add              rsp, 32;                             jmp   n291_lit_string_β
                        .size            n293_binop_bx, .-n293_binop_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            sub              rsp, 16
                        mov              r11, 181
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_bynamefnzd181: .string          "SNO$PARB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd181]
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
                        cmp              al, 104;                             jne   .Lcall_α_532_240
                        add              rsp, 16;                             jmp   n293_binop_β
.Lcall_α_532_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_binop_α
n294_call_β:            mov              r11, 181
                        add              rsp, 16;                             jmp   n293_binop_β
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_binop_bx, @function
n295_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:           sub              rsp, 16
                        mov              r11, 182
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_lit_string_α
n295_binop_β:           mov              r11, 182
                        add              rsp, 32;                             jmp   n293_binop_β
                        .size            n295_binop_bx, .-n295_binop_bx
                        .type            n296_lit_string_bx, @function
n296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      sub              rsp, 16
                        mov              r11, 183
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_534_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_call_α
n296_lit_string_β:      mov              r11, 183
                        add              rsp, 16;                             jmp   n295_binop_β
.Llit_string_α_534_0:   .quad            .Llit_string_α_534_0_s
.Llit_string_α_534_0_s: .string          " "
                        .size            n296_lit_string_bx, .-n296_lit_string_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            sub              rsp, 16
                        mov              r11, 184
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd536:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd536]
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
                        cmp              al, 104;                             jne   .Lcall_α_535_240
                        add              rsp, 16;                             jmp   n296_lit_string_β
.Lcall_α_535_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_deref_α
n297_call_β:            mov              r11, 184
                        add              rsp, 16;                             jmp   n296_lit_string_β
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_deref_bx, @function
n298_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_deref_α:           sub              rsp, 16
                        mov              r11, 185
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
                        cmp              al, 104;                             jne   .Lderef_α_537_240
                        add              rsp, 32;                             jmp   n296_lit_string_β
.Lderef_α_537_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_call_α
n298_deref_β:           mov              r11, 185
                        add              rsp, 32;                             jmp   n296_lit_string_β
                        .size            n298_deref_bx, .-n298_deref_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            sub              rsp, 16
                        mov              r11, 186
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
.Lcall_α_bynamefnzd186: .string          "SNO$PBALT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd186]
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
                        cmp              al, 104;                             jne   .Lcall_α_538_240
                        add              rsp, 16;                             jmp   n298_deref_β
.Lcall_α_538_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_binop_α
n299_call_β:            mov              r11, 186
                        add              rsp, 16;                             jmp   n298_deref_β
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_binop_bx, @function
n300_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           sub              rsp, 16
                        mov              r11, 187
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_lit_string_α
n300_binop_β:           mov              r11, 187
                        add              rsp, 32;                             jmp   n298_deref_β
                        .size            n300_binop_bx, .-n300_binop_bx
                        .type            n301_lit_string_bx, @function
n301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      sub              rsp, 16
                        mov              r11, 188
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_binop_α
n301_lit_string_β:      mov              r11, 188
                        add              rsp, 16;                             jmp   n300_binop_β
.Llit_string_α_540_0:   .quad            .Llit_string_α_540_0_s
.Llit_string_α_540_0_s: .string          "]"
                        .size            n301_lit_string_bx, .-n301_lit_string_bx
                        .type            n302_binop_bx, @function
n302_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_binop_α:           sub              rsp, 16
                        mov              r11, 189
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n303_assign_α
                        .size            n302_binop_bx, .-n302_binop_bx
                        .type            n303_assign_bx, @function
n303_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:          mov              r11, 190
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
                        mov              rdi, qword ptr [rip + .Lassign_α_542_0]
                        .section         .rodata
.Lassign_α_542_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_542_1_s]
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
                        pop              rax;                                 jmp   n304_statement_end_α
.Lassign_α_542_0:       .quad            .Lassign_α_542_0_s
.Lassign_α_542_0_s:     .string          "jarray"
                        .size            n303_assign_bx, .-n303_assign_bx
                        .type            n304_statement_end_bx, @function
n304_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_statement_end_α:   mov              r11, 191
                        mov              r10, 9
                        add              rsp, 320;                            jmp   n305_stmt_mark_α
                        .size            n304_statement_end_bx, .-n304_statement_end_bx
                        .type            n305_stmt_mark_bx, @function
n305_stmt_mark_bx:
#=======================================================================================================================
#                 jvalue         =  ( jstring
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n305_stmt_mark_α:       mov              r11, 192
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n306_statement_begin_α
                        .size            n305_stmt_mark_bx, .-n305_stmt_mark_bx
                        .type            n306_statement_begin_bx, @function
n306_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_statement_begin_α: mov              r11, 193
                        mov              r10, 10;                             jmp   n307_var_α
n306_statement_begin_β: mov              r11, 193;                            jmp   n320_stmt_mark_α
                        .size            n306_statement_begin_bx, .-n306_statement_begin_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 32]             # jstring
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_var_α
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             sub              rsp, 16
                        mov              r11, 195
                        mov              rax, qword ptr [r9 + 48]             # jnumber
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n309_var_α
n308_var_β:             mov              r11, 195
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n306_statement_begin_β
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_var_bx, @function
n309_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 80]             # jobject
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n310_var_α
n309_var_β:             mov              r11, 196
                        add              rsp, 16;                             jmp   n308_var_β
                        .size            n309_var_bx, .-n309_var_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             sub              rsp, 16
                        mov              r11, 197
                        mov              rax, qword ptr [r9 + 96]             # jarray
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n311_assign_α
n310_var_β:             mov              r11, 197
                        add              rsp, 16;                             jmp   n309_var_β
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_assign_bx, @function
n311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:          mov              r11, 198
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
                        mov              rdi, qword ptr [rip + .Lassign_α_553_0]
                        .section         .rodata
.Lassign_α_553_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_553_1_s]
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
                        pop              rax;                                 jmp   n312_assign_α
.Lassign_α_553_0:       .quad            .Lassign_α_553_0_s
.Lassign_α_553_0_s:     .string          "PAT$4$V0"
                        .size            n311_assign_bx, .-n311_assign_bx
                        .type            n312_assign_bx, @function
n312_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_assign_α:          mov              r11, 199
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
                        mov              rdi, qword ptr [rip + .Lassign_α_554_0]
                        .section         .rodata
.Lassign_α_554_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_554_1_s]
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
                        pop              rax;                                 jmp   n313_assign_α
.Lassign_α_554_0:       .quad            .Lassign_α_554_0_s
.Lassign_α_554_0_s:     .string          "PAT$4$V1"
                        .size            n312_assign_bx, .-n312_assign_bx
                        .type            n313_assign_bx, @function
n313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              r11, 200
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
                        mov              rdi, qword ptr [rip + .Lassign_α_555_0]
                        .section         .rodata
.Lassign_α_555_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_555_1_s]
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
                        pop              rax;                                 jmp   n314_assign_α
.Lassign_α_555_0:       .quad            .Lassign_α_555_0_s
.Lassign_α_555_0_s:     .string          "PAT$4$V2"
                        .size            n313_assign_bx, .-n313_assign_bx
                        .type            n314_assign_bx, @function
n314_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:          mov              r11, 201
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
                        mov              rdi, qword ptr [rip + .Lassign_α_556_0]
                        .section         .rodata
.Lassign_α_556_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_556_1_s]
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
                        pop              rax;                                 jmp   n315_lit_string_α
.Lassign_α_556_0:       .quad            .Lassign_α_556_0_s
.Lassign_α_556_0_s:     .string          "PAT$4$V3"
                        .size            n314_assign_bx, .-n314_assign_bx
                        .type            n315_lit_string_bx, @function
n315_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_557_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_lit_string_α
n315_lit_string_β:      mov              r11, 202
                        add              rsp, 16;                             jmp   n310_var_β
.Llit_string_α_557_0:   .quad            .Llit_string_α_557_0_s
.Llit_string_α_557_0_s: .string          "PAT$4"
                        .size            n315_lit_string_bx, .-n315_lit_string_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      sub              rsp, 16
                        mov              r11, 203
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_558_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_call_α
n316_lit_string_β:      mov              r11, 203
                        add              rsp, 16;                             jmp   n315_lit_string_β
.Llit_string_α_558_0:   .quad            .Llit_string_α_558_0_s
.Llit_string_α_558_0_s: .string          "4"
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            sub              rsp, 16
                        mov              r11, 204
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
.Lcall_α_rkfnzd560:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd560]
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
                        cmp              al, 104;                             jne   .Lcall_α_559_240
                        add              rsp, 16;                             jmp   n316_lit_string_β
.Lcall_α_559_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n318_assign_α
n317_call_β:            mov              r11, 204
                        add              rsp, 16;                             jmp   n316_lit_string_β
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_assign_bx, @function
n318_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:          mov              r11, 205
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
                        mov              rdi, qword ptr [rip + .Lassign_α_561_0]
                        .section         .rodata
.Lassign_α_561_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_561_1_s]
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
                        pop              rax;                                 jmp   n319_statement_end_α
.Lassign_α_561_0:       .quad            .Lassign_α_561_0_s
.Lassign_α_561_0_s:     .string          "jvalue"
                        .size            n318_assign_bx, .-n318_assign_bx
                        .type            n319_statement_end_bx, @function
n319_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_statement_end_α:   mov              r11, 206
                        mov              r10, 10
                        add              rsp, 112;                            jmp   n320_stmt_mark_α
                        .size            n319_statement_end_bx, .-n319_statement_end_bx
                        .type            n320_stmt_mark_bx, @function
n320_stmt_mark_bx:
#=======================================================================================================================
#                 jelement       =  $' ' *jvalue $' '
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n320_stmt_mark_α:       mov              r11, 207
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n321_statement_begin_α
                        .size            n320_stmt_mark_bx, .-n320_stmt_mark_bx
                        .type            n321_statement_begin_bx, @function
n321_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_statement_begin_α: mov              r11, 208
                        mov              r10, 11;                             jmp   n322_lit_string_α
n321_statement_begin_β: mov              r11, 208;                            jmp   n334_stmt_mark_α
                        .size            n321_statement_begin_bx, .-n321_statement_begin_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_call_α
.Llit_string_α_568_0:   .quad            .Llit_string_α_568_0_s
.Llit_string_α_568_0_s: .string          " "
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_call_bx, @function
n323_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            sub              rsp, 16
                        mov              r11, 210
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd570:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd570]
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
                        cmp              al, 104;                             jne   .Lcall_α_569_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
.Lcall_α_569_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n324_deref_α
n323_call_β:            mov              r11, 210
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n321_statement_begin_β
                        .size            n323_call_bx, .-n323_call_bx
                        .type            n324_deref_bx, @function
n324_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_deref_α:           sub              rsp, 16
                        mov              r11, 211
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
                        cmp              al, 104;                             jne   .Lderef_α_571_240
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n321_statement_begin_β
.Lderef_α_571_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_lit_string_α
n324_deref_β:           mov              r11, 211
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n321_statement_begin_β
                        .size            n324_deref_bx, .-n324_deref_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      sub              rsp, 16
                        mov              r11, 212
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_call_α
n325_lit_string_β:      mov              r11, 212
                        add              rsp, 16;                             jmp   n324_deref_β
.Llit_string_α_572_0:   .quad            .Llit_string_α_572_0_s
.Llit_string_α_572_0_s: .string          "EXPR$3$jvalue"
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_call_bx, @function
n326_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            sub              rsp, 16
                        mov              r11, 213
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd574:     .string          "SNO$MKEXPR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd574]
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
                        cmp              al, 104;                             jne   .Lcall_α_573_240
                        add              rsp, 16;                             jmp   n325_lit_string_β
.Lcall_α_573_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_binop_α
n326_call_β:            mov              r11, 213
                        add              rsp, 16;                             jmp   n325_lit_string_β
                        .size            n326_call_bx, .-n326_call_bx
                        .type            n327_binop_bx, @function
n327_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           sub              rsp, 16
                        mov              r11, 214
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_lit_string_α
n327_binop_β:           mov              r11, 214
                        add              rsp, 32;                             jmp   n325_lit_string_β
                        .size            n327_binop_bx, .-n327_binop_bx
                        .type            n328_lit_string_bx, @function
n328_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_576_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_call_α
n328_lit_string_β:      mov              r11, 215
                        add              rsp, 16;                             jmp   n327_binop_β
.Llit_string_α_576_0:   .quad            .Llit_string_α_576_0_s
.Llit_string_α_576_0_s: .string          " "
                        .size            n328_lit_string_bx, .-n328_lit_string_bx
                        .type            n329_call_bx, @function
n329_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:            sub              rsp, 16
                        mov              r11, 216
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd578:     .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd578]
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
                        cmp              al, 104;                             jne   .Lcall_α_577_240
                        add              rsp, 16;                             jmp   n328_lit_string_β
.Lcall_α_577_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n330_deref_α
n329_call_β:            mov              r11, 216
                        add              rsp, 16;                             jmp   n328_lit_string_β
                        .size            n329_call_bx, .-n329_call_bx
                        .type            n330_deref_bx, @function
n330_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_deref_α:           sub              rsp, 16
                        mov              r11, 217
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
                        cmp              al, 104;                             jne   .Lderef_α_579_240
                        add              rsp, 32;                             jmp   n328_lit_string_β
.Lderef_α_579_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_binop_α
n330_deref_β:           mov              r11, 217
                        add              rsp, 32;                             jmp   n328_lit_string_β
                        .size            n330_deref_bx, .-n330_deref_bx
                        .type            n331_binop_bx, @function
n331_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_binop_α:           sub              rsp, 16
                        mov              r11, 218
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n332_assign_α
                        .size            n331_binop_bx, .-n331_binop_bx
                        .type            n332_assign_bx, @function
n332_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_assign_α:          mov              r11, 219
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
                        mov              rdi, qword ptr [rip + .Lassign_α_581_0]
                        .section         .rodata
.Lassign_α_581_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_581_1_s]
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
                        pop              rax;                                 jmp   n333_statement_end_α
.Lassign_α_581_0:       .quad            .Lassign_α_581_0_s
.Lassign_α_581_0_s:     .string          "jelement"
                        .size            n332_assign_bx, .-n332_assign_bx
                        .type            n333_statement_end_bx, @function
n333_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_statement_end_α:   mov              r11, 220
                        mov              r10, 11
                        add              rsp, 160;                            jmp   n334_stmt_mark_α
                        .size            n333_statement_end_bx, .-n333_statement_end_bx
                        .type            n334_stmt_mark_bx, @function
n334_stmt_mark_bx:
#=======================================================================================================================
#                 json           =  POS(0) jelement RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n334_stmt_mark_α:       mov              r11, 221
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n335_statement_begin_α
                        .size            n334_stmt_mark_bx, .-n334_stmt_mark_bx
                        .type            n335_statement_begin_bx, @function
n335_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_begin_α: mov              r11, 222
                        mov              r10, 12;                             jmp   n336_var_α
n335_statement_begin_β: mov              r11, 222;                            jmp   n343_stmt_mark_α
                        .size            n335_statement_begin_bx, .-n335_statement_begin_bx
                        .type            n336_var_bx, @function
n336_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 128]            # jelement
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n337_assign_α
                        .size            n336_var_bx, .-n336_var_bx
                        .type            n337_assign_bx, @function
n337_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:          mov              r11, 224
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
                        mov              rdi, qword ptr [rip + .Lassign_α_589_0]
                        .section         .rodata
.Lassign_α_589_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_589_1_s]
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
                        pop              rax;                                 jmp   n338_lit_string_α
.Lassign_α_589_0:       .quad            .Lassign_α_589_0_s
.Lassign_α_589_0_s:     .string          "PAT$5$V0"
                        .size            n337_assign_bx, .-n337_assign_bx
                        .type            n338_lit_string_bx, @function
n338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_590_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n339_lit_string_α
n338_lit_string_β:      mov              r11, 225
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n335_statement_begin_β
.Llit_string_α_590_0:   .quad            .Llit_string_α_590_0_s
.Llit_string_α_590_0_s: .string          "PAT$5"
                        .size            n338_lit_string_bx, .-n338_lit_string_bx
                        .type            n339_lit_string_bx, @function
n339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_591_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n340_call_α
n339_lit_string_β:      mov              r11, 226
                        add              rsp, 16;                             jmp   n338_lit_string_β
.Llit_string_α_591_0:   .quad            .Llit_string_α_591_0_s
.Llit_string_α_591_0_s: .string          "1"
                        .size            n339_lit_string_bx, .-n339_lit_string_bx
                        .type            n340_call_bx, @function
n340_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            sub              rsp, 16
                        mov              r11, 227
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
.Lcall_α_rkfnzd593:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd593]
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
                        cmp              al, 104;                             jne   .Lcall_α_592_240
                        add              rsp, 16;                             jmp   n339_lit_string_β
.Lcall_α_592_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n341_assign_α
n340_call_β:            mov              r11, 227
                        add              rsp, 16;                             jmp   n339_lit_string_β
                        .size            n340_call_bx, .-n340_call_bx
                        .type            n341_assign_bx, @function
n341_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:          mov              r11, 228
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
                        mov              rdi, qword ptr [rip + .Lassign_α_594_0]
                        .section         .rodata
.Lassign_α_594_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_594_1_s]
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
                        pop              rax;                                 jmp   n342_statement_end_α
.Lassign_α_594_0:       .quad            .Lassign_α_594_0_s
.Lassign_α_594_0_s:     .string          "json"
                        .size            n341_assign_bx, .-n341_assign_bx
                        .type            n342_statement_end_bx, @function
n342_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_statement_end_α:   mov              r11, 229
                        mov              r10, 12
                        add              rsp, 64;                             jmp   n343_stmt_mark_α
                        .size            n342_statement_end_bx, .-n342_statement_end_bx
                        .type            n343_stmt_mark_bx, @function
n343_stmt_mark_bx:
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n343_stmt_mark_α:       mov              r11, 230
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n344_statement_begin_α
                        .size            n343_stmt_mark_bx, .-n343_stmt_mark_bx
                        .type            n344_statement_begin_bx, @function
n344_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_begin_α: mov              r11, 231
                        mov              r10, 13;                             jmp   n345_lit_name_α
n344_statement_begin_β: mov              r11, 231;                            jmp   n350_stmt_mark_α
                        .size            n344_statement_begin_bx, .-n344_statement_begin_bx
                        .type            n345_lit_name_bx, @function
n345_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_name_α:        sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n346_lit_integer_α
.Llit_name_α_601_0:     .quad            .Llit_name_α_601_0_s
.Llit_name_α_601_0_s:   .string          "INPUT"
                        .size            n345_lit_name_bx, .-n345_lit_name_bx
                        .type            n346_lit_integer_bx, @function
n346_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n347_lit_string_α
n346_lit_integer_β:     mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n344_statement_begin_β
.Llit_integer_α_602_0:  .quad            9
                        .size            n346_lit_integer_bx, .-n346_lit_integer_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      sub              rsp, 16
                        mov              r11, 234
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n348_call_α
n347_lit_string_β:      mov              r11, 234
                        add              rsp, 16;                             jmp   n346_lit_integer_β
.Llit_string_α_603_0:   .quad            .Llit_string_α_603_0_s
.Llit_string_α_603_0_s: .string          "[-f0 -r4194304]"
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            sub              rsp, 16
                        mov              r11, 235
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
.Lcall_α_bynamefnzd235: .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd235]
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
                        cmp              al, 104;                             jne   .Lcall_α_604_240
                        add              rsp, 16;                             jmp   n347_lit_string_β
.Lcall_α_604_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n349_statement_end_α
n348_call_β:            mov              r11, 235
                        add              rsp, 16;                             jmp   n347_lit_string_β
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_statement_end_bx, @function
n349_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:   mov              r11, 236
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n350_stmt_mark_α
                        .size            n349_statement_end_bx, .-n349_statement_end_bx
                        .type            n350_stmt_mark_bx, @function
n350_stmt_mark_bx:
#=======================================================================================================================
#                 src             =   INPUT                       :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n350_stmt_mark_α:       mov              r11, 237
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n351_statement_begin_α
                        .size            n350_stmt_mark_bx, .-n350_stmt_mark_bx
                        .type            n351_statement_begin_bx, @function
n351_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_statement_begin_α: mov              r11, 238
                        mov              r10, 14;                             jmp   n352_var_α
n351_statement_begin_β: mov              r11, 238;                            jmp   n356_stmt_mark_α
                        .size            n351_statement_begin_bx, .-n351_statement_begin_bx
                        .type            n352_var_bx, @function
n352_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             sub              rsp, 16
                        mov              r11, 239
                        mov              rdi, qword ptr [rip + .Lvar_α_611_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_611_240
                        add              rsp, 16;                             jmp   n351_statement_begin_β
.Lvar_α_611_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n353_assign_α
.Lvar_α_611_0:          .quad            .Lvar_α_611_0_s
.Lvar_α_611_0_s:        .string          "INPUT"
                        .size            n352_var_bx, .-n352_var_bx
                        .type            n353_assign_bx, @function
n353_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_α:          mov              r11, 240
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
                        mov              rdi, qword ptr [rip + .Lassign_α_612_0]
                        .section         .rodata
.Lassign_α_612_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_612_1_s]
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
                        pop              rax;                                 jmp   n354_statement_end_α
.Lassign_α_612_0:       .quad            .Lassign_α_612_0_s
.Lassign_α_612_0_s:     .string          "src"
                        .size            n353_assign_bx, .-n353_assign_bx
                        .type            n354_statement_end_bx, @function
n354_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_statement_end_α:   mov              r11, 241
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n355_stmt_mark_α
                        .size            n354_statement_end_bx, .-n354_statement_end_bx
                        .type            n355_stmt_mark_bx, @function
n355_stmt_mark_bx:
#=======================================================================================================================
#                 src             json                            :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n355_stmt_mark_α:       mov              r11, 242
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n357_statement_begin_α
                        .size            n355_stmt_mark_bx, .-n355_stmt_mark_bx
                        .type            n356_stmt_mark_bx, @function
n356_stmt_mark_bx:
#=======================================================================================================================
# error           OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n356_stmt_mark_α:       mov              r11, 243
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n373_statement_begin_α
                        .size            n356_stmt_mark_bx, .-n356_stmt_mark_bx
                        .type            n357_statement_begin_bx, @function
n357_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_statement_begin_α: mov              r11, 244
                        mov              r10, 15;                             jmp   n358_var_α
n357_statement_begin_β: mov              r11, 244;                            jmp   n356_stmt_mark_α
                        .size            n357_statement_begin_bx, .-n357_statement_begin_bx
                        .type            n358_var_bx, @function
n358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             sub              rsp, 16
                        mov              r11, 245
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n359_var_α
                        .size            n358_var_bx, .-n358_var_bx
                        .type            n359_var_bx, @function
n359_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 144]            # json
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n360_assign_α
n359_var_β:             mov              r11, 246
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n356_stmt_mark_α
                        .size            n359_var_bx, .-n359_var_bx
                        .type            n360_assign_bx, @function
n360_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              r11, 247
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
                        mov              rdi, qword ptr [rip + .Lassign_α_623_0]
                        .section         .rodata
.Lassign_α_623_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_623_1_s]
                        mov              r8, 41
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
                        mov              rdi, qword ptr [rip + .Lassign_α_623_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_match_begin_α
n360_assign_β:          mov              r11, 247;                            jmp   n359_var_β
.Lassign_α_623_0:       .quad            .Lassign_α_623_0_s
.Lassign_α_623_0_s:     .string          "PATV$0"
                        .size            n360_assign_bx, .-n360_assign_bx
                        .type            n361_match_begin_bx, @function
n361_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_match_begin_α:     mov              r11, 248
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
.Lmatch_begin_α_625_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_625_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n362_match_defer_α
n361_match_begin_β:     mov              r11, 248
.Lmatch_begin_α_625_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_625_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_625_1
                                                                              jmp   .Lmatch_begin_α_625_0
.Lmatch_begin_β_625_1:
.Lmatch_begin_γ_361_af: mov              r11, 248
.Lmatch_begin_ω_361_af: mov              r11, 248
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
                        pop              rbp;                                 jmp   n360_assign_β
                        .size            n361_match_begin_bx, .-n361_match_begin_bx
                        .type            n362_match_defer_bx, @function
n362_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_match_defer_α:     mov              r11, 249
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S8]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_626_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_626_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_626_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_626_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_626_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_626_23
                                                                              jmp   .Lmatch_defer_α_626_22
.Lmatch_defer_α_626_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_626_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_626_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_626_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_626_0
.Lmatch_defer_α_626_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_626_0
.Lmatch_defer_α_626_22: push             r14
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
.Lmatch_defer_α_626_23: test             rax, rax;                            jz    .Lmatch_defer_α_626_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_626_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_626_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_626_4:                                                        jmp   n363_match_end_α
.Lmatch_defer_α_626_5:                                                        jmp   n361_match_begin_β
.Lmatch_defer_α_626_0:  mov              eax, edx
                        test             eax, eax;                            js    n361_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_626_6]
                        push             rcx
                        push             rax;                                 jmp   n363_match_end_α
.Lmatch_defer_α_626_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n361_match_begin_β
n362_match_defer_β:     mov              r11, 249
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_626_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_626_12
                                                                              jmp   rax
.Lmatch_defer_β_626_12:                                                       jmp   qword ptr [rsp]
                        .size            n362_match_defer_bx, .-n362_match_defer_bx
                        .type            n363_match_end_bx, @function
n363_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_match_end_α:       mov              r11, 250
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
                        test             rax, rax;                            je    .Lmatch_end_α_628_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_361_af
.Lmatch_end_α_628_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n364_statement_end_α
                        .size            n363_match_end_bx, .-n363_match_end_bx
                        .type            n364_statement_end_bx, @function
n364_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_statement_end_α:   mov              r11, 251
                        mov              r10, 15
                        add              rsp, 32;                             jmp   n365_stmt_mark_α
                        .size            n364_statement_end_bx, .-n364_statement_end_bx
                        .type            n365_stmt_mark_bx, @function
n365_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n365_stmt_mark_α:       mov              r11, 252
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n366_statement_begin_α
                        .size            n365_stmt_mark_bx, .-n365_stmt_mark_bx
                        .type            n366_statement_begin_bx, @function
n366_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_statement_begin_α: mov              r11, 253
                        mov              r10, 16;                             jmp   n367_lit_string_α
n366_statement_begin_β: mov              r11, 253;                            jmp   main_γ
                        .size            n366_statement_begin_bx, .-n366_statement_begin_bx
                        .type            n367_lit_string_bx, @function
n367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n368_var_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "matched bytes="
                        .size            n367_lit_string_bx, .-n367_lit_string_bx
                        .type            n368_var_bx, @function
n368_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 160]            # src
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n369_call_α
n368_var_β:             mov              r11, 255
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n366_statement_begin_β
                        .size            n368_var_bx, .-n368_var_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            sub              rsp, 16
                        mov              r11, 256
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd638:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd638]
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
                        cmp              al, 104;                             jne   .Lcall_α_637_240
                        add              rsp, 16;                             jmp   n368_var_β
.Lcall_α_637_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n370_binop_α
n369_call_β:            mov              r11, 256
                        add              rsp, 16;                             jmp   n368_var_β
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_binop_bx, @function
n370_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_binop_α:           sub              rsp, 16
                        mov              r11, 257
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n371_assign_α
                        .size            n370_binop_bx, .-n370_binop_bx
                        .type            n371_assign_bx, @function
n371_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              r11, 258
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
                        mov              rdi, qword ptr [rip + .Lassign_α_640_0]
                        .section         .rodata
.Lassign_α_640_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_640_1_s]
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
                        mov              rdi, qword ptr [rip + .Lassign_α_640_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_statement_end_α
.Lassign_α_640_0:       .quad            .Lassign_α_640_0_s
.Lassign_α_640_0_s:     .string          "OUTPUT"
                        .size            n371_assign_bx, .-n371_assign_bx
                        .type            n372_statement_end_bx, @function
n372_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_statement_end_α:   mov              r11, 259
                        mov              r10, 16
                        add              rsp, 64;                             jmp   main_γ
                        .size            n372_statement_end_bx, .-n372_statement_end_bx
                        .type            n373_statement_begin_bx, @function
n373_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_statement_begin_α: mov              r11, 260
                        mov              r10, 17;                             jmp   n374_lit_string_α
n373_statement_begin_β: mov              r11, 260;                            jmp   main_γ
                        .size            n373_statement_begin_bx, .-n373_statement_begin_bx
                        .type            n374_lit_string_bx, @function
n374_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      sub              rsp, 16
                        mov              r11, 261
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_645_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n375_assign_α
.Llit_string_α_645_0:   .quad            .Llit_string_α_645_0_s
.Llit_string_α_645_0_s: .string          "Pattern match failed"
                        .size            n374_lit_string_bx, .-n374_lit_string_bx
                        .type            n375_assign_bx, @function
n375_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_assign_α:          mov              r11, 262
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
                        mov              rdi, qword ptr [rip + .Lassign_α_646_0]
                        .section         .rodata
.Lassign_α_646_1_s:     .string          "snobol4/json/json-match-fence.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_646_1_s]
                        mov              r8, 40
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
                        mov              rdi, qword ptr [rip + .Lassign_α_646_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n376_statement_end_α
.Lassign_α_646_0:       .quad            .Lassign_α_646_0_s
.Lassign_α_646_0_s:     .string          "OUTPUT"
                        .size            n375_assign_bx, .-n375_assign_bx
                        .type            n376_statement_end_bx, @function
n376_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_statement_end_α:   mov              r11, 263
                        mov              r10, 17
                        add              rsp, 16;                             jmp   main_γ
                        .size            n376_statement_end_bx, .-n376_statement_end_bx
                        .type            n377_goto_bx, @function
n377_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_goto_α:            mov              r11, 264;                            jmp   n356_stmt_mark_α
n377_goto_β:            mov              r11, 264;                            jmp   main_ω
                        .size            n377_goto_bx, .-n377_goto_bx
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
