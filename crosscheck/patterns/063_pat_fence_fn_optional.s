                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n0_statement_begin_β
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # digits
                        mov              qword ptr [r9 + 8], rdx
                                                                                        jmp   n3_statement_end_α
n2_assign_β:
                                                                                        jmp   n0_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
n3_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
n4_statement_begin_β:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_lit_integer_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_β
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_call_α
n6_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_β
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd41:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd41]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n6_lit_integer_β
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_statement_end_α
n7_call_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n9_statement_begin_α
n8_statement_end_β:
                        add              rsp, 48
                                                                                        jmp   n9_statement_begin_α
#=======================================================================================================================
#         X = '123abc'
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_lit_string_α
n9_statement_begin_β:
                                                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n9_statement_begin_β
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "123abc"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # X
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n12_statement_end_α
n11_assign_β:
                                                                                        jmp   n9_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
n12_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
#=======================================================================================================================
#         X  FENCE(SPAN(digits) | '') . N
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_var_α
n13_statement_begin_β:
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # X
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_var_α
n14_var_β:
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]                        # digits
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_coerce_string_α
n15_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n17_match_begin_α
n16_coerce_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_var_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_begin_α:
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rbp + 384], rdi
                        mov              qword ptr [rbp + 392], rsi
                        mov              qword ptr [rbp + 208], r13                     # outer_Σ
                        mov              qword ptr [rbp + 216], r14                     # outer_δ
                        mov              qword ptr [rbp + 224], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 232], rax                     # cap_gen
                        mov              qword ptr [rbp + 200], rbp                     # old_rbp
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 176], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 160], 0                       # start_δ
.Lx57_0:
                        mov              r14d, dword ptr [rbp + 160]
                                                                                        jmp   n18_match_assign_save_α
n17_match_begin_β:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, r15d
                                                                                        jg    .Lx57_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx57_1
                                                                                        jmp   .Lx57_0
.Lx57_1:
n17_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 176]
                        mov              r13, qword ptr [rbp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 216]                     # outer_δ
                        mov              r15, qword ptr [rbp + 224]                     # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 232]                     # cap_gen
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                                                                                        jmp   n16_coerce_string_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n19_match_fence1_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_fence1_α:
                        mov              qword ptr [rbp + 288], rsp
                        mov              qword ptr [rbp + 320], rsp
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
                                                                                        jmp   n23_match_alternate_α
n19_match_fence1_as:
                        mov              rsp, rbp
                        pop              rbp
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n20_match_assign_cond_α
n19_match_fence1_af:
                        mov              rsp, rbp
                        pop              rbp
n19_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 320]
                                                                                        jmp   n18_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n21_match_end_α
n20_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n19_match_fence1_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_end_α:
                        mov              r10, r12
.Lx65_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_9
                        mov              rsp, qword ptr [rbp + 176]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx65_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx65_1:
                        test             rax, rax
                                                                                        je    .Lx65_2
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4]
                                                                                        jmp   rax
.Lx65_3:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx65_1
.Lx65_4:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx65_1
.Lx65_2:
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx65_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_10
                        mov              r13, qword ptr [rbp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 216]                     # outer_δ
                        mov              r15, qword ptr [rbp + 224]                     # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                                                                                        jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n26_statement_begin_α
n22_statement_end_β:
                        add              rsp, 64
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_match_alternate_α:
                        mov              dword ptr [rbp + 304], r14d
                        lea              rax, [rip + .Lx69_21]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n25_match_span_α
.Lx69_21:
                        lea              rax, [rip + .Lx69_19]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n24_match_lit_α
n23_match_alternate_s0:
                        lea              rax, [rip + .Lx69_40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n23_match_alternate_as
n23_match_alternate_s1:
                        lea              rax, [rip + .Lx69_41]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n23_match_alternate_as
.Lx69_40:
                                                                                        jmp   n25_match_span_β
.Lx69_41:
                                                                                        jmp   n24_match_lit_β
n23_match_alternate_as:
                                                                                        jmp   n19_match_fence1_as
n23_match_alternate_β:
                        mov              rax, qword ptr [rbp + 312]
                                                                                        jmp   rax
n23_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 304]
                        mov              rax, qword ptr [rbp + 320]
                                                                                        jmp   rax
.Lx69_19:
                                                                                        jmp   n19_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                                                                                        jmp   n23_match_alternate_s1
n24_match_lit_β:
                                                                                        jmp   n23_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_span_α:
                        mov              dword ptr [rbp + 336], 0
                        mov              r8, qword ptr [rbp + 360]
                        mov              r9d, dword ptr [rbp + 356]
.Lx73_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rbp + 336]
                        cmp              eax, r15d
                                                                                        jge   .Lx73_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx73_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx73_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx73_3
                        add              edx, 1
                                                                                        jmp   .Lx73_2
.Lx73_3:
                        add              dword ptr [rbp + 336], 1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        mov              eax, dword ptr [rbp + 336]
                        test             eax, eax
                                                                                        jle   n23_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rbp + 340], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n23_match_alternate_s0
n25_match_span_β:
                        mov              r14d, dword ptr [rbp + 340]
                                                                                        jmp   n23_match_alternate_af
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_var_α
n26_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # N
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
n27_var_β:
                        add              rsp, 16
                                                                                        jmp   n26_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [g_rtcc_block + 0], rax
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 8],  rcx
                        mov              qword ptr [rax + 16], rdx
                        mov              qword ptr [rax + 24], rsi
                        mov              qword ptr [rax + 32], rdi
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n29_statement_end_α
n28_assign_β:
                                                                                        jmp   n26_statement_begin_β
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n29_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
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
.S0:                    .string          "N"
                        .text
                        .section         .note.GNU-stack,"",@progbits
