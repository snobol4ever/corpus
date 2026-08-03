                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "t"
.Lgvan1:                .string          "V"
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
#         t = 'ab'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n3_var_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # t
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_statement_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_α:
                        add              rsp, 16
                                                                                        jmp   n3_var_α
n2_statement_β:
                        add              rsp, 16
                                                                                        jmp   n3_var_α
#=======================================================================================================================
#         t POS(0) LEN(1) . V ARBNO(LEN(1)) RPOS(0)             :S(YES)F(NO)
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # t
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_match_begin_α
n3_var_β:
                        add              rsp, 16
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_match_begin_α:
                        sub              rsp, 288
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
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              rdi, qword ptr [rsp + 288]                     # var
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 88], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 96], r13                      # outer_Σ
                        mov              qword ptr [rbp + 104], r14                     # outer_δ
                        mov              qword ptr [rbp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # cap_gen
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
.Lx33_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n5_match_sequence_α
n4_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx33_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx33_1
                                                                                        jmp   .Lx33_0
.Lx33_1:
                        mov              r10, qword ptr [1879048192]
.Lx33_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 304
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_match_sequence_α:
                                                                                        jmp   n20_lit_integer_α
n5_match_sequence_as:
                                                                                        jmp   n6_match_end_α
n5_match_sequence_β:
                                                                                        jmp   n14_match_rpos_β
n5_match_sequence_af:
                                                                                        jmp   n4_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx37_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_8
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
.Lx37_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx37_1:
                        test             rax, rax
                                                                                        je    .Lx37_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx37_3]
                        lea              rdx, [rip + .Lx37_4]
                                                                                        jmp   rax
.Lx37_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx37_1
.Lx37_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx37_1
.Lx37_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx37_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_α:
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 304
                                                                                        jmp   n8_lit_string_α
n7_statement_β:
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 304
                                                                                        jmp   n22_lit_string_α
#=======================================================================================================================
# YES     OUTPUT = 'capture-then-arbno ok V=' V                 :(END)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_var_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "capture-then-arbno ok V="
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # V
                        mov              rdx, qword ptr [1879052312]
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
                                                                                        jmp   n11_assign_α
n10_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx43_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_statement_α
n11_assign_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
n12_statement_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rsp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n14_match_rpos_α
n13_lit_integer_β:
                                                                                        jmp   n15_match_arbno_β
.Lx46_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n15_match_arbno_β
                                                                                        jmp   n6_match_end_α
n14_match_rpos_β:
                                                                                        jmp   n15_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_arbno_α:
                        sub              rsp, 336
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rax
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rax
                        mov              dword ptr [rsp + 304], r14d
                        mov              dword ptr [rsp + 308], r14d
                        mov              dword ptr [rsp + 312], 1
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n13_lit_integer_α
n15_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 308]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        sub              rsp, 336
                        mov              edx, 0
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], rdx
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rdx
                        mov              qword ptr [rsp + 48], rdx
                        mov              qword ptr [rsp + 56], rdx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rdx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rdx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rdx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rdx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rdx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rdx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rdx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rdx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rdx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rdx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rdx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rdx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rdx
                        mov              dword ptr [rsp + 304], r14d
                        mov              dword ptr [rsp + 308], r14d
                        mov              dword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rcx
                                                                                        jmp   n16_match_len_α
n15_match_arbno_as:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              r14d, eax
                                                                                        je    n16_match_len_β
                        mov              dword ptr [rsp + 308], r14d
                                                                                        jmp   n13_lit_integer_α
n15_match_arbno_af:
                        mov              eax, dword ptr [rsp + 312]
                        test             eax, eax
                                                                                        jnz   .Lx49_2
                        add              rsp, 336
                                                                                        jmp   n16_match_len_β
.Lx49_2:
                        mov              r14d, dword ptr [rsp + 304]
                        add              rsp, 336
                                                                                        jmp   n19_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n15_match_arbno_as
n16_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n18_match_len_α
n17_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n4_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx53_240
                        add              rsp, 16
                                                                                        jmp   n4_match_begin_β
.Lx53_240:
                        add              r14d, 1
                                                                                        jmp   n19_match_assign_cond_α
n18_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n4_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
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
                                                                                        jmp   n15_match_arbno_α
n19_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n18_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n21_match_pos_α
n20_lit_integer_β:
                                                                                        jmp   n4_match_begin_β
.Lx56_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n4_match_begin_β
                                                                                        jmp   n17_match_assign_save_α
n21_match_pos_β:
                                                                                        jmp   n4_match_begin_β
#=======================================================================================================================
# NO      OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
n22_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx59_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n24_statement_α
n23_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n24_statement_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n25_goto_α:
                                                                                        jmp   n8_lit_string_α
n25_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n26_goto_α:
                                                                                        jmp   n22_lit_string_α
n26_goto_β:
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
.S0:                    .string          "V"
                        .text
                        .section         .note.GNU-stack,"",@progbits
