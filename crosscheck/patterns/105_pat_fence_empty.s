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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "X"
.Lgvan1:                .string          "eps"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         X = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:   mov              r11, 2
                        mov              r10, 1;                              jmp   n3_lit_string_α
n2_statement_begin_β:   mov              r11, 2;                              jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 5
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n6_statement_begin_α
#=======================================================================================================================
#         eps = LEN(0)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 6
                        mov              r10, 2;                              jmp   n7_lit_string_α
n6_statement_begin_β:   mov              r11, 6;                              jmp   n11_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_call_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              sub              rsp, 16
                        mov              r11, 8
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd41:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd41]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx40_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n6_statement_begin_β
.Lx40_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_assign_α
n8_call_β:              mov              r11, 8
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n6_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # eps
                        mov              qword ptr [r9 + 24], rdx;            jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    mov              r11, 10
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n11_statement_begin_α
#=======================================================================================================================
#         X  POS(0) FENCE(eps) LEN(2) RPOS(0)                   :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 11
                        mov              r10, 3;                              jmp   n12_var_α
n11_statement_begin_β:  mov              r11, 11;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              sub              rsp, 16
                        mov              r11, 12
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              r11, 13
                        mov              rax, qword ptr [r9 + 16]             # eps
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_assign_α
n13_var_β:              mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 14
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_match_begin_α
n14_assign_β:           mov              r11, 14;                             jmp   n13_var_β
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n15_match_begin_α:      mov              r11, 15
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx51_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx51_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n16_match_pos_α
n15_match_begin_β:      mov              r11, 15
.Lx51_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx51_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx51_1
                                                                              jmp   .Lx51_0
.Lx51_1:
n15_match_begin_af:     mov              r11, 15
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
                        pop              rbp;                                 jmp   n14_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_pos_α:        mov              r11, 16
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n15_match_begin_β
                                                                              jmp   n17_match_fence1_α
n16_match_pos_β:        mov              r11, 16;                             jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_fence1_α:     mov              r11, 17
                        mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n22_match_defer_α
n17_match_fence1_as:    mov              r11, 17
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n18_match_len_α
n17_match_fence1_af:    mov              r11, 17
                        add              rsp, 0
n17_match_fence1_β:     mov              r11, 17
                        mov              rsp, qword ptr [rbp + -64];          jmp   n16_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_len_α:        mov              r11, 18
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n15_match_begin_β
                        add              r14d, 2;                             jmp   n19_match_rpos_α
n18_match_len_β:        mov              r11, 18
                        sub              r14d, 2;                             jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_rpos_α:       mov              r11, 19
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n17_match_fence1_β
                                                                              jmp   n20_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_match_end_α:        mov              r11, 20
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
                        test             rax, rax;                            je    .Lx58_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n15_match_begin_af
.Lx58_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n21_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 21
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_defer_α:      mov              r11, 22
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx61_14
                        mov              rax, qword ptr [rdx + 0]
.Lx61_14:               test             rax, rax;                            jz    .Lx61_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx61_5]
                        push             rcx
                        lea              rcx, [rip + .Lx61_4]
                        push             rcx;                                 jmp   rax
.Lx61_4:                                                                      jmp   n17_match_fence1_as
.Lx61_5:                                                                      jmp   n17_match_fence1_af
.Lx61_0:                push             r14
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
                        test             eax, eax;                            js    n17_match_fence1_af
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx61_6]
                        push             rcx
                        push             rax;                                 jmp   n17_match_fence1_as
.Lx61_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n17_match_fence1_af
n22_match_defer_β:      mov              r11, 22
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx61_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx61_12
                                                                              jmp   rax
.Lx61_12:                                                                     jmp   qword ptr [rsp]
#=======================================================================================================================
# YES     OUTPUT = 'epsilon then LEN(2)'                        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 23
                        mov              r10, 4;                              jmp   n24_lit_string_α
n23_statement_begin_β:  mov              r11, 23;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "epsilon then LEN(2)"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 25
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_statement_end_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 26
                        mov              r10, 4
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'unexpected fail'
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 27
                        mov              r10, 5;                              jmp   n28_lit_string_α
n27_statement_begin_β:  mov              r11, 27;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_assign_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "unexpected fail"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 29
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_statement_end_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 30
                        mov              r10, 5
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
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
