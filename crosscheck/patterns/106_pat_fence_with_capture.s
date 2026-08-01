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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         X = 'apple'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "apple"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # X
                        mov              qword ptr [1879052296], rdx                    # X
                        add              rsp, 16
                                                                                        jmp   n2_var_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_var_α
#=======================================================================================================================
#         X  POS(0) FENCE('app' | 'apple') $ FRUIT             :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]                    # X
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_match_head_α
n2_var_β:
                        add              rsp, 16
                        add              rsp, 256
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx25_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n4_match_sequence_α
n3_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx25_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx25_1
                                                                                        jmp   .Lx25_0
.Lx25_1:
                        mov              r10, qword ptr [1879048192]
.Lx25_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 256
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                                                                                        jmp   n15_lit_integer_α
n4_match_sequence_as:
                                                                                        jmp   n5_match_release_α
n4_match_sequence_β:
                                                                                        jmp   n12_match_assign_imm_β
n4_match_sequence_af:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx29_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_9
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
.Lx29_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx29_1:
                        test             rax, rax
                                                                                        je    .Lx29_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4]
                                                                                        jmp   rax
.Lx29_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx29_1
.Lx29_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx29_1
.Lx29_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx29_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx29_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 120]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 256
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'captured ' FRUIT                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_var_α
n6_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "captured "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # FRUIT
                        mov              rdx, qword ptr [1879052312]                    # FRUIT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_binop_α
n7_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_assign_α
n8_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx33_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   main_γ
n9_assign_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n11_match_alternate_α
n10_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_alternate_α:
                        mov              dword ptr [rsp + 208], r14d
                        lea              rax, [rip + .Lx37_21]
                        mov              qword ptr [rsp + 224], rax
                                                                                        jmp   n14_match_lit_α
.Lx37_21:
                        lea              rax, [rip + .Lx37_19]
                        mov              qword ptr [rsp + 224], rax
                                                                                        jmp   n13_match_lit_α
n11_match_alternate_s0:
                        lea              rax, [rip + .Lx37_40]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n11_match_alternate_as
n11_match_alternate_s1:
                        lea              rax, [rip + .Lx37_41]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n11_match_alternate_as
.Lx37_40:
                                                                                        jmp   n14_match_lit_β
.Lx37_41:
                                                                                        jmp   n13_match_lit_β
n11_match_alternate_as:
                                                                                        jmp   n12_match_assign_imm_α
n11_match_alternate_β:
                        mov              rax, qword ptr [rsp + 216]
                                                                                        jmp   rax
n11_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 208]
                        mov              rax, qword ptr [rsp + 224]
                                                                                        jmp   rax
.Lx37_19:
                                                                                        jmp   n10_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx39_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx39_2]
                        lea              rdx, [rip + .Lx39_3]
                                                                                        jmp   rax
.Lx39_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx39_1
.Lx39_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
.Lx39_1:
                                                                                        jmp   n5_match_release_α
n12_match_assign_imm_β:
                                                                                        jmp   n11_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 1819308129
                                                                                        jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n11_match_alternate_af
                        add              r14d, 5
                                                                                        jmp   n11_match_alternate_s1
n13_match_lit_β:
                        sub              r14d, 5
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d
                                                                                        jg    n11_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 112
                                                                                        jne   n11_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 112
                                                                                        jne   n11_match_alternate_af
                        add              r14d, 3
                                                                                        jmp   n11_match_alternate_s0
n14_match_lit_β:
                        sub              r14d, 3
                                                                                        jmp   n11_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rsp + 144], 6
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n16_match_pos_α
n15_lit_integer_β:
                                                                                        jmp   n3_match_head_β
.Lx44_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n16_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n3_match_head_β
                                                                                        jmp   n10_match_assign_save_α
n16_match_pos_β:
                                                                                        jmp   n3_match_head_β
#=======================================================================================================================
# NO      OUTPUT = 'no match'
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
n17_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "no match"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx47_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n18_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_goto_α:
                                                                                        jmp   n6_lit_string_α
n19_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n17_lit_string_α
n20_goto_β:
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
                        .section         .rodata
.S0:                    .string          "FRUIT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
