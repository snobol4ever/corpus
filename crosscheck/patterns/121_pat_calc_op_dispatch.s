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
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_len_α
n3_match_alternate_s0:  mov              r11, 2
                        lea              rax, [rip + .Lx7_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
n3_match_alternate_s1:  mov              r11, 2
                        lea              rax, [rip + .Lx7_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   n3_match_alternate_as
.Lx7_40:                                                                      jmp   n5_match_span_β
.Lx7_41:                                                                      jmp   n4_match_len_β
n3_match_alternate_as:  mov              r11, 2;                              jmp   PAT$1_γ
n3_match_alternate_β:   mov              r11, 2
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
n3_match_alternate_af:  mov              r11, 2
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lx7_19:                                                                      jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_match_len_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    n3_match_alternate_af
                        add              r14d, 0;                             jmp   n3_match_alternate_s1
n4_match_len_β:         mov              r11, 3
                        sub              r14d, 0;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:        mov              r11, 4
                        movsxd           rcx, r14d
.Lx10_0:                cmp              ecx, r15d;                           jge   .Lx10_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx10_10
                                                                              jmp   .Lx10_1
.Lx10_10:               add              ecx, 1;                              jmp   .Lx10_0
.Lx10_1:                cmp              ecx, r14d;                           jle   n3_match_alternate_af
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
                        sub              rsp, 72
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:  mov              r11, 5
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx17_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n15_match_lit_α
.Lx17_21:               lea              rax, [rip + .Lx17_22]
                        mov              qword ptr [rbp + -56], rax;          jmp   n14_match_lit_α
.Lx17_22:               lea              rax, [rip + .Lx17_23]
                        mov              qword ptr [rbp + -56], rax;          jmp   n13_match_lit_α
.Lx17_23:               lea              rax, [rip + .Lx17_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n12_match_lit_α
n11_match_alternate_s0: mov              r11, 5
                        lea              rax, [rip + .Lx17_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n11_match_alternate_as
n11_match_alternate_s1: mov              r11, 5
                        lea              rax, [rip + .Lx17_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n11_match_alternate_as
n11_match_alternate_s2: mov              r11, 5
                        lea              rax, [rip + .Lx17_42]
                        mov              qword ptr [rbp + -64], rax;          jmp   n11_match_alternate_as
n11_match_alternate_s3: mov              r11, 5
                        lea              rax, [rip + .Lx17_43]
                        mov              qword ptr [rbp + -64], rax;          jmp   n11_match_alternate_as
.Lx17_40:                                                                     jmp   n15_match_lit_β
.Lx17_41:                                                                     jmp   n14_match_lit_β
.Lx17_42:                                                                     jmp   n13_match_lit_β
.Lx17_43:                                                                     jmp   n12_match_lit_β
n11_match_alternate_as: mov              r11, 5;                              jmp   PAT$2_γ
n11_match_alternate_β:  mov              r11, 5
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n11_match_alternate_af: mov              r11, 5
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx17_19:                                                                     jmp   PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s3
n12_match_lit_β:        mov              r11, 6
                        sub              r14d, 1;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s2
n13_match_lit_β:        mov              r11, 7
                        sub              r14d, 1;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s1
n14_match_lit_β:        mov              r11, 8
                        sub              r14d, 1;                             jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              r11, 9
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43;                             jne   n11_match_alternate_af
                        add              r14d, 1;                             jmp   n11_match_alternate_s0
n15_match_lit_β:        mov              r11, 9
                        sub              r14d, 1;                             jmp   n11_match_alternate_af
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "num"
.Lgvan1:                .string          "ws"
.Lgvan2:                .string          "op"
.Lgvan3:                .string          "s"
.Lgvan4:                .string          "A"
.Lgvan5:                .string          "OP"
.Lgvan6:                .string          "B"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         num    = SPAN('0123456789')
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 10
                        mov              r10, 1;                              jmp   n27_lit_string_α
n26_statement_begin_β:  mov              r11, 10;                             jmp   n31_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_α
n27_lit_string_β:       mov              r11, 11
                        add              rsp, 16;                             jmp   n26_statement_begin_β
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             sub              rsp, 16
                        mov              r11, 12
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd89:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd89]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx88_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
.Lx88_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_assign_α
n28_call_β:             mov              r11, 12
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # num
                        mov              qword ptr [r9 + 8], rdx;             jmp   n30_statement_end_α
n29_assign_β:           mov              r11, 13;                             jmp   n26_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 14
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n31_statement_begin_α
n30_statement_end_β:    mov              r11, 14
                        add              rsp, 32;                             jmp   n31_statement_begin_α
#=======================================================================================================================
#         ws     = SPAN(' ') | LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 15
                        mov              r10, 2;                              jmp   n32_lit_string_α
n31_statement_begin_β:  mov              r11, 15;                             jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_call_α
n32_lit_string_β:       mov              r11, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        mov              r11, 17
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd97:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd97]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx96_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
.Lx96_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_assign_α
n33_call_β:             mov              r11, 17
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # ws
                        mov              qword ptr [r9 + 24], rdx;            jmp   n35_statement_end_α
n34_assign_β:           mov              r11, 18;                             jmp   n31_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 19
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n36_statement_begin_α
n35_statement_end_β:    mov              r11, 19
                        add              rsp, 32;                             jmp   n36_statement_begin_α
#=======================================================================================================================
#         op     = FENCE('+' | '-' | '*' | '/')
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 20
                        mov              r10, 3;                              jmp   n37_lit_string_α
n36_statement_begin_β:  mov              r11, 20;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
n37_lit_string_β:       mov              r11, 21
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 22
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd105:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx104_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Lx104_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_assign_α
n38_call_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # op
                        mov              qword ptr [r9 + 40], rdx;            jmp   n40_statement_end_α
n39_assign_β:           mov              r11, 23;                             jmp   n36_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 24
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n41_statement_begin_α
n40_statement_end_β:    mov              r11, 24
                        add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         s = '7 * 3'
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 25
                        mov              r10, 4;                              jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 25;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_assign_α
n42_lit_string_β:       mov              r11, 26
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "7 * 3"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # s
                        mov              qword ptr [r9 + 56], rdx;            jmp   n44_statement_end_α
n43_assign_β:           mov              r11, 27;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 28
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n45_statement_begin_α
n44_statement_end_β:    mov              r11, 28
                        add              rsp, 16;                             jmp   n45_statement_begin_α
#=======================================================================================================================
#         s POS(0) num . A ws op . OP ws num . B RPOS(0)        :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 29
                        mov              r10, 5;                              jmp   n46_var_α
n45_statement_begin_β:  mov              r11, 29;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 48]             # s
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_var_α
n46_var_β:              mov              r11, 30
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 32]             # op
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_assign_α
n47_var_β:              mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 32
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_match_begin_α
n48_assign_β:           mov              r11, 32;                             jmp   n47_var_β
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n49_match_begin_α:      mov              r11, 33
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 72
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx121_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx121_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n50_match_pos_α
n49_match_begin_β:      mov              r11, 33
.Lx121_13:              lea              rsp, [rbp + -104]                    # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx121_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx121_1
                                                                              jmp   .Lx121_0
.Lx121_1:
n49_match_begin_af:     mov              r11, 33
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
                        pop              rbp;                                 jmp   n48_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_pos_α:        mov              r11, 34
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n49_match_begin_β
                                                                              jmp   n51_match_assign_save_α
n50_match_pos_β:        mov              r11, 34;                             jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 35
                        mov              dword ptr [rsp + 0], r14d;           jmp   n52_match_span_α
n51_match_assign_save_β:
                        mov              r11, 35
                        add              rsp, 16;                             jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_span_α:       sub              rsp, 16
                        mov              r11, 36
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx126_0:               cmp              ecx, r15d;                           jge   .Lx126_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx126_1
                        add              ecx, 1;                              jmp   .Lx126_0
.Lx126_1:               cmp              ecx, r14d;                           jg    .Lx126_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_match_begin_β
.Lx126_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n53_match_assign_cond_α
n52_match_span_β:       mov              r11, 36
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_assign_cond_α:
                        mov              r11, 37
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n54_match_alternate_α
n53_match_assign_cond_β:
                        mov              r11, 37
                        sub              r12, 24;                             jmp   n52_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n54_match_alternate_α:  mov              r11, 38
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx130_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n68_match_span_α
.Lx130_21:              lea              rax, [rip + .Lx130_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n67_match_len_α
n54_match_alternate_s0: mov              r11, 38
                        lea              rax, [rip + .Lx130_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_match_alternate_as
n54_match_alternate_s1: mov              r11, 38
                        lea              rax, [rip + .Lx130_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_match_alternate_as
.Lx130_40:                                                                    jmp   n68_match_span_β
.Lx130_41:                                                                    jmp   n67_match_len_β
n54_match_alternate_as: mov              r11, 38;                             jmp   n55_match_assign_save_α
n54_match_alternate_β:  mov              r11, 38
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n54_match_alternate_af: mov              r11, 38
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx130_19:              add              rsp, 32;                             jmp   n53_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n55_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 39
                        mov              dword ptr [rbp + -96], r14d;         jmp   n56_match_defer_α
n55_match_assign_save_β:
                        mov              r11, 39
                        add              rsp, 16;                             jmp   n54_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n56_match_defer_α:      mov              r11, 40
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx133_14
                        mov              rax, qword ptr [rdx + 0]
.Lx133_14:              test             rax, rax;                            jz    .Lx133_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx133_5]
                        push             rcx
                        lea              rcx, [rip + .Lx133_4]
                        push             rcx;                                 jmp   rax
.Lx133_4:                                                                     jmp   n57_match_assign_cond_α
.Lx133_5:                                                                     jmp   n55_match_assign_save_β
.Lx133_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n55_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx133_6]
                        push             rcx
                        push             rax;                                 jmp   n57_match_assign_cond_α
.Lx133_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n55_match_assign_save_β
n56_match_defer_β:      mov              r11, 40
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx133_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx133_12
                                                                              jmp   rax
.Lx133_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n57_match_assign_cond_α:
                        mov              r11, 41
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n58_match_alternate_α
n57_match_assign_cond_β:
                        mov              r11, 41
                        sub              r12, 24;                             jmp   n56_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_alternate_α:  mov              r11, 42
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx137_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n66_match_span_α
.Lx137_21:              lea              rax, [rip + .Lx137_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n65_match_len_α
n58_match_alternate_s0: mov              r11, 42
                        lea              rax, [rip + .Lx137_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_match_alternate_as
n58_match_alternate_s1: mov              r11, 42
                        lea              rax, [rip + .Lx137_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_match_alternate_as
.Lx137_40:                                                                    jmp   n66_match_span_β
.Lx137_41:                                                                    jmp   n65_match_len_β
n58_match_alternate_as: mov              r11, 42;                             jmp   n59_match_assign_save_α
n58_match_alternate_β:  mov              r11, 42
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n58_match_alternate_af: mov              r11, 42
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx137_19:              add              rsp, 32;                             jmp   n57_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 43
                        mov              dword ptr [rsp + 0], r14d;           jmp   n60_match_span_α
n59_match_assign_save_β:
                        mov              r11, 43
                        add              rsp, 16;                             jmp   n58_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_span_α:       sub              rsp, 16
                        mov              r11, 44
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx141_0:               cmp              ecx, r15d;                           jge   .Lx141_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx141_1
                        add              ecx, 1;                              jmp   .Lx141_0
.Lx141_1:               cmp              ecx, r14d;                           jg    .Lx141_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n58_match_alternate_β
.Lx141_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n61_match_assign_cond_α
n60_match_span_β:       mov              r11, 44
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n58_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_assign_cond_α:
                        mov              r11, 45
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S3]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n62_match_rpos_α
n61_match_assign_cond_β:
                        mov              r11, 45
                        sub              r12, 24;                             jmp   n60_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_rpos_α:       mov              r11, 46
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n61_match_assign_cond_β
                                                                              jmp   n63_match_end_α
n62_match_rpos_β:       mov              r11, 46;                             jmp   n61_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_end_α:        mov              r11, 47
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
                        test             rax, rax;                            je    .Lx146_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n49_match_begin_af
.Lx146_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 48
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n69_statement_begin_α
n64_statement_end_β:    mov              r11, 48
                        add              rsp, 112;                            jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_match_len_α:        mov              r11, 49
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    n58_match_alternate_af
                        add              r14d, 0;                             jmp   n58_match_alternate_s1
n65_match_len_β:        mov              r11, 49
                        sub              r14d, 0;                             jmp   n58_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n66_match_span_α:       mov              r11, 50
                        movsxd           rcx, r14d
.Lx151_0:               cmp              ecx, r15d;                           jge   .Lx151_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx151_10
                                                                              jmp   .Lx151_1
.Lx151_10:              add              ecx, 1;                              jmp   .Lx151_0
.Lx151_1:               cmp              ecx, r14d;                           jle   n58_match_alternate_af
                        mov              dword ptr [rbp + -124], r14d
                        mov              r14d, ecx;                           jmp   n58_match_alternate_s0
n66_match_span_β:       mov              r11, 50
                        mov              r14d, dword ptr [rbp + -124];        jmp   n58_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n67_match_len_α:        mov              r11, 51
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    n54_match_alternate_af
                        add              r14d, 0;                             jmp   n54_match_alternate_s1
n67_match_len_β:        mov              r11, 51
                        sub              r14d, 0;                             jmp   n54_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_span_α:       mov              r11, 52
                        movsxd           rcx, r14d
.Lx154_0:               cmp              ecx, r15d;                           jge   .Lx154_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx154_10
                                                                              jmp   .Lx154_1
.Lx154_10:              add              ecx, 1;                              jmp   .Lx154_0
.Lx154_1:               cmp              ecx, r14d;                           jle   n54_match_alternate_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n54_match_alternate_s0
n68_match_span_β:       mov              r11, 52
                        mov              r14d, dword ptr [rbp + -76];         jmp   n54_match_alternate_af
#=======================================================================================================================
# YES     OUTPUT = A ' ' OP ' ' B                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 53
                        mov              r10, 6;                              jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 53;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 64]             # A
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_lit_string_α
n70_var_β:              mov              r11, 54
                        add              rsp, 16;                             jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_binop_α
n71_lit_string_β:       mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_var_α
n72_binop_β:            mov              r11, 56
                        add              rsp, 16;                             jmp   n71_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 80]             # OP
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_binop_α
n73_var_β:              mov              r11, 57
                        add              rsp, 16;                             jmp   n72_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 58
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_lit_string_α
n74_binop_β:            mov              r11, 58
                        add              rsp, 16;                             jmp   n73_var_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_binop_α
n75_lit_string_β:       mov              r11, 59
                        add              rsp, 16;                             jmp   n74_binop_β
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_α
n76_binop_β:            mov              r11, 60
                        add              rsp, 16;                             jmp   n75_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 96]             # B
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_binop_α
n77_var_β:              mov              r11, 61
                        add              rsp, 16;                             jmp   n76_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n79_assign_α
n78_binop_β:            mov              r11, 62
                        add              rsp, 16;                             jmp   n77_var_β
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 63
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_statement_end_α
n79_assign_β:           mov              r11, 63;                             jmp   n69_statement_begin_β
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 64
                        mov              r10, 6
                        add              rsp, 144;                            jmp   main_γ
n80_statement_end_β:    mov              r11, 64
                        add              rsp, 144;                            jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'parse fail'
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 65
                        mov              r10, 7;                              jmp   n82_lit_string_α
n81_statement_begin_β:  mov              r11, 65;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 66
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_assign_α
n82_lit_string_β:       mov              r11, 66
                        add              rsp, 16;                             jmp   n81_statement_begin_β
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "parse fail"
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 67
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_statement_end_α
n83_assign_β:           mov              r11, 67;                             jmp   n81_statement_begin_β
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 68
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
n84_statement_end_β:    mov              r11, 68
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
                        .long            80
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "A"
.S1:                    .string          "PATV$0"
.S2:                    .string          "OP"
.S3:                    .string          "B"
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
