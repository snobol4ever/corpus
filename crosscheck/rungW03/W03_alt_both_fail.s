                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "subject"
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
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_statement_end_α
n0_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_statement_end_α:
                                                                                        jmp   n2_statement_begin_α
n1_statement_end_β:
                                                                                        jmp   n2_statement_begin_α
#=======================================================================================================================
#         subject = 'foobar'
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_begin_α:
                                                                                        jmp   n3_lit_string_α
n2_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_assign_α
n3_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "foobar"
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n5_statement_end_α
n4_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
n5_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
#=======================================================================================================================
#         subject ('baz' | 'qux')  :s(e001)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_var_α
n6_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_match_begin_α
n7_var_β:
                        add              rsp, 16
                                                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_begin_α:
                        sub              rsp, 160
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
                        mov              rdi, qword ptr [rsp + 160]                     # var
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 96], r13                      # outer_Σ
                        mov              qword ptr [rsp + 104], r14                     # outer_δ
                        mov              qword ptr [rsp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 120], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx37_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n9_match_alternate_α
n8_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx37_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx37_1
                                                                                        jmp   .Lx37_0
.Lx37_1:
                        mov              r10, qword ptr [1879048192]
.Lx37_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 104]                     # outer_δ
                        mov              r15, qword ptr [rsp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 176
                                                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_alternate_α:
                        mov              dword ptr [rsp + 128], r14d
                        lea              rax, [rip + .Lx39_21]
                        mov              qword ptr [rsp + 144], rax
                                                                                        jmp   n17_match_lit_α
.Lx39_21:
                        lea              rax, [rip + .Lx39_19]
                        mov              qword ptr [rsp + 144], rax
                                                                                        jmp   n16_match_lit_α
n9_match_alternate_s0:
                        lea              rax, [rip + .Lx39_40]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n9_match_alternate_as
n9_match_alternate_s1:
                        lea              rax, [rip + .Lx39_41]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n9_match_alternate_as
.Lx39_40:
                                                                                        jmp   n17_match_lit_β
.Lx39_41:
                                                                                        jmp   n16_match_lit_β
n9_match_alternate_as:
                                                                                        jmp   n10_match_end_α
n9_match_alternate_β:
                        mov              rax, qword ptr [rsp + 136]
                                                                                        jmp   rax
n9_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 128]
                        mov              rax, qword ptr [rsp + 144]
                                                                                        jmp   rax
.Lx39_19:
                                                                                        jmp   n8_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx41_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx41_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx41_1:
                        test             rax, rax
                                                                                        je    .Lx41_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_3]
                        lea              rdx, [rip + .Lx41_4]
                                                                                        jmp   rax
.Lx41_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx41_1
.Lx41_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx41_1
.Lx41_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx41_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 104]                     # outer_δ
                        mov              r15, qword ptr [rsp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n12_statement_begin_α
n11_statement_end_β:
                        add              rsp, 176
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W03/003: alt should have failed but succeeded'
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "FAIL W03/003: alt should have failed but succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx47_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_end_α
n14_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n15_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 113
                                                                                        jne   n9_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 117
                                                                                        jne   n9_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 120
                                                                                        jne   n9_match_alternate_af
                        add              r14d, 3
                                                                                        jmp   n9_match_alternate_s1
n16_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n9_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n9_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n9_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97
                                                                                        jne   n9_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 122
                                                                                        jne   n9_match_alternate_af
                        add              r14d, 3
                                                                                        jmp   n9_match_alternate_s0
n17_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n9_match_alternate_af
#=======================================================================================================================
#         OUTPUT = 'PASS W03/003: alt both fail as expected'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_lit_string_α
n18_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
n19_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "PASS W03/003: alt both fail as expected"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_end_α
n20_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n21_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_goto_α:
                                                                                        jmp   n12_statement_begin_α
n22_goto_β:
                                                                                        jmp   main_ω
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
                        .section         .note.GNU-stack,"",@progbits
