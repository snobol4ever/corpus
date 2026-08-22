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
n0_match_alternate_α:   mov              r11, 1
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n2_match_lit_α
.Lx4_21:                lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n1_match_lit_α
n0_match_alternate_s0:  mov              r11, 1
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
n0_match_alternate_s1:  mov              r11, 1
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n0_match_alternate_as
.Lx4_40:                                                                      jmp   n2_match_lit_β
.Lx4_41:                                                                      jmp   n1_match_lit_β
n0_match_alternate_as:  mov              r11, 1;                              jmp   PAT$0_γ
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n0_match_alternate_af:  mov              r11, 1
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx4_19:                                                                      jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:         mov              r11, 2
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   n0_match_alternate_af
                        add              r14d, 2;                             jmp   n0_match_alternate_s1
n1_match_lit_β:         mov              r11, 2
                        sub              r14d, 2;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:         mov              r11, 3
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n0_match_alternate_af
                        add              r14d, 1;                             jmp   n0_match_alternate_s0
n2_match_lit_β:         mov              r11, 3
                        sub              r14d, 1;                             jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
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
n9_match_alternate_α:   mov              r11, 4
                        mov              dword ptr [rbp + -72], r14d
                        lea              rax, [rip + .Lx13_21]
                        mov              qword ptr [rbp + -56], rax;          jmp   n11_match_lit_α
.Lx13_21:               lea              rax, [rip + .Lx13_19]
                        mov              qword ptr [rbp + -56], rax;          jmp   n10_match_lit_α
n9_match_alternate_s0:  mov              r11, 4
                        lea              rax, [rip + .Lx13_40]
                        mov              qword ptr [rbp + -64], rax;          jmp   n9_match_alternate_as
n9_match_alternate_s1:  mov              r11, 4
                        lea              rax, [rip + .Lx13_41]
                        mov              qword ptr [rbp + -64], rax;          jmp   n9_match_alternate_as
.Lx13_40:                                                                     jmp   n11_match_lit_β
.Lx13_41:                                                                     jmp   n10_match_lit_β
n9_match_alternate_as:  mov              r11, 4;                              jmp   PAT$1_γ
n9_match_alternate_β:   mov              r11, 4
                        mov              rax, qword ptr [rbp + -64];          jmp   rax
n9_match_alternate_af:  mov              r11, 4
                        mov              r14d, dword ptr [rbp + -72]
                        mov              rax, qword ptr [rbp + -56];          jmp   rax
.Lx13_19:                                                                     jmp   PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:        mov              r11, 5
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n9_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   n9_match_alternate_af
                        add              r14d, 2;                             jmp   n9_match_alternate_s1
n10_match_lit_β:        mov              r11, 5
                        sub              r14d, 2;                             jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 6
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n9_match_alternate_af
                        add              r14d, 1;                             jmp   n9_match_alternate_s0
n11_match_lit_β:        mov              r11, 6
                        sub              r14d, 1;                             jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$1_β:
                                                                              jmp   PAT$1_ω
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "cmd1"
.Lgvan1:                .string          "cmd2"
.Lgvan2:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         cmd1 = FENCE('a' | 'ab')
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 7
                        mov              r10, 1;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 7;                              jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_call_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        mov              r11, 9
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd53:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd53]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx52_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lx52_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_call_β:             mov              r11, 9
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # cmd1
                        mov              qword ptr [r9 + 8], rdx;             jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 11
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n23_statement_begin_α
#=======================================================================================================================
#         cmd2 = FENCE('b' | 'bc')
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 12
                        mov              r10, 2;                              jmp   n24_lit_string_α
n23_statement_begin_β:  mov              r11, 12;                             jmp   n28_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_call_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             sub              rsp, 16
                        mov              r11, 14
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
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx60_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Lx60_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_assign_α
n25_call_β:             mov              r11, 14
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # cmd2
                        mov              qword ptr [r9 + 24], rdx;            jmp   n27_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 16
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n28_statement_begin_α
#=======================================================================================================================
#         s = 'abc'
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 17
                        mov              r10, 3;                              jmp   n29_lit_string_α
n28_statement_begin_β:  mov              r11, 17;                             jmp   n32_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # s
                        mov              qword ptr [r9 + 40], rdx;            jmp   n31_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 20
                        mov              r10, 3
                        add              rsp, 16;                             jmp   n32_statement_begin_α
#=======================================================================================================================
#         s  POS(0) *cmd1 *cmd2 RPOS(0)                         :S(BAD)F(GOOD)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 21
                        mov              r10, 4;                              jmp   n33_var_α
n32_statement_begin_β:  mov              r11, 21;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              sub              rsp, 16
                        mov              r11, 22
                        mov              rax, qword ptr [r9 + 32]             # s
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_begin_α:      mov              r11, 23
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx75_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx75_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n35_match_pos_α
n34_match_begin_β:      mov              r11, 23
.Lx75_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx75_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx75_1
                                                                              jmp   .Lx75_0
.Lx75_1:
n34_match_begin_af:     mov              r11, 23
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
                        pop              rbp
                        add              rsp, 16;                             jmp   n45_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_match_pos_α:        mov              r11, 24
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n34_match_begin_β
                                                                              jmp   n36_match_defer_α
n35_match_pos_β:        mov              r11, 24;                             jmp   n34_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_defer_α:      sub              rsp, 16
                        mov              r11, 25
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 0]              # cmd1
                        mov              rdx, qword ptr [r9 + 8]
                        cmp              al, 8;                               jne   .Lx77_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx77_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 8];             jmp   .Lx77_10
.Lx77_9:                cmp              al, 88;                              jne   .Lx77_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx77_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx77_10
.Lx77_21:               xor              eax, eax
.Lx77_10:               test             rax, rax;                            jz    .Lx77_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx77_5]
                        push             rcx
                        lea              rcx, [rip + .Lx77_4]
                        push             rcx;                                 jmp   rax
.Lx77_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n37_match_defer_α
.Lx77_5:                mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n34_match_begin_β
.Lx77_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx77_240
                        add              rsp, 16;                             jmp   n34_match_begin_β
.Lx77_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx77_6]
                        push             rcx
                        push             rax;                                 jmp   n37_match_defer_α
.Lx77_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n34_match_begin_β
n36_match_defer_β:      mov              r11, 25
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n34_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:      sub              rsp, 16
                        mov              r11, 26
                        push             rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [r9 + 16]             # cmd2
                        mov              rdx, qword ptr [r9 + 24]
                        cmp              al, 8;                               jne   .Lx78_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lx78_10
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dtp_fn_of@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, qword ptr [r9 + 24];            jmp   .Lx78_10
.Lx78_9:                cmp              al, 88;                              jne   .Lx78_21
                        mov              rdi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_xpat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx78_21
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lx78_10
.Lx78_21:               xor              eax, eax
.Lx78_10:               test             rax, rax;                            jz    .Lx78_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx78_5]
                        push             rcx
                        lea              rcx, [rip + .Lx78_4]
                        push             rcx;                                 jmp   rax
.Lx78_4:                mov              rsp, rbp
                        pop              rbp;                                 jmp   n38_match_rpos_α
.Lx78_5:                mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n34_match_begin_β
.Lx78_0:                push             r14
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
                        test             eax, eax;                            jns   .Lx78_240
                        add              rsp, 16;                             jmp   n34_match_begin_β
.Lx78_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx78_6]
                        push             rcx
                        push             rax;                                 jmp   n38_match_rpos_α
.Lx78_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n34_match_begin_β
n37_match_defer_β:      mov              r11, 26
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   n34_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_rpos_α:       mov              r11, 27
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n34_match_begin_β
                                                                              jmp   n39_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_end_α:        mov              r11, 28
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
                        test             rax, rax;                            je    .Lx81_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n34_match_begin_af
.Lx81_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 29
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n41_statement_begin_α
#=======================================================================================================================
# BAD     OUTPUT = 'unexpected match (alt was tried)'           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 30
                        mov              r10, 5;                              jmp   n42_lit_string_α
n41_statement_begin_β:  mov              r11, 30;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_assign_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "unexpected match (alt was tried)"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 32
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_statement_end_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 33
                        mov              r10, 5
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# GOOD    OUTPUT = 'double-sealed'
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 34
                        mov              r10, 6;                              jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 34;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "double-sealed"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 36
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_statement_end_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 37
                        mov              r10, 6
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
                        .long            80
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
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "cmd1"
.S1:                    .string          "cmd2"
                        .text
                        .section         .note.GNU-stack,"",@progbits
