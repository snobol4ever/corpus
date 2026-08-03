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
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
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
#         X  POS(0) FENCE('X' | 'Y' | 'Z')                      :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                                                                                        jmp   main_ω
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
                                                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 176
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
                        mov              rdi, qword ptr [rsp + 176]                     # var
                        mov              rsi, qword ptr [rsp + 184]
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        sub              rsp, 56
                        mov              qword ptr [rbp + -8], r13                      # outer_Σ
                        mov              qword ptr [rbp + -16], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        mov              qword ptr [rbp + -32], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -40], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -56], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -48], 0                       # start_δ
.Lx36_0:
                        mov              r14d, dword ptr [rbp + -48]
                                                                                        jmp   n7_lit_integer_α
n6_match_begin_β:
                        mov              r12, qword ptr [rbp + -32]                     # cas_base
                        mov              eax, dword ptr [rbp + -48]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx36_1
                        mov              rcx, qword ptr [rbp + -40]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx36_1
                        mov              qword ptr [rbp + -48], rax                     # start_δ
                                                                                        jmp   .Lx36_0
.Lx36_1:
                        mov              r12, qword ptr [rbp + -32]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -8]                      # outer_Σ
                        mov              r14, qword ptr [rbp + -16]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -56]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # whack
                        pop              rbp
                        add              rsp, 256
                                                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_match_pos_α
n7_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_α
.Lx37_0:
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
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n16_match_alternate_α
n9_match_fence1_as:
                        mov              rsp, rbp
                        mov              qword ptr [rbp + 128], rbp
                                                                                        jmp   n10_match_end_α
n9_match_fence1_β:
n9_match_fence1_af:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -32]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx42_1:
                        test             rax, rax
                                                                                        je    .Lx42_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx42_3]
                        lea              rdx, [rip + .Lx42_4]
                                                                                        jmp   rax
.Lx42_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx42_1
.Lx42_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx42_1
.Lx42_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -32]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -8]                      # outer_Σ
                        mov              r14, qword ptr [rbp + -16]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -56]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # whack
                        pop              rbp
                                                                                        jmp   n11_statement_end_α
                        mov              r12, qword ptr [rbp + -32]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -8]                      # outer_Σ
                        mov              r14, qword ptr [rbp + -16]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -56]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # whack
                        pop              rbp
                        add              rsp, 208
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 208
                                                                                        jmp   n12_statement_begin_α
n11_statement_end_β:
                        add              rsp, 208
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
# YES     OUTPUT = 'unexpected match'                           :(END)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "unexpected match"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx48_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_end_α
n14_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n15_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx52_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n19_match_lit_α
.Lx52_21:
                        lea              rax, [rip + .Lx52_22]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n18_match_lit_α
.Lx52_22:
                        lea              rax, [rip + .Lx52_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n17_match_lit_α
n16_match_alternate_s0:
                        lea              rax, [rip + .Lx52_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n16_match_alternate_as
n16_match_alternate_s1:
                        lea              rax, [rip + .Lx52_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n16_match_alternate_as
n16_match_alternate_s2:
                        lea              rax, [rip + .Lx52_42]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n16_match_alternate_as
.Lx52_40:
                                                                                        jmp   n19_match_lit_β
.Lx52_41:
                                                                                        jmp   n18_match_lit_β
.Lx52_42:
                                                                                        jmp   n17_match_lit_β
n16_match_alternate_as:
                                                                                        jmp   n9_match_fence1_as
n16_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n16_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx52_19:
                                                                                        jmp   n9_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 90
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n16_match_alternate_s2
n17_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 89
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n16_match_alternate_s1
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 88
                                                                                        jne   n16_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n16_match_alternate_s0
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_alternate_af
#=======================================================================================================================
# NO      OUTPUT = 'no alt matched'
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_lit_string_α
n20_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
n21_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "no alt matched"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_end_α
n22_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n23_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:
                                                                                        jmp   n12_statement_begin_α
n24_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:
                                                                                        jmp   n20_statement_begin_α
n25_goto_β:
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
