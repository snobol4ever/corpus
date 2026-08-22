                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "X"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         X = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
n1_lit_string_β:        mov              r11, 2
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
n2_assign_β:            mov              r11, 3;                              jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
n3_statement_end_β:     mov              r11, 4
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         X  POS(0) FENCE(LEN(1) | LEN(2)) LEN(1) RPOS(0)       :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_var_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              r11, 6
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
n5_var_β:               mov              r11, 6
                        add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              r11, 7
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx34_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx34_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n7_match_pos_α
n6_match_begin_β:       mov              r11, 7
.Lx34_13:               lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx34_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx34_1
                                                                              jmp   .Lx34_0
.Lx34_1:
n6_match_begin_af:      mov              r11, 7
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
                        add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_pos_α:         mov              r11, 8
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n6_match_begin_β
                                                                              jmp   n8_match_fence1_α
n7_match_pos_β:         mov              r11, 8;                              jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_fence1_α:      mov              r11, 9
                        mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n13_match_alternate_α
n8_match_fence1_as:     mov              r11, 9
                        add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n9_match_len_α
n8_match_fence1_af:     mov              r11, 9
                        add              rsp, 0
n8_match_fence1_β:      mov              r11, 9
                        mov              rsp, qword ptr [rbp + -64];          jmp   n7_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_len_α:         mov              r11, 10
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_begin_β
                        add              r14d, 1;                             jmp   n10_match_rpos_α
n9_match_len_β:         mov              r11, 10
                        sub              r14d, 1;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_rpos_α:       mov              r11, 11
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n8_match_fence1_β
                                                                              jmp   n11_match_end_α
n10_match_rpos_β:       mov              r11, 11;                             jmp   n8_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_end_α:        mov              r11, 12
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
                        test             rax, rax;                            je    .Lx41_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n6_match_begin_af
.Lx41_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n16_statement_begin_α
n12_statement_end_β:    mov              r11, 13
                        add              rsp, 16;                             jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:  mov              r11, 14
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx45_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n15_match_len_α
.Lx45_21:               lea              rax, [rip + .Lx45_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n14_match_len_α
n13_match_alternate_s0: mov              r11, 14
                        lea              rax, [rip + .Lx45_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_match_alternate_as
n13_match_alternate_s1: mov              r11, 14
                        lea              rax, [rip + .Lx45_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_match_alternate_as
.Lx45_40:                                                                     jmp   n15_match_len_β
.Lx45_41:                                                                     jmp   n14_match_len_β
n13_match_alternate_as: mov              r11, 14;                             jmp   n8_match_fence1_as
n13_match_alternate_β:  mov              r11, 14
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n13_match_alternate_af: mov              r11, 14
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx45_19:               add              rsp, 32;                             jmp   n8_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_len_α:        mov              r11, 15
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d;                           jg    n13_match_alternate_af
                        add              r14d, 2;                             jmp   n13_match_alternate_s1
n14_match_len_β:        mov              r11, 15
                        sub              r14d, 2;                             jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_len_α:        mov              r11, 16
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n13_match_alternate_af
                        add              r14d, 1;                             jmp   n13_match_alternate_s0
n15_match_len_β:        mov              r11, 16
                        sub              r14d, 1;                             jmp   n13_match_alternate_af
#=======================================================================================================================
# YES     OUTPUT = 'matched first alt then continued'           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17
                        mov              r10, 3;                              jmp   n17_lit_string_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
n17_lit_string_β:       mov              r11, 18
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "matched first alt then continued"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_statement_end_α
n18_assign_β:           mov              r11, 19;                             jmp   n16_statement_begin_β
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 3
                        add              rsp, 16;                             jmp   main_γ
n19_statement_end_β:    mov              r11, 20
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'unexpected fail'
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 21
                        mov              r10, 4;                              jmp   n21_lit_string_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_assign_α
n21_lit_string_β:       mov              r11, 22
                        add              rsp, 16;                             jmp   n20_statement_begin_β
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "unexpected fail"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_statement_end_α
n22_assign_β:           mov              r11, 23;                             jmp   n20_statement_begin_β
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24
                        mov              r10, 4
                        add              rsp, 16;                             jmp   main_γ
n23_statement_end_β:    mov              r11, 24
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
                        .section         .note.GNU-stack,"",@progbits
