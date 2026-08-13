                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_α:
proc_LBL__ROMAN_α_body:
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n34_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 448], rdi
                        mov              qword ptr [rsp + 456], rsi
                        mov              qword ptr [rsp + 296], rsp                     # old____
                        mov              qword ptr [rsp + 48], r13                      # outer_Σ
                        mov              qword ptr [rsp + 56], r14                      # outer_δ
                        mov              qword ptr [rsp + 64], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 72], rax                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx39_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_lit_integer_α
n2_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx39_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx39_1
                                                                                        jmp   .Lx39_0
.Lx39_1:
n2_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 72]                      # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 16                                        # old____
                                                                                        jmp   n34_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_match_rpos_α
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx41_240
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
.Lx41_240:
                                                                                        jmp   n5_match_assign_save_α
n4_match_rpos_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n6_match_len_α
n5_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx44_240
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
.Lx44_240:
                        add              r14d, 1
                                                                                        jmp   n7_match_assign_cond_α
n6_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n8_match_end_α
n7_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n6_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              r8, r12
.Lx48_9:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_9
                        mov              eax, dword ptr [rsp + 32]
                        mov              dword ptr [rsp + 320], eax
                        mov              qword ptr [rsp + 344], r14
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx48_5:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx48_1:
                        test             rax, rax
                                                                                        je    .Lx48_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx48_3]
                        lea              rdx, [rip + .Lx48_4]
                                                                                        jmp   rax
.Lx48_3:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx48_1
.Lx48_4:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx48_1
.Lx48_2:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx48_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx48_10
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_match_replace_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              ecx, dword ptr [rsp + 272]
                        mov              r8, qword ptr [rsp + 296]
                        lea              r9, [rsp + 0]                                  # lit_string
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_replace@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx51_1
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "N"
.Lx51_1:
                                                                                        jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   n33_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_var_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n33_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n16_match_begin_α
n15_assign_β:
                                                                                        jmp   n14_var_β
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n16_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rsp                     # old____
                        mov              qword ptr [rsp + 528], r13                     # outer_Σ
                        mov              qword ptr [rsp + 536], r14                     # outer_δ
                        mov              qword ptr [rsp + 544], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 552], rax                     # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              qword ptr [rsp + 496], rsp                     # zls2_mark
                        mov              dword ptr [rsp + 480], 0                       # start_δ
.Lx60_0:
                        mov              r14d, dword ptr [rsp + 480]
                                                                                        jmp   n17_match_defer_α
n16_match_begin_β:
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, r15d
                                                                                        jg    .Lx60_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx60_1
                                                                                        jmp   .Lx60_0
.Lx60_1:
n16_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rsp + 496]
                        mov              r13, qword ptr [rsp + 528]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 536]                     # outer_δ
                        mov              r15, qword ptr [rsp + 544]                     # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 552]                     # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n15_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_defer_α:
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax
                                                                                        jz    .Lx61_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx61_4]
                        lea              r11, [rip + .Lx61_5]
                                                                                        jmp   rax
.Lx61_4:
                                                                                        jmp   n18_match_assign_save_α
.Lx61_5:
                                                                                        jmp   n16_match_begin_β
.Lx61_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx61_2:
                        test             rax, rax
                                                                                        je    .Lx61_3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx61_7]
                        lea              rdx, [rip + .Lx61_8]
                                                                                        jmp   rax
.Lx61_7:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx61_2
.Lx61_8:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx61_2
.Lx61_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_defer_close@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax
                                                                                        js    n16_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx61_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_assign_save_α
.Lx61_6:
                        add              rsp, 16
                                                                                        jmp   n16_match_begin_β
n17_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n19_match_break_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n16_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx65_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx65_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_begin_β
.Lx65_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx65_1
                        add              ecx, 1
                                                                                        jmp   .Lx65_0
.Lx65_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n20_match_assign_cond_α
n19_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n16_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n19_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_end_α:
                        mov              r8, r12
.Lx69_9:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx69_5:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_5
                        lea              rdi, [r8 + 24]
                        mov              rdx, r13
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_end_ok_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
.Lx69_1:
                        test             rax, rax
                                                                                        je    .Lx69_2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_proc_open_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4]
                                                                                        jmp   rax
.Lx69_3:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx69_1
.Lx69_4:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_dcap_step@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx69_1
.Lx69_2:
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx69_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx69_10
                        mov              r13, qword ptr [rsp + 528]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 536]                     # outer_δ
                        mov              r15, qword ptr [rsp + 544]                     # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n23_statement_begin_α
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:
                                                                                        jmp   n24_var_α
n23_statement_begin_β:
                                                                                        jmp   n33_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n25_call_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        lea              r10, [rip + .Lx76_6]
                        lea              r11, [rip + .Lx76_7]
                                                                                        jmp   ROMAN_shim
.Lx76_6:
                        mov              rax, qword ptr [r9 + 0]                        # ROMAN
                        mov              rdx, qword ptr [r9 + 8]
                                                                                        jmp   .Lx76_2
.Lx76_7:
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   .Lx76_2
.Lx76_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx76_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_statement_begin_β
.Lx76_240:
                                                                                        jmp   n26_lit_string_α
n25_call_β:
                                                                                        jmp   n23_statement_begin_β
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_lit_string_α
n26_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n23_statement_begin_β
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_call_α
n27_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_β
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lrkfnzd80:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx79_240
                        add              rsp, 16
                                                                                        jmp   n27_lit_string_β
.Lx79_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_var_α
n28_call_β:
                        add              rsp, 16
                                                                                        jmp   n27_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # T
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n30_binop_α
n29_var_β:
                        add              rsp, 32
                                                                                        jmp   n27_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n31_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # ROMAN
                        mov              qword ptr [r9 + 8], rdx
                                                                                        jmp   n32_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:
                                                                                        jmp   n34_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n33_save_restore_α:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
n34_save_restore_α:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n90_save_restore_α:
                                                                                        jmp   n91_goto_deferred_α
ROMAN_shim:
                        lea              r8, [rip + g_call_args]
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 16], rax                       # N
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 24], rax
                                                                                        jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__ROMAN_α]
                                                                                        jmp   rax
                                                                                        jmp   proc_ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "T1"
.Lgvan4:                .string          "R"
.Lgvan5:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
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
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:
                                                                                        jmp   n97_lit_string_α
n96_statement_begin_β:
                                                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_lit_integer_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_call_α
n98_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n96_statement_begin_β
.Lx159_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd161:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd161]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                                                                                        jne   .Lx160_240
                        add              rsp, 16
                                                                                        jmp   n98_lit_integer_β
.Lx160_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_statement_end_α
n99_call_β:
                        add              rsp, 16
                                                                                        jmp   n98_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n101_statement_begin_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:
                                                                                        jmp   n102_lit_string_α
n101_statement_begin_β:
                                                                                        jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n103_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n104_call_α
n103_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n101_statement_begin_β
.Lx167_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd169:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd169]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                                                                                        jne   .Lx168_240
                        add              rsp, 16
                                                                                        jmp   n103_lit_integer_β
.Lx168_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n105_statement_end_α
n104_call_β:
                        add              rsp, 16
                                                                                        jmp   n103_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n106_statement_begin_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α:
                                                                                        jmp   n107_func_activate_α
n106_statement_begin_β:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              rsi, qword ptr [rip + .Lx175_1]
                        mov              edx, 2
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_ROMAN_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n108_statement_end_α
n107_func_activate_β:
                                                                                        jmp   n106_statement_begin_β
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "ROMAN"
.Lx175_1:
                        .quad            .Lx175_1_s
.Lx175_1_s:
                        .string          "N,T"
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_statement_end_α
n109_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_call_α
n111_statement_begin_β:
                                                                                        jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd185:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd185]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx184_240
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_β
.Lx184_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_assign_α
n112_call_β:
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax                       # T1
                        mov              qword ptr [r9 + 56], rdx
                                                                                        jmp   n114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n115_statement_begin_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:
                                                                                        jmp   n116_lit_integer_α
n115_statement_begin_β:
                                                                                        jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_assign_α
.Lx191_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n117_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # N
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n118_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n119_statement_begin_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:
                                                                                        jmp   n120_lit_string_α
n119_statement_begin_β:
                                                                                        jmp   n124_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n121_call_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx
                        lea              r10, [rip + .Lx199_6]
                        lea              r11, [rip + .Lx199_7]
                                                                                        jmp   ROMAN_shim
.Lx199_6:
                        mov              rax, qword ptr [r9 + 0]                        # ROMAN
                        mov              rdx, qword ptr [r9 + 8]
                                                                                        jmp   .Lx199_2
.Lx199_7:
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   .Lx199_2
.Lx199_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx199_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n119_statement_begin_β
.Lx199_240:
                                                                                        jmp   n122_assign_α
n121_call_β:
                                                                                        jmp   n119_statement_begin_β
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # R
                        mov              qword ptr [r9 + 72], rdx
                                                                                        jmp   n123_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n124_statement_begin_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α:
                                                                                        jmp   n125_var_α
n124_statement_begin_β:
                                                                                        jmp   n136_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n127_coerce_numeric_α
n126_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n124_statement_begin_β
.Lx206_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n127_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx208_1
                        cmp              eax, 3
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n128_coerce_numeric_α
.Lx208_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 147
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n128_coerce_numeric_α
n127_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n126_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n128_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx210_1
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n129_cmp_test_α
.Lx210_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 148
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n129_cmp_test_α
n128_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n127_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n129_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cmp_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             eax, eax
                                                                                        js    .Lx212_240
                        add              rsp, 16
                                                                                        jmp   n128_coerce_numeric_β
.Lx212_240:
                        mov              qword ptr [rsp + 0], 0                         # result
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n130_var_α
n129_cmp_test_β:
                        add              rsp, 16
                                                                                        jmp   n128_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n131_lit_integer_α
n130_var_β:
                        add              rsp, 16
                                                                                        jmp   n129_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n132_binop_α
n131_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n130_var_β
.Lx214_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx215_240
                        add              rsp, 16
                                                                                        jmp   n131_lit_integer_β
.Lx215_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n133_binop_α
n132_binop_β:
                        add              rsp, 16
                                                                                        jmp   n131_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n134_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # N
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n135_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n119_statement_begin_α
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α:
                                                                                        jmp   n137_call_α
n136_statement_begin_β:
                                                                                        jmp   n140_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd223:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd223]
                        xor              esi, esi
                        mov              edx, 0
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_call_arr@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx222_240
                        add              rsp, 16
                                                                                        jmp   n136_statement_begin_β
.Lx222_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_assign_α
n137_call_β:
                        add              rsp, 16
                                                                                        jmp   n136_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # T2
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n139_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n140_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α:
                                                                                        jmp   n141_lit_string_α
n140_statement_begin_β:
                                                                                        jmp   n146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n142_var_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # R
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n143_binop_α
n142_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n144_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx232_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n145_statement_end_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n146_statement_begin_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:
                                                                                        jmp   n147_lit_string_α
n146_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n148_var_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # T2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n149_var_α
n148_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # T1
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_binop_α
n149_var_β:
                        add              rsp, 16
                                                                                        jmp   n148_var_β
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx240_240
                        add              rsp, 16
                                                                                        jmp   n149_var_β
.Lx240_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n151_binop_α
n150_binop_β:
                        add              rsp, 16
                                                                                        jmp   n149_var_β
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n153_statement_end_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n154_goto_α:
                                                                                        jmp   n109_statement_begin_α
n154_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_goto_α:
                                                                                        jmp   n119_statement_begin_α
n155_goto_β:
                                                                                        jmp   main_ω
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
.S0:                    .string          "T"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
