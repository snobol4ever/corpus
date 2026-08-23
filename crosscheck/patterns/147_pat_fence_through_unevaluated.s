                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
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
n0_match_len_α:         mov              r11, 1
                        mov              eax, r14d
                        add              eax, 0
                        cmp              eax, r15d;                           jg    PAT$0_ω
                        add              r14d, 0;                             jmp   PAT$0_γ
n0_match_len_β:         mov              r11, 1
                        sub              r14d, 0;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n0_match_len_β
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
n2_match_alternate_α:   mov              r11, 2
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx6_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n4_match_lit_α
.Lx6_21:                lea              rax, [rip + .Lx6_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n3_match_lit_α
n2_match_alternate_s0:  mov              r11, 2
                        lea              rax, [rip + .Lx6_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n2_match_alternate_as
n2_match_alternate_s1:  mov              r11, 2
                        lea              rax, [rip + .Lx6_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n2_match_alternate_as
.Lx6_40:                                                                      jmp   n4_match_lit_β
.Lx6_41:                                                                      jmp   n3_match_lit_β
n2_match_alternate_as:  mov              r11, 2;                              jmp   PAT$1_γ
n2_match_alternate_β:   mov              r11, 2
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n2_match_alternate_af:  mov              r11, 2
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx6_19:                                                                      jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n2_match_alternate_af
                        add              r14d, 1;                             jmp   n2_match_alternate_s1
n3_match_lit_β:         mov              r11, 3
                        sub              r14d, 1;                             jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n2_match_alternate_af
                        add              r14d, 1;                             jmp   n2_match_alternate_s0
n4_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   n2_match_alternate_β
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
                        sub              rsp, 40
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n11_match_defer_α:      sub              rsp, 16
                        mov              r11, 5
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx14_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx14_11
.Lx14_13:               mov              rax, qword ptr [r9 + 16]             # inner
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx14_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx14_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx14_10
.Lx14_9:                cmp              al, 88;                              jne   .Lx14_21
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
                        test             rax, rax;                            je    .Lx14_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx14_10
.Lx14_21:               xor              eax, eax
.Lx14_10:               test             rax, rax;                            je    .Lx14_15
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rdx
.Lx14_15:
.Lx14_11:               test             rax, rax;                            jz    .Lx14_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx14_5]
                        push             rcx
                        lea              rcx, [rip + .Lx14_4]
                        push             rcx;                                 jmp   rax
.Lx14_4:                                                                      jmp   n12_match_lit_α
.Lx14_5:                add              rsp, 16;                             jmp   PAT$2_ω
.Lx14_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx14_240
                        add              rsp, 16;                             jmp   PAT$2_ω
.Lx14_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx14_6]
                        push             rcx
                        push             rax;                                 jmp   n12_match_lit_α
.Lx14_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   PAT$2_ω
n11_match_defer_β:      mov              r11, 5
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx14_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx14_12
                                                                              jmp   rax
.Lx14_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:        mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n11_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 32;                             jne   n11_match_defer_β
                        add              r14d, 1;                             jmp   n13_match_defer_α
n12_match_lit_β:        mov              r11, 6
                        sub              r14d, 1;                             jmp   n11_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_defer_α:      sub              rsp, 16
                        mov              r11, 7
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rdx, qword ptr [rsi + 0]
                        test             rdx, rdx;                            je    .Lx17_13
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx17_11
.Lx17_13:               mov              rax, qword ptr [r9 + 16]             # inner
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx17_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx17_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx17_10
.Lx17_9:                cmp              al, 88;                              jne   .Lx17_21
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
                        test             rax, rax;                            je    .Lx17_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx17_10
.Lx17_21:               xor              eax, eax
.Lx17_10:               test             rax, rax;                            je    .Lx17_15
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rdx
.Lx17_15:
.Lx17_11:               test             rax, rax;                            jz    .Lx17_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx17_5]
                        push             rcx
                        lea              rcx, [rip + .Lx17_4]
                        push             rcx;                                 jmp   rax
.Lx17_4:                                                                      jmp   PAT$2_γ
.Lx17_5:                add              rsp, 16;                             jmp   n12_match_lit_β
.Lx17_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx17_240
                        add              rsp, 16;                             jmp   n12_match_lit_β
.Lx17_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx17_6]
                        push             rcx
                        push             rax;                                 jmp   PAT$2_γ
.Lx17_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n12_match_lit_β
n13_match_defer_β:      mov              r11, 7
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx17_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx17_12
                                                                              jmp   rax
.Lx17_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$2_β:
                                                                              jmp   n13_match_defer_β
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
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "eps"
.Lgvan1:                .string          "inner"
.Lgvan2:                .string          "outer"
.Lgvan3:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         eps   = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 8
                        mov              r10, 1;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 8;                              jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_call_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        mov              r11, 10
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd61:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd61]
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
                        cmp              al, 104;                             jne   .Lx60_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx60_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_call_β:             mov              r11, 10
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # eps
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 12
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         inner = (FENCE('a') | 'b')
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 13
                        mov              r10, 2;                              jmp   n24_lit_string_α
n23_statement_begin_β:  mov              r11, 13;                             jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             sub              rsp, 16
                        mov              r11, 15
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd69:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd69]
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
                        cmp              al, 104;                             jne   .Lx68_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Lx68_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_assign_α
n25_call_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # inner
                        mov              qword ptr [r9 + 24], rdx;            jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 17
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         outer = (*inner ' ' *inner)
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 18
                        mov              r10, 3;                              jmp   n29_lit_string_α
n28_statement_begin_β:  mov              r11, 18;                             jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_call_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:             sub              rsp, 16
                        mov              r11, 20
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd77:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd77]
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
                        cmp              al, 104;                             jne   .Lx76_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
.Lx76_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_assign_α
n30_call_β:             mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # outer
                        mov              qword ptr [r9 + 40], rdx;            jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 22
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n33_statement_begin_α
#=======================================================================================================================
#         s     = 'a b'
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 23
                        mov              r10, 4;                              jmp   n34_lit_string_α
n33_statement_begin_β:  mov              r11, 23;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_assign_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "a b"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # s
                        mov              qword ptr [r9 + 56], rdx;            jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 26
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         s POS(0) outer RPOS(0)                                :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 27
                        mov              r10, 5;                              jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 27;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 48]             # s
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 32]             # outer
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_assign_α
n39_var_β:              mov              r11, 29
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 30
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_match_begin_α
n40_assign_β:           mov              r11, 30;                             jmp   n39_var_β
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n41_match_begin_α:      mov              r11, 31
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
.Lx93_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx93_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n42_match_pos_α
n41_match_begin_β:      mov              r11, 31
.Lx93_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx93_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx93_1
                                                                              jmp   .Lx93_0
.Lx93_1:
n41_match_begin_af:     mov              r11, 31
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
                        pop              rbp;                                 jmp   n40_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n42_match_pos_α:        mov              r11, 32
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n41_match_begin_β
                                                                              jmp   n43_match_defer_α
n42_match_pos_β:        mov              r11, 32;                             jmp   n41_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_defer_α:      mov              r11, 33
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx95_14
                        mov              rax, qword ptr [rdx + 0]
.Lx95_14:               test             rax, rax;                            jz    .Lx95_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx95_5]
                        push             rcx
                        lea              rcx, [rip + .Lx95_4]
                        push             rcx;                                 jmp   rax
.Lx95_4:                                                                      jmp   n44_match_rpos_α
.Lx95_5:                                                                      jmp   n41_match_begin_β
.Lx95_0:                push             r14
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
                        test             eax, eax;                            js    n41_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx95_6]
                        push             rcx
                        push             rax;                                 jmp   n44_match_rpos_α
.Lx95_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n41_match_begin_β
n43_match_defer_β:      mov              r11, 33
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx95_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx95_12
                                                                              jmp   rax
.Lx95_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n44_match_rpos_α:       mov              r11, 34
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n43_match_defer_β
                                                                              jmp   n45_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n45_match_end_α:        mov              r11, 35
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
                        test             rax, rax;                            je    .Lx98_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n41_match_begin_af
.Lx98_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 36
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n47_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'matched ' s                                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 37
                        mov              r10, 6;                              jmp   n48_lit_string_α
n47_statement_begin_β:  mov              r11, 37;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_var_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "matched "
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 48]             # s
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_binop_α
n49_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 40
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 41
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_statement_end_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 42
                        mov              r10, 6
                        add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 43
                        mov              r10, 7;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 43;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 45
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_statement_end_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 46
                        mov              r10, 7
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
                        .long            80
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
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "inner"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
