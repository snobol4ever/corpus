                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#  'aXb' ? ('a' ARB . V | 'q') 'b'                              :S(Y)F(N)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_match_begin_α
n1_lit_string_β:        add              rsp, 16;                             jmp   n21_statement_begin_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "aXb"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # lit_string
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
.Lx29_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n3_match_alternate_α
n2_match_begin_β:       lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx29_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx29_1
                                                                              jmp   .Lx29_0
.Lx29_1:
n2_match_begin_af:      mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx31_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n9_match_lit_α
.Lx31_21:               lea              rax, [rip + .Lx31_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_lit_α
n3_match_alternate_s0:  lea              rax, [rip + .Lx31_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_match_alternate_as
n3_match_alternate_s1:  lea              rax, [rip + .Lx31_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_match_alternate_as
.Lx31_40:                                                                     jmp   n8_goto_β
.Lx31_41:                                                                     jmp   n7_match_lit_β
n3_match_alternate_as:                                                        jmp   n4_match_lit_α
n3_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n3_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx31_19:               add              rsp, 32;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   n3_match_alternate_β
                        add              r14d, 1;                             jmp   n5_match_end_α
n4_match_lit_β:         sub              r14d, 1;                             jmp   n3_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_end_α:         push             r14
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
.Lx35_1:                test             rax, rax;                            je    .Lx35_2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx35_3]
                        lea              rdx, [rip + .Lx35_4];                jmp   rax
.Lx35_3:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx35_1
.Lx35_4:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx35_1
.Lx35_2:                call             rt_dcap_end_ok_close@PLT
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
                        pop              rbp;                                 jmp   n6_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     add              rsp, 16;                             jmp   n13_statement_begin_α
n6_statement_end_β:     add              rsp, 16;                             jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 113;                            jne   n3_match_alternate_af
                        add              r14d, 1;                             jmp   n3_match_alternate_s1
n7_match_lit_β:         sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_goto_α:                                                                    jmp   n3_match_alternate_af
n8_goto_β:                                                                    jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   n3_match_alternate_af
                        add              r14d, 1;                             jmp   n10_match_assign_save_α
n9_match_lit_β:         sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -64], r14d;         jmp   n11_match_arb_α
n10_match_assign_save_β:
                        add              rsp, 16;                             jmp   n9_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_arb_α:        mov              dword ptr [rsp + 208], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 212], eax;          jmp   n12_match_assign_cond_α
n11_match_arb_β:        add              dword ptr [rsp + 208], 1
                        mov              eax, dword ptr [rsp + 212]
                        add              eax, dword ptr [rsp + 208]
                        cmp              eax, r15d;                           jg    .Lx46_0
                        mov              r14d, eax;                           jmp   n12_match_assign_cond_α
.Lx46_0:                mov              r14d, dword ptr [rsp + 212]
                        add              rsp, 16;                             jmp   n9_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -64]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_alternate_s0
n12_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n11_match_arb_β
#=======================================================================================================================
# Y OUTPUT = 'V=[' V ']'                                        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                                        jmp   n14_lit_string_α
n13_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_var_α
n14_lit_string_β:       add              rsp, 16;                             jmp   n13_statement_begin_β
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "V=["
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_binop_α
n15_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n13_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
n16_binop_β:            add              rsp, 16;                             jmp   n15_var_β
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_binop_α
n17_lit_string_β:       add              rsp, 16;                             jmp   n16_binop_β
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_assign_α
n18_binop_β:            add              rsp, 16;                             jmp   n17_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_statement_end_α
n19_assign_β:                                                                 jmp   n13_statement_begin_β
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    add              rsp, 80;                             jmp   main_γ
n20_statement_end_β:    add              rsp, 80;                             jmp   main_γ
#=======================================================================================================================
# N OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:                                                        jmp   n22_lit_string_α
n21_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
n22_lit_string_β:       add              rsp, 16;                             jmp   n21_statement_begin_β
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_statement_end_α
n23_assign_β:                                                                 jmp   n21_statement_begin_β
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n24_statement_end_β:    add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "V"
                        .text
                        .section         .note.GNU-stack,"",@progbits
