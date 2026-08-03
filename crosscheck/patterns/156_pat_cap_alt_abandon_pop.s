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
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_statement_begin_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        sub              rsp, 256
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
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              rdi, qword ptr [rsp + 256]                     # lit_string
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
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
.Lx28_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_match_sequence_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx28_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx28_1
                                                                                        jmp   .Lx28_0
.Lx28_1:
                        mov              r10, qword ptr [1879048192]
.Lx28_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx28_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 272
                                                                                        jmp   n6_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n17_match_alternate_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_end_α
n3_match_sequence_β:
                                                                                        jmp   n16_match_lit_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx32_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_9
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
.Lx32_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx32_1:
                        test             rax, rax
                                                                                        je    .Lx32_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx32_3]
                        lea              rdx, [rip + .Lx32_4]
                                                                                        jmp   rax
.Lx32_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx32_1
.Lx32_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx32_1
.Lx32_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx32_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                        add              rsp, 272
                                                                                        jmp   n6_statement_begin_α
n5_statement_end_β:
                        add              rsp, 272
                                                                                        jmp   n6_statement_begin_α
#=======================================================================================================================
#  OUTPUT = 'V1=' V1 ' V2=' V2
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_var_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "V1="
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V1
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_binop_α
n8_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_string_α
n9_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_binop_α
n10_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          " V2="
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_var_α
n11_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V2
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_binop_α
n12_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_assign_α
n13_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx44_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_end_α
n14_assign_β:
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 112
                                                                                        jmp   main_γ
n15_statement_end_β:
                        add              rsp, 112
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_alternate_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n17_match_alternate_β
                        add              r14d, 1
                                                                                        jmp   n4_match_end_α
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        lea              rax, [rip + .Lx50_21]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n21_match_assign_save_α
.Lx50_21:
                        lea              rax, [rip + .Lx50_19]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n18_match_assign_save_α
n17_match_alternate_s0:
                        lea              rax, [rip + .Lx50_40]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n17_match_alternate_as
n17_match_alternate_s1:
                        lea              rax, [rip + .Lx50_41]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n17_match_alternate_as
.Lx50_40:
                                                                                        jmp   n23_match_assign_cond_β
.Lx50_41:
                                                                                        jmp   n20_match_assign_cond_β
n17_match_alternate_as:
                                                                                        jmp   n16_match_lit_α
n17_match_alternate_β:
                        mov              rax, qword ptr [rsp + 120]
                                                                                        jmp   rax
n17_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rax, qword ptr [rsp + 128]
                                                                                        jmp   rax
.Lx50_19:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        lea              rdi, [rsp + 240]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n19_match_lit_α
n18_match_assign_save_β:
                        lea              rdi, [rsp + 240]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n18_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n18_match_assign_save_β
                        add              r14d, 1
                                                                                        jmp   n20_match_assign_cond_α
n19_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n18_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n17_match_alternate_s1
n20_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n19_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_save_α:
                        lea              rdi, [rsp + 176]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n22_match_lit_α
n21_match_assign_save_β:
                        lea              rdi, [rsp + 176]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n17_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n21_match_assign_save_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n21_match_assign_save_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98
                                                                                        jne   n21_match_assign_save_β
                        add              r14d, 2
                                                                                        jmp   n23_match_assign_cond_α
n22_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n21_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n17_match_alternate_s0
n23_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n22_match_lit_β
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
