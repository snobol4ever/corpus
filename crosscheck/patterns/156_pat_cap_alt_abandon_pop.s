                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V1"
.Lgvan1:                .string          "V2"
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#  'ab' ? ('ab' . V1 | 'a' . V2) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        push             rbp                                            # mech2_boundary
                        mov              rbp, rsp
                        sub              rsp, 312                                       # mech2_blob_carve
                        mov              rdi, qword ptr [rsp + 320]                     # lit_string
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -40], rax                     # cap_gen
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rbp + -72], r12                     # cas_sentinel
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -64], rsp                     # zls2_mark
                        mov              dword ptr [rbp + -48], 0                       # start_δ
.Lx27_0:
                        mov              r14d, dword ptr [rbp + -48]
                                                                                        jmp   n3_match_alternate_α
n2_match_begin_β:
                        add              dword ptr [rbp + -48], 1
                        mov              eax, dword ptr [rbp + -48]
                        cmp              eax, r15d
                                                                                        jg    .Lx27_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx27_1
                        mov              r10, qword ptr [rbp + -72]                     # cas_sentinel
                        mov              qword ptr [1879048192], r10
                        mov              rsp, qword ptr [rbp + -64]                     # rsp_mark
                                                                                        jmp   .Lx27_0
.Lx27_1:
n2_match_begin_af:
                        mov              rsp, qword ptr [rbp + -64]
                        mov              r10, qword ptr [1879048192]
.Lx27_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx27_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -40]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # mech2_whack
                        pop              rbp
                                                                                        jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        lea              rax, [rip + .Lx29_21]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n20_match_assign_save_α
.Lx29_21:
                        lea              rax, [rip + .Lx29_19]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n17_match_assign_save_α
n3_match_alternate_s0:
                        lea              rax, [rip + .Lx29_40]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n3_match_alternate_as
n3_match_alternate_s1:
                        lea              rax, [rip + .Lx29_41]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n3_match_alternate_as
.Lx29_40:
                                                                                        jmp   n22_match_assign_cond_β
.Lx29_41:
                                                                                        jmp   n19_match_assign_cond_β
n3_match_alternate_as:
                                                                                        jmp   n4_match_lit_α
n3_match_alternate_β:
                        mov              rax, qword ptr [rsp + 120]
                                                                                        jmp   rax
n3_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rax, qword ptr [rsp + 128]
                                                                                        jmp   rax
.Lx29_19:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n3_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n3_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   n5_match_end_α
n4_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx33_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx33_1:
                        test             rax, rax
                                                                                        je    .Lx33_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx33_3]
                        lea              rdx, [rip + .Lx33_4]
                                                                                        jmp   rax
.Lx33_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx33_1
.Lx33_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx33_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -40]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # mech2_whack
                        pop              rbp
                                                                                        jmp   n6_statement_end_α
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -40]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp                                       # mech2_whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_α
n6_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n7_statement_begin_α
#=======================================================================================================================
#  OUTPUT = 'V1=' V1 ' V2=' V2
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:
                                                                                        jmp   n8_lit_string_α
n7_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_var_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "V1="
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V1
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_binop_α
n9_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_lit_string_α
n10_binop_β:
                        add              rsp, 16
                                                                                        jmp   n9_var_β
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_binop_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_binop_β
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          " V2="
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_var_α
n12_binop_β:
                        add              rsp, 16
                                                                                        jmp   n11_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V2
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_binop_α
n13_var_β:
                        add              rsp, 16
                                                                                        jmp   n12_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_binop_β:
                        add              rsp, 16
                                                                                        jmp   n13_var_β
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx45_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n16_statement_end_α
n15_assign_β:
                                                                                        jmp   n14_binop_β
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   main_γ
n16_statement_end_β:
                        add              rsp, 112
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        lea              rdi, [rsp + 240]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n18_match_lit_α
n17_match_assign_save_β:
                        lea              rdi, [rsp + 240]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n17_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n19_match_assign_cond_α
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        lea              rdi, [rsp + 240]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n3_match_alternate_s1
n19_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n18_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_save_α:
                        lea              rdi, [rsp + 176]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n21_match_lit_α
n20_match_assign_save_β:
                        lea              rdi, [rsp + 176]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n20_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n20_match_assign_save_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n20_match_assign_save_β
                        add              r14d, 2
                                                                                        jmp   n22_match_assign_cond_α
n21_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n20_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_assign_cond_α:
                        lea              rdi, [rsp + 176]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n3_match_alternate_s0
n22_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n21_match_lit_β
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
.S0:                    .string          "V2"
.S1:                    .string          "V1"
                        .text
                        .section         .note.GNU-stack,"",@progbits
