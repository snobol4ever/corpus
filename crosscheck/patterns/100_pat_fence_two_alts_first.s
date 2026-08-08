                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         X = 'AB'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
n2_assign_β:
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
n3_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         X  POS(0) FENCE(LEN(1) | LEN(2)) LEN(1) RPOS(0)       :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
n5_var_β:
                        add              rsp, 16
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              rdi, qword ptr [rsp + 192]                     # var
                        mov              rsi, qword ptr [rsp + 200]
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx38_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n7_lit_integer_α
n6_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx38_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx38_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx38_0
.Lx38_1:
n6_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                        add              rsp, 208
                                                                                        jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_match_pos_α
n7_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_α
.Lx39_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n6_match_begin_β
                                                                                        jmp   n9_match_fence1_α
n8_match_pos_β:
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_fence1_α:
                        mov              qword ptr [rbp + 144], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n19_match_alternate_α
n9_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n10_match_len_α
n9_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n9_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n8_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n6_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n11_lit_integer_α
n10_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_match_rpos_α
n11_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n10_match_len_β
.Lx44_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n9_match_fence1_β
                                                                                        jmp   n13_match_end_α
n12_match_rpos_β:
                                                                                        jmp   n9_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx47_1:
                        test             rax, rax
                                                                                        je    .Lx47_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx47_3]
                        lea              rdx, [rip + .Lx47_4]
                                                                                        jmp   rax
.Lx47_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n14_statement_end_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:
                        add              rsp, 208
                                                                                        jmp   n15_statement_begin_α
n14_statement_end_β:
                        add              rsp, 208
                                                                                        jmp   n22_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'matched first alt then continued'           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:
                                                                                        jmp   n16_lit_string_α
n15_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "matched first alt then continued"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx53_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n18_statement_end_α
n17_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n18_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n19_match_alternate_α:
                        mov              dword ptr [rbp + 160], r14d
                        lea              rax, [rip + .Lx57_21]
                        mov              qword ptr [rbp + 176], rax
                                                                                        jmp   n21_match_len_α
.Lx57_21:
                        lea              rax, [rip + .Lx57_19]
                        mov              qword ptr [rbp + 176], rax
                                                                                        jmp   n20_match_len_α
n19_match_alternate_s0:
                        lea              rax, [rip + .Lx57_40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n19_match_alternate_as
n19_match_alternate_s1:
                        lea              rax, [rip + .Lx57_41]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n19_match_alternate_as
.Lx57_40:
                                                                                        jmp   n21_match_len_β
.Lx57_41:
                                                                                        jmp   n20_match_len_β
n19_match_alternate_as:
                                                                                        jmp   n9_match_fence1_as
n19_match_alternate_β:
                        mov              rax, qword ptr [rbp + 168]
                                                                                        jmp   rax
n19_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rax, qword ptr [rbp + 176]
                                                                                        jmp   rax
.Lx57_19:
                                                                                        jmp   n9_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_len_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n19_match_alternate_s1
n20_match_len_β:
                        sub              r14d, 2
                                                                                        jmp   n19_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n19_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n19_match_alternate_s0
n21_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n19_match_alternate_af
#=======================================================================================================================
# NO      OUTPUT = 'unexpected fail'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:
                                                                                        jmp   n23_lit_string_α
n22_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n24_assign_α
n23_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "unexpected fail"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx63_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n25_statement_end_α
n24_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n25_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_goto_α:
                                                                                        jmp   n15_statement_begin_α
n26_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:
                                                                                        jmp   n22_statement_begin_α
n27_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
