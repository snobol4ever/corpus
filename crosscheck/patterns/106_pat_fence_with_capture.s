                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
.Lgvan1:                .string          "FRUIT"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         X = 'apple'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
n1_lit_string_β:        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # X
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
n2_assign_β:                                                                  jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     add              rsp, 16;                             jmp   n4_statement_begin_α
n3_statement_end_β:     add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         X  POS(0) FENCE('app' | 'apple') $ FRUIT             :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:                                                         jmp   n5_var_α
n4_statement_begin_β:                                                         jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # X
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
n5_var_β:               add              rsp, 16;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx36_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n7_match_pos_α
n6_match_begin_β:       lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx36_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx36_1
                                                                              jmp   .Lx36_0
.Lx36_1:
n6_match_begin_af:      mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   n6_match_begin_β
                                                                              jmp   n8_match_assign_save_α
n7_match_pos_β:                                                               jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n9_match_fence1_α
n8_match_assign_save_β: add              rsp, 16;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_fence1_α:      mov              qword ptr [rbp + -64], rsp
                        sub              rsp, 0;                              jmp   n13_match_alternate_α
n9_match_fence1_as:     add              rsp, 0
                        mov              rsp, qword ptr [rbp + -64];          jmp   n10_match_assign_imm_α
n9_match_fence1_af:     add              rsp, 0
n9_match_fence1_β:      mov              rsp, qword ptr [rbp + -64];          jmp   n8_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_imm_α: mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx43_1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx43_2]
                        lea              rdx, [rip + .Lx43_3];                jmp   rax
.Lx43_2:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx43_1
.Lx43_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx43_1:                                                                      jmp   n11_match_end_α
n10_match_assign_imm_β:                                                       jmp   n9_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_end_α:        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx45_1:                test             rax, rax;                            je    .Lx45_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4];                jmp   rax
.Lx45_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx45_1
.Lx45_4:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_step@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx45_1
.Lx45_2:                call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    add              rsp, 16;                             jmp   n16_statement_begin_α
n12_statement_end_β:    add              rsp, 32;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx49_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n15_match_lit_α
.Lx49_21:               lea              rax, [rip + .Lx49_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n14_match_lit_α
n13_match_alternate_s0: lea              rax, [rip + .Lx49_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_match_alternate_as
n13_match_alternate_s1: lea              rax, [rip + .Lx49_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_match_alternate_as
.Lx49_40:                                                                     jmp   n15_match_lit_β
.Lx49_41:                                                                     jmp   n14_match_lit_β
n13_match_alternate_as:                                                       jmp   n9_match_fence1_as
n13_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n13_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx49_19:               add              rsp, 32;                             jmp   n9_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d;                           jg    n13_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819308129;                     jne   n13_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101;                            jne   n13_match_alternate_af
                        add              r14d, 5;                             jmp   n13_match_alternate_s1
n14_match_lit_β:        sub              r14d, 5;                             jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n13_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 112;                            jne   n13_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 112;                            jne   n13_match_alternate_af
                        add              r14d, 3;                             jmp   n13_match_alternate_s0
n15_match_lit_β:        sub              r14d, 3;                             jmp   n13_match_alternate_af
#=======================================================================================================================
# YES     OUTPUT = 'captured ' FRUIT                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_lit_string_α
n16_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_var_α
n17_lit_string_β:       add              rsp, 16;                             jmp   n16_statement_begin_β
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "captured "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # FRUIT
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_binop_α
n18_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_assign_α
n19_binop_β:            add              rsp, 16;                             jmp   n18_var_β
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_statement_end_α
n20_assign_β:                                                                 jmp   n16_statement_begin_β
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    add              rsp, 48;                             jmp   main_γ
n21_statement_end_β:    add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# NO      OUTPUT = 'no match'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:                                                        jmp   n23_lit_string_α
n22_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_assign_α
n23_lit_string_β:       add              rsp, 16;                             jmp   n22_statement_begin_β
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "no match"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_statement_end_α
n24_assign_β:                                                                 jmp   n22_statement_begin_β
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n25_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "FRUIT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
