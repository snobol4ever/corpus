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
.Lx3_0:                 cmp              ecx, r15d;                           jge   .Lx3_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97;                             je    .Lx3_10
                        cmp              esi, 98;                             je    .Lx3_10
                                                                              jmp   .Lx3_1
.Lx3_10:                add              ecx, 1;                              jmp   .Lx3_0
.Lx3_1:                 cmp              ecx, r14d;                           jg    .Lx3_240
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx3_240:               mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n1_match_lit_α
n0_match_span_β:        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              r11, 2
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_span_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   n0_match_span_β
                        add              r14d, 1;                             jmp   PAT$0_γ
n1_match_lit_β:         mov              r11, 2
                        sub              r14d, 1;                             jmp   n0_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n1_match_lit_β
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
n6_match_alternate_α:   mov              r11, 3
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx10_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n8_match_span_α
.Lx10_21:               lea              rax, [rip + .Lx10_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n7_match_lit_α
n6_match_alternate_s0:  mov              r11, 3
                        lea              rax, [rip + .Lx10_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_alternate_as
n6_match_alternate_s1:  mov              r11, 3
                        lea              rax, [rip + .Lx10_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n6_match_alternate_as
.Lx10_40:                                                                     jmp   n8_match_span_β
.Lx10_41:                                                                     jmp   n7_match_lit_β
n6_match_alternate_as:  mov              r11, 3;                              jmp   PAT$1_γ
n6_match_alternate_β:   mov              r11, 3
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n6_match_alternate_af:  mov              r11, 3
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx10_19:                                                                     jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 4;                              jmp   n6_match_alternate_s1
n7_match_lit_β:         mov              r11, 4;                              jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_span_α:        mov              r11, 5
                        movsxd           rcx, r14d
.Lx14_0:                cmp              ecx, r15d;                           jge   .Lx14_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97;                             je    .Lx14_10
                        cmp              esi, 98;                             je    .Lx14_10
                                                                              jmp   .Lx14_1
.Lx14_10:               add              ecx, 1;                              jmp   .Lx14_0
.Lx14_1:                cmp              ecx, r14d;                           jle   n6_match_alternate_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n6_match_alternate_s0
n8_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -60];         jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n6_match_alternate_β
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
n15_match_alternate_α:  mov              r11, 6
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lx20_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n18_match_lit_α
.Lx20_21:               lea              rax, [rip + .Lx20_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n17_match_span_α
n15_match_alternate_s0: mov              r11, 6
                        lea              rax, [rip + .Lx20_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n15_match_alternate_as
n15_match_alternate_s1: mov              r11, 6
                        lea              rax, [rip + .Lx20_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n15_match_alternate_as
.Lx20_40:                                                                     jmp   n18_match_lit_β
.Lx20_41:                                                                     jmp   n17_match_span_β
n15_match_alternate_as: mov              r11, 6;                              jmp   n16_match_lit_α
n15_match_alternate_β:  mov              r11, 6
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n15_match_alternate_af: mov              r11, 6
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx20_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n15_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 121;                            jne   n15_match_alternate_β
                        add              r14d, 1;                             jmp   PAT$2_γ
n16_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n15_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_span_α:       mov              r11, 8
                        movsxd           rcx, r14d
.Lx24_0:                cmp              ecx, r15d;                           jge   .Lx24_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97;                             je    .Lx24_10
                        cmp              esi, 98;                             je    .Lx24_10
                                                                              jmp   .Lx24_1
.Lx24_10:               add              ecx, 1;                              jmp   .Lx24_0
.Lx24_1:                cmp              ecx, r14d;                           jle   n15_match_alternate_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n15_match_alternate_s1
n17_match_span_β:       mov              r11, 8
                        mov              r14d, dword ptr [rbp + -60];         jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:        mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120;                            jne   n15_match_alternate_af
                        add              r14d, 1;                             jmp   n15_match_alternate_s0
n18_match_lit_β:        mov              r11, 9
                        sub              r14d, 1;                             jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n16_match_lit_β
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n27_match_len_α:        mov              r11, 10
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    PAT$3_ω
                        add              r14d, 3;                             jmp   PAT$3_γ
n27_match_len_β:        mov              r11, 10
                        sub              r14d, 3;                             jmp   PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$3_β:
                                                                              jmp   n27_match_len_β
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
.Lgvan0:                .string          "P"
.Lgvan1:                .string          "Q"
.Lgvan2:                .string          "R"
.Lgvan3:                .string          "W"
.Lgvan4:                .string          "S1"
.Lgvan5:                .string          "S2"
.Lgvan6:                .string          "S3"
.Lgvan7:                .string          "S4"
.Lgvan8:                .string          "S5"
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
#         P = SPAN("ab") "c"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 11
                        mov              r10, 1;                              jmp   n30_lit_string_α
n29_statement_begin_β:  mov              r11, 11;                             jmp   n34_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_call_α
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        mov              r11, 13
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd184:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd184]
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
                        cmp              al, 104;                             jne   .Lx183_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lx183_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_assign_α
n31_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # P
                        mov              qword ptr [r9 + 8], rdx;             jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 15
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         Q = SPAN("ab") | ""
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 16;                             jmp   n39_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 18
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd192:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd192]
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
                        cmp              al, 104;                             jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lx191_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
n36_call_β:             mov              r11, 18
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # Q
                        mov              qword ptr [r9 + 24], rdx;            jmp   n38_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 20
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n39_statement_begin_α
#=======================================================================================================================
#         R = ("x" | SPAN("ab")) "y"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 21
                        mov              r10, 3;                              jmp   n40_lit_string_α
n39_statement_begin_β:  mov              r11, 21;                             jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        mov              r11, 23
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd200:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd200]
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
                        cmp              al, 104;                             jne   .Lx199_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Lx199_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_assign_α
n41_call_β:             mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # R
                        mov              qword ptr [r9 + 40], rdx;            jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 25
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#         W = LEN(3)
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 26
                        mov              r10, 4;                              jmp   n45_lit_string_α
n44_statement_begin_β:  mov              r11, 26;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_α
.Lx206_0:               .quad            .Lx206_0_s
.Lx206_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             sub              rsp, 16
                        mov              r11, 28
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd208:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd208]
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
                        cmp              al, 104;                             jne   .Lx207_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx207_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_call_β:             mov              r11, 28
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # W
                        mov              qword ptr [r9 + 56], rdx;            jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 30
                        mov              r10, 4
                        add              rsp, 32;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         S1 = "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 31
                        mov              r10, 5;                              jmp   n50_lit_string_α
n49_statement_begin_β:  mov              r11, 31;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "abcabc"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # S1
                        mov              qword ptr [r9 + 72], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 34
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         S2 = "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 35
                        mov              r10, 6;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 35;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "abcab"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # S2
                        mov              qword ptr [r9 + 88], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 38
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         S3 = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 39
                        mov              r10, 7;                              jmp   n58_lit_string_α
n57_statement_begin_β:  mov              r11, 39;                             jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # S3
                        mov              qword ptr [r9 + 104], rdx;           jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 42
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         S4 = "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 43
                        mov              r10, 8;                              jmp   n62_lit_string_α
n61_statement_begin_β:  mov              r11, 43;                             jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "abyxy"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # S4
                        mov              qword ptr [r9 + 120], rdx;           jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 46
                        mov              r10, 8
                        add              rsp, 16;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         S5 = "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 47
                        mov              r10, 9;                              jmp   n66_lit_string_α
n65_statement_begin_β:  mov              r11, 47;                             jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 48
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 49
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # S5
                        mov              qword ptr [r9 + 136], rdx;           jmp   n68_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 50
                        mov              r10, 9
                        add              rsp, 16;                             jmp   n69_statement_begin_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*P) RPOS(0)     :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 51
                        mov              r10, 10;                             jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 51;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 64]             # S1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_match_begin_α:      mov              r11, 53
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
.Lx246_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx246_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n72_match_pos_α
n71_match_begin_β:      mov              r11, 53
.Lx246_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx246_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx246_1
                                                                              jmp   .Lx246_0
.Lx246_1:
n71_match_begin_af:     mov              r11, 53
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
                        add              rsp, 16;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_match_pos_α:        mov              r11, 54
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n71_match_begin_β
                                                                              jmp   n73_match_arbno_α
n72_match_pos_β:        mov              r11, 54;                             jmp   n71_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_arbno_α:      mov              r11, 55
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n74_match_rpos_α
n73_match_arbno_β:      mov              r11, 55;                             jmp   n78_match_defer_α
n73_match_arbno_as:     mov              r11, 55
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n78_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n74_match_rpos_α
n73_match_arbno_af:     mov              r11, 55
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n72_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n74_match_rpos_α:       mov              r11, 56
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n73_match_arbno_β
                                                                              jmp   n75_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n75_match_end_α:        mov              r11, 57
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
                        test             rax, rax;                            je    .Lx252_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n71_match_begin_af
.Lx252_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n76_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 58
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 5
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   main_γ
n77_lit_string_β:       mov              r11, 59;                             jmp   main_ω
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n78_match_defer_α:      mov              r11, 60
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx256_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx256_11
.Lx256_13:              mov              rax, qword ptr [r9 + 0]              # P
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx256_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx256_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx256_10
.Lx256_9:               cmp              al, 88;                              jne   .Lx256_21
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
                        test             rax, rax;                            je    .Lx256_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx256_10
.Lx256_21:              xor              eax, eax
.Lx256_10:              test             rax, rax;                            je    .Lx256_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx256_15:
.Lx256_11:              test             rax, rax;                            jz    .Lx256_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx256_5]
                        push             rcx
                        lea              rcx, [rip + .Lx256_4]
                        push             rcx;                                 jmp   rax
.Lx256_4:                                                                     jmp   n73_match_arbno_as
.Lx256_5:                                                                     jmp   n73_match_arbno_af
.Lx256_0:               push             r14
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
                        test             eax, eax;                            js    n73_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx256_6]
                        push             rcx
                        push             rax;                                 jmp   n73_match_arbno_as
.Lx256_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n73_match_arbno_af
n78_match_defer_β:      mov              r11, 60
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx256_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx256_12
                                                                              jmp   rax
.Lx256_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"             :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 61
                        mov              r10, 11;                             jmp   n80_lit_string_α
n79_statement_begin_β:  mov              r11, 61;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_assign_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 63
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_statement_end_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 64
                        mov              r10, 11
                        add              rsp, 16;                             jmp   n87_statement_begin_α
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 65
                        mov              r10, 12;                             jmp   n84_lit_string_α
n83_statement_begin_β:  mov              r11, 65;                             jmp   n87_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_assign_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 67
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_statement_end_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 68
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n87_statement_begin_α
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*P) RPOS(0)    :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 69
                        mov              r10, 13;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 69;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 80]             # S2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n89_match_begin_α:      mov              r11, 71
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
.Lx273_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx273_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n90_match_pos_α
n89_match_begin_β:      mov              r11, 71
.Lx273_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx273_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx273_1
                                                                              jmp   .Lx273_0
.Lx273_1:
n89_match_begin_af:     mov              r11, 71
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
                        add              rsp, 16;                             jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_match_pos_α:        mov              r11, 72
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n89_match_begin_β
                                                                              jmp   n91_match_arbno_α
n90_match_pos_β:        mov              r11, 72;                             jmp   n89_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n91_match_arbno_α:      mov              r11, 73
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n92_match_rpos_α
n91_match_arbno_β:      mov              r11, 73;                             jmp   n96_match_defer_α
n91_match_arbno_as:     mov              r11, 73
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n96_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n92_match_rpos_α
n91_match_arbno_af:     mov              r11, 73
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n90_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n92_match_rpos_α:       mov              r11, 74
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n91_match_arbno_β
                                                                              jmp   n93_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_end_α:        mov              r11, 75
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
                        test             rax, rax;                            je    .Lx279_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n89_match_begin_af
.Lx279_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n94_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 76
                        mov              r10, 13
                        add              rsp, 16;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 5
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   main_γ
n95_lit_string_β:       mov              r11, 77;                             jmp   main_ω
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n96_match_defer_α:      mov              r11, 78
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx283_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx283_11
.Lx283_13:              mov              rax, qword ptr [r9 + 0]              # P
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx283_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx283_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx283_10
.Lx283_9:               cmp              al, 88;                              jne   .Lx283_21
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
                        test             rax, rax;                            je    .Lx283_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx283_10
.Lx283_21:              xor              eax, eax
.Lx283_10:              test             rax, rax;                            je    .Lx283_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx283_15:
.Lx283_11:              test             rax, rax;                            jz    .Lx283_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx283_5]
                        push             rcx
                        lea              rcx, [rip + .Lx283_4]
                        push             rcx;                                 jmp   rax
.Lx283_4:                                                                     jmp   n91_match_arbno_as
.Lx283_5:                                                                     jmp   n91_match_arbno_af
.Lx283_0:               push             r14
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
                        test             eax, eax;                            js    n91_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx283_6]
                        push             rcx
                        push             rax;                                 jmp   n91_match_arbno_as
.Lx283_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n91_match_arbno_af
n96_match_defer_β:      mov              r11, 78
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx283_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx283_12
                                                                              jmp   rax
.Lx283_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"             :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 79
                        mov              r10, 14;                             jmp   n98_lit_string_α
n97_statement_begin_β:  mov              r11, 79;                             jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_assign_α
.Lx286_0:               .quad            .Lx286_0_s
.Lx286_0_s:             .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 81
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_statement_end_α
.Lx287_0:               .quad            .Lx287_0_s
.Lx287_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 82
                        mov              r10, 14
                        add              rsp, 16;                             jmp   n105_statement_begin_α
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 83
                        mov              r10, 15;                             jmp   n102_lit_string_α
n101_statement_begin_β: mov              r11, 83;                             jmp   n105_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_assign_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 85
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_statement_end_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_end_α:   mov              r11, 86
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n105_statement_begin_α
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*Q) RPOS(0)    :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 87
                        mov              r10, 16;                             jmp   n106_var_α
n105_statement_begin_β: mov              r11, 87;                             jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 88
                        mov              rax, qword ptr [r9 + 96]             # S3
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_match_begin_α:     mov              r11, 89
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
.Lx300_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx300_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n108_match_pos_α
n107_match_begin_β:     mov              r11, 89
.Lx300_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx300_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx300_1
                                                                              jmp   .Lx300_0
.Lx300_1:
n107_match_begin_af:    mov              r11, 89
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
                        add              rsp, 16;                             jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_match_pos_α:       mov              r11, 90
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n107_match_begin_β
                                                                              jmp   n109_match_arbno_α
n108_match_pos_β:       mov              r11, 90;                             jmp   n107_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n109_match_arbno_α:     mov              r11, 91
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n110_match_rpos_α
n109_match_arbno_β:     mov              r11, 91;                             jmp   n114_match_defer_α
n109_match_arbno_as:    mov              r11, 91
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n114_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n110_match_rpos_α
n109_match_arbno_af:    mov              r11, 91
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n108_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n110_match_rpos_α:      mov              r11, 92
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n109_match_arbno_β
                                                                              jmp   n111_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n111_match_end_α:       mov              r11, 93
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
                        test             rax, rax;                            je    .Lx306_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n107_match_begin_af
.Lx306_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 94
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 5
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   main_γ
n113_lit_string_β:      mov              r11, 95;                             jmp   main_ω
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n114_match_defer_α:     mov              r11, 96
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx310_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx310_11
.Lx310_13:              mov              rax, qword ptr [r9 + 16]             # Q
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx310_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx310_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx310_10
.Lx310_9:               cmp              al, 88;                              jne   .Lx310_21
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
                        test             rax, rax;                            je    .Lx310_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx310_10
.Lx310_21:              xor              eax, eax
.Lx310_10:              test             rax, rax;                            je    .Lx310_15
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rdx
.Lx310_15:
.Lx310_11:              test             rax, rax;                            jz    .Lx310_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx310_5]
                        push             rcx
                        lea              rcx, [rip + .Lx310_4]
                        push             rcx;                                 jmp   rax
.Lx310_4:                                                                     jmp   n109_match_arbno_as
.Lx310_5:                                                                     jmp   n109_match_arbno_af
.Lx310_0:               push             r14
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
                        test             eax, eax;                            js    n109_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx310_6]
                        push             rcx
                        push             rax;                                 jmp   n109_match_arbno_as
.Lx310_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n109_match_arbno_af
n114_match_defer_β:     mov              r11, 96
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx310_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx310_12
                                                                              jmp   rax
.Lx310_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"             :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 97
                        mov              r10, 17;                             jmp   n116_lit_string_α
n115_statement_begin_β: mov              r11, 97;                             jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_assign_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:          mov              r11, 99
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_statement_end_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   mov              r11, 100
                        mov              r10, 17
                        add              rsp, 16;                             jmp   n123_statement_begin_α
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α: mov              r11, 101
                        mov              r10, 18;                             jmp   n120_lit_string_α
n119_statement_begin_β: mov              r11, 101;                            jmp   n123_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              r11, 102
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_assign_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 103
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_statement_end_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 104
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n123_statement_begin_α
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*R) RPOS(0)    :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α: mov              r11, 105
                        mov              r10, 19;                             jmp   n124_var_α
n123_statement_begin_β: mov              r11, 105;                            jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 112]            # S4
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_match_begin_α:     mov              r11, 107
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
.Lx327_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx327_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n126_match_pos_α
n125_match_begin_β:     mov              r11, 107
.Lx327_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx327_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx327_1
                                                                              jmp   .Lx327_0
.Lx327_1:
n125_match_begin_af:    mov              r11, 107
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
                        add              rsp, 16;                             jmp   n137_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n126_match_pos_α:       mov              r11, 108
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n125_match_begin_β
                                                                              jmp   n127_match_arbno_α
n126_match_pos_β:       mov              r11, 108;                            jmp   n125_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_arbno_α:     mov              r11, 109
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n128_match_rpos_α
n127_match_arbno_β:     mov              r11, 109;                            jmp   n132_match_defer_α
n127_match_arbno_as:    mov              r11, 109
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n132_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n128_match_rpos_α
n127_match_arbno_af:    mov              r11, 109
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n126_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n128_match_rpos_α:      mov              r11, 110
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n127_match_arbno_β
                                                                              jmp   n129_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n129_match_end_α:       mov              r11, 111
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
                        test             rax, rax;                            je    .Lx333_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n125_match_begin_af
.Lx333_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 112
                        mov              r10, 19
                        add              rsp, 16;                             jmp   n133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   main_γ
n131_lit_string_β:      mov              r11, 113;                            jmp   main_ω
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n132_match_defer_α:     mov              r11, 114
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx337_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx337_11
.Lx337_13:              mov              rax, qword ptr [r9 + 32]             # R
                        mov              rdx, qword ptr [r9 + 40]
                        cmp              al, 8;                               jne   .Lx337_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx337_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 40];            jmp   .Lx337_10
.Lx337_9:               cmp              al, 88;                              jne   .Lx337_21
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
                        test             rax, rax;                            je    .Lx337_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx337_10
.Lx337_21:              xor              eax, eax
.Lx337_10:              test             rax, rax;                            je    .Lx337_15
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rdx
.Lx337_15:
.Lx337_11:              test             rax, rax;                            jz    .Lx337_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx337_5]
                        push             rcx
                        lea              rcx, [rip + .Lx337_4]
                        push             rcx;                                 jmp   rax
.Lx337_4:                                                                     jmp   n127_match_arbno_as
.Lx337_5:                                                                     jmp   n127_match_arbno_af
.Lx337_0:               push             r14
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
                        test             eax, eax;                            js    n127_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx337_6]
                        push             rcx
                        push             rax;                                 jmp   n127_match_arbno_as
.Lx337_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n127_match_arbno_af
n132_match_defer_β:     mov              r11, 114
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx337_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx337_12
                                                                              jmp   rax
.Lx337_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"             :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 115
                        mov              r10, 20;                             jmp   n134_lit_string_α
n133_statement_begin_β: mov              r11, 115;                            jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      sub              rsp, 16
                        mov              r11, 116
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_assign_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:          mov              r11, 117
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_statement_end_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 118
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n141_statement_begin_α
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 119
                        mov              r10, 21;                             jmp   n138_lit_string_α
n137_statement_begin_β: mov              r11, 119;                            jmp   n141_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_assign_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              r11, 121
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_statement_end_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_end_α:   mov              r11, 122
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n141_statement_begin_α
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)    :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_begin_α: mov              r11, 123
                        mov              r10, 22;                             jmp   n142_var_α
n141_statement_begin_β: mov              r11, 123;                            jmp   n155_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 128]            # S5
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n143_match_begin_α:     mov              r11, 125
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
.Lx354_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx354_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n144_match_pos_α
n143_match_begin_β:     mov              r11, 125
.Lx354_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx354_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx354_1
                                                                              jmp   .Lx354_0
.Lx354_1:
n143_match_begin_af:    mov              r11, 125
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
                        add              rsp, 16;                             jmp   n155_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n144_match_pos_α:       mov              r11, 126
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n143_match_begin_β
                                                                              jmp   n145_match_arbno_α
n144_match_pos_β:       mov              r11, 126;                            jmp   n143_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n145_match_arbno_α:     mov              r11, 127
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n146_match_rpos_α
n145_match_arbno_β:     mov              r11, 127;                            jmp   n150_match_defer_α
n145_match_arbno_as:    mov              r11, 127
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n150_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n146_match_rpos_α
n145_match_arbno_af:    mov              r11, 127
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n144_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n146_match_rpos_α:      mov              r11, 128
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n145_match_arbno_β
                                                                              jmp   n147_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_match_end_α:       mov              r11, 129
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
                        test             rax, rax;                            je    .Lx360_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n143_match_begin_af
.Lx360_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 130
                        mov              r10, 22
                        add              rsp, 16;                             jmp   n151_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 5
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   main_γ
n149_lit_string_β:      mov              r11, 131;                            jmp   main_ω
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n150_match_defer_α:     mov              r11, 132
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx364_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx364_11
.Lx364_13:              mov              rax, qword ptr [r9 + 48]             # W
                        mov              rdx, qword ptr [r9 + 56]
                        cmp              al, 8;                               jne   .Lx364_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx364_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 56];            jmp   .Lx364_10
.Lx364_9:               cmp              al, 88;                              jne   .Lx364_21
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
                        test             rax, rax;                            je    .Lx364_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx364_10
.Lx364_21:              xor              eax, eax
.Lx364_10:              test             rax, rax;                            je    .Lx364_15
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rdx
.Lx364_15:
.Lx364_11:              test             rax, rax;                            jz    .Lx364_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx364_5]
                        push             rcx
                        lea              rcx, [rip + .Lx364_4]
                        push             rcx;                                 jmp   rax
.Lx364_4:                                                                     jmp   n145_match_arbno_as
.Lx364_5:                                                                     jmp   n145_match_arbno_af
.Lx364_0:               push             r14
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
                        test             eax, eax;                            js    n145_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx364_6]
                        push             rcx
                        push             rax;                                 jmp   n145_match_arbno_as
.Lx364_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n145_match_arbno_af
n150_match_defer_β:     mov              r11, 132
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx364_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx364_12
                                                                              jmp   rax
.Lx364_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"             :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 133
                        mov              r10, 23;                             jmp   n152_lit_string_α
n151_statement_begin_β: mov              r11, 133;                            jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_assign_α
.Lx367_0:               .quad            .Lx367_0_s
.Lx367_0_s:             .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              r11, 135
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n154_statement_end_α
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 136
                        mov              r10, 23
                        add              rsp, 16;                             jmp   n159_statement_begin_α
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_begin_α: mov              r11, 137
                        mov              r10, 24;                             jmp   n156_lit_string_α
n155_statement_begin_β: mov              r11, 137;                            jmp   n159_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      sub              rsp, 16
                        mov              r11, 138
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_assign_α
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              r11, 139
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_statement_end_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 140
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n159_statement_begin_α
#=======================================================================================================================
# N5      S1 "ab" ARBNO(*P) "bc" RPOS(0) :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 141
                        mov              r10, 25;                             jmp   n160_var_α
n159_statement_begin_β: mov              r11, 141;                            jmp   n174_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 64]             # S1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_match_begin_α:     mov              r11, 143
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
.Lx381_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx381_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n162_match_lit_α
n161_match_begin_β:     mov              r11, 143
.Lx381_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx381_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx381_1
                                                                              jmp   .Lx381_0
.Lx381_1:
n161_match_begin_af:    mov              r11, 143
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
                        add              rsp, 16;                             jmp   n174_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n162_match_lit_α:       mov              r11, 144
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n161_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n161_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   n161_match_begin_β
                        add              r14d, 2;                             jmp   n163_match_arbno_α
n162_match_lit_β:       mov              r11, 144
                        sub              r14d, 2;                             jmp   n161_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_match_arbno_α:     mov              r11, 145
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n164_match_lit_α
n163_match_arbno_β:     mov              r11, 145;                            jmp   n169_match_defer_α
n163_match_arbno_as:    mov              r11, 145
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n169_match_defer_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n164_match_lit_α
n163_match_arbno_af:    mov              r11, 145
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n162_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n164_match_lit_α:       mov              r11, 146
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n163_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n163_match_arbno_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   n163_match_arbno_β
                        add              r14d, 2;                             jmp   n165_match_rpos_α
n164_match_lit_β:       mov              r11, 146
                        sub              r14d, 2;                             jmp   n163_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n165_match_rpos_α:      mov              r11, 147
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n164_match_lit_β
                                                                              jmp   n166_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n166_match_end_α:       mov              r11, 148
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
                        test             rax, rax;                            je    .Lx390_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n161_match_begin_af
.Lx390_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n167_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 149
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 5
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   main_γ
n168_lit_string_β:      mov              r11, 150;                            jmp   main_ω
.Lx393_0:               .quad            .Lx393_0_s
.Lx393_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n169_match_defer_α:     mov              r11, 151
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx394_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx394_11
.Lx394_13:              mov              rax, qword ptr [r9 + 0]              # P
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx394_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx394_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx394_10
.Lx394_9:               cmp              al, 88;                              jne   .Lx394_21
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
                        test             rax, rax;                            je    .Lx394_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx394_10
.Lx394_21:              xor              eax, eax
.Lx394_10:              test             rax, rax;                            je    .Lx394_15
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rdx
.Lx394_15:
.Lx394_11:              test             rax, rax;                            jz    .Lx394_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx394_5]
                        push             rcx
                        lea              rcx, [rip + .Lx394_4]
                        push             rcx;                                 jmp   rax
.Lx394_4:                                                                     jmp   n163_match_arbno_as
.Lx394_5:                                                                     jmp   n163_match_arbno_af
.Lx394_0:               push             r14
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
                        test             eax, eax;                            js    n163_match_arbno_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx394_6]
                        push             rcx
                        push             rax;                                 jmp   n163_match_arbno_as
.Lx394_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n163_match_arbno_af
n169_match_defer_β:     mov              r11, 151
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx394_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx394_12
                                                                              jmp   rax
.Lx394_12:                                                                    jmp   qword ptr [rsp]
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"             :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 152
                        mov              r10, 26;                             jmp   n171_lit_string_α
n170_statement_begin_β: mov              r11, 152;                            jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_assign_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              r11, 154
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_statement_end_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 155
                        mov              r10, 26
                        add              rsp, 16;                             jmp   n178_statement_begin_α
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 156
                        mov              r10, 27;                             jmp   n175_lit_string_α
n174_statement_begin_β: mov              r11, 156;                            jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_assign_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 158
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_statement_end_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 159
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n178_statement_begin_α
#=======================================================================================================================
# N6  <stmt 28, line 29: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 160
                        mov              r10, 28;                             jmp   n179_statement_end_α
n178_statement_begin_β: mov              r11, 160;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 161
                        mov              r10, 28;                             jmp   main_γ
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
                        .long            18
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
                        .long            48
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "P"
.S1:                    .string          "Q"
.S2:                    .string          "R"
.S3:                    .string          "W"
                        .text
                        .section         .note.GNU-stack,"",@progbits
