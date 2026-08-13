                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_α:
proc_LBL__ROMAN_α_body:
#=======================================================================================================================
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                               jmp   n1_var_α
n0_statement_begin_β:                                               jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n2_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 240], rdi
                        mov              qword ptr [rsp + 248], rsi
                        mov              qword ptr [rsp + 104], rsp                     # old____
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
.Lx40_0:                mov              r14d, dword ptr [rsp + 0]; jmp   n3_match_rpos_α
n2_match_begin_β:       mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                 jg    .Lx40_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx40_1
                                                                    jmp   .Lx40_0
.Lx40_1:
n2_match_begin_af:      sub              r12, 24                                        # cas_mark
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
                        add              rsp, 16;                   jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n3_match_rpos_α:        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                 jne   n2_match_begin_β
                                                                    jmp   n4_match_assign_save_α
n3_match_rpos_β:                                                    jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n5_match_len_α
n4_match_assign_save_β: add              rsp, 16;                   jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_len_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                 jle   .Lx44_240
                        add              rsp, 16;                   jmp   n2_match_begin_β
.Lx44_240:              add              r14d, 1;                   jmp   n6_match_assign_cond_α
n5_match_len_β:         sub              r14d, 1
                        add              rsp, 16;                   jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_cond_α: mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n7_match_end_α
n6_match_assign_cond_β: sub              r12, 24;                   jmp   n5_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_end_α:         mov              r8, r12
.Lx48_9:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx48_9
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 112], eax
                        mov              qword ptr [rsp + 136], r14
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx48_5:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx48_5
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
.Lx48_1:                test             rax, rax;                  je    .Lx48_2
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
                        lea              rdx, [rip + .Lx48_4];      jmp   rax
.Lx48_3:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx48_1
.Lx48_4:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx48_1
.Lx48_2:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx48_10:               sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx48_10
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n9_match_replace_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_match_replace_α:     mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, dword ptr [rsp + 80]
                        mov              r8, qword ptr [rsp + 104]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx51_1
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "N"
.Lx51_1:                                                            jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                   jmp   n11_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:                                              jmp   n12_statement_end_α
n11_statement_begin_β:                                              jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:                                                jmp   n13_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:                                              jmp   n14_lit_string_α
n13_statement_begin_β:                                              jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n15_var_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # UNITS
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n16_assign_α
n15_var_β:              add              rsp, 16
                        add              rsp, 16;                   jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx62_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n17_match_begin_α
n16_assign_β:                                                       jmp   n15_var_β
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n17_match_begin_α:      mov              rdi, qword ptr [rsp + 16]                      # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rsp                     # old____
                        mov              qword ptr [rsp + 320], r13                     # outer_Σ
                        mov              qword ptr [rsp + 328], r14                     # outer_δ
                        mov              qword ptr [rsp + 336], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 344], rax                     # cap_gen
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
                        mov              qword ptr [rsp + 288], rsp                     # zls2_mark
                        mov              dword ptr [rsp + 272], 0                       # start_δ
.Lx64_0:                mov              r14d, dword ptr [rsp + 272]; jmp   n18_match_defer_α
n17_match_begin_β:      add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, r15d;                 jg    .Lx64_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                    jne   .Lx64_1
                                                                    jmp   .Lx64_0
.Lx64_1:
n17_match_begin_af:     sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rsp + 288]
                        mov              r13, qword ptr [rsp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 328]                     # outer_δ
                        mov              r15, qword ptr [rsp + 336]                     # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 344]                     # cap_gen
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_ctx_restore@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n16_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_defer_α:      lea              rdi, [rip + .S1]
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
                        test             rax, rax;                  jz    .Lx65_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx65_4]
                        lea              r11, [rip + .Lx65_5];      jmp   rax
.Lx65_4:                                                            jmp   n19_match_assign_save_α
.Lx65_5:                                                            jmp   n17_match_begin_β
.Lx65_0:                push             r14
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
.Lx65_2:                test             rax, rax;                  je    .Lx65_3
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
                        lea              rcx, [rip + .Lx65_7]
                        lea              rdx, [rip + .Lx65_8];      jmp   rax
.Lx65_7:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx65_2
.Lx65_8:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx65_2
.Lx65_3:                add              rsp, 8
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
                        test             eax, eax;                  js    n17_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx65_6]
                        sub              rsp, 8
                        push             rax;                       jmp   n19_match_assign_save_α
.Lx65_6:                add              rsp, 16;                   jmp   n17_match_begin_β
n18_match_defer_β:                                                  jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d; jmp   n20_match_break_α
n19_match_assign_save_β: add              rsp, 16;                  jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_break_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lx69_0:                cmp              ecx, r15d;                 jl    .Lx69_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n17_match_begin_β
.Lx69_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                   je    .Lx69_1
                        add              ecx, 1;                    jmp   .Lx69_0
.Lx69_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                 jmp   n21_match_assign_cond_α
n20_match_break_β:      mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                   jmp   n22_match_end_α
n21_match_assign_cond_β: sub              r12, 24;                  jmp   n20_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_end_α:        mov              r8, r12
.Lx73_9:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx73_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx73_5:                sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax;                  jne   .Lx73_5
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
.Lx73_1:                test             rax, rax;                  je    .Lx73_2
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
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4];      jmp   rax
.Lx73_3:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx73_1
.Lx73_4:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   .Lx73_1
.Lx73_2:                mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
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
.Lx73_10:               sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax;                  jne   .Lx73_10
                        mov              r13, qword ptr [rsp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 328]                     # outer_δ
                        mov              r15, qword ptr [rsp + 336]                     # outer_Δ
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 32;                   jmp   n24_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:                                              jmp   n25_statement_end_α
n24_statement_begin_β:                                              jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:                                                jmp   n26_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:                                              jmp   n27_var_α
n26_statement_begin_β:                                              jmp   FRETURN
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]                       # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n28_call_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx84_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + ROMAN_alpha];  jmp   rax
.Lx84_2:                mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16;                   jmp   n26_statement_begin_β
.Lx84_240:                                                          jmp   n29_lit_string_α
n28_call_β:                                                         jmp   n26_statement_begin_β
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n30_lit_string_α
n29_lit_string_β:       add              rsp, 16
                        add              rsp, 32;                   jmp   n26_statement_begin_β
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n31_call_α
n30_lit_string_β:       add              rsp, 16;                   jmp   n29_lit_string_β
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
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
.Lrkfnzd88:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]
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
                        cmp              eax, 104;                  jne   .Lx87_240
                        add              rsp, 16;                   jmp   n30_lit_string_β
.Lx87_240:              mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n32_var_α
n31_call_β:             add              rsp, 16;                   jmp   n30_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]                       # UNITS
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n33_binop_α
n32_var_β:              add              rsp, 32;                   jmp   n30_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            sub              rsp, 16
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n34_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # ROMAN
                        mov              qword ptr [r9 + 8], rdx;   jmp   n35_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 112;                  jmp   RETURN
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
proc_LBL__TEST_α:
proc_LBL__TEST_α_body:
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:                                              jmp   n95_var_α
n94_statement_begin_β:                                              jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n97_binop_α
n96_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                   jmp   n94_statement_begin_β
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          " -> "
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n98_var_α
n97_binop_β:            add              rsp, 16;                   jmp   n96_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n99_call_α
n98_var_β:              add              rsp, 16;                   jmp   n97_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # var
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx123_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + ROMAN_alpha];  jmp   rax
.Lx123_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx123_240
                        add              rsp, 16;                   jmp   n98_var_β
.Lx123_240:                                                         jmp   n100_binop_α
n99_call_β:                                                         jmp   n98_var_β
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n100_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]                      # call
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n101_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_SET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n102_statement_end_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 96;                   jmp   n103_statement_begin_α
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                             jmp   n104_var_α
n103_statement_begin_β:                                             jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # J
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n106_coerce_numeric_α
n105_var_β:             add              rsp, 16
                        add              rsp, 16;                   jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5;                    je    .Lx133_1
                        cmp              eax, 3;                    jne   .Lx133_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                    jne   .Lx133_0
.Lx133_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax;  jmp   n107_coerce_numeric_α
.Lx133_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n107_coerce_numeric_α
n106_coerce_numeric_β:  add              rsp, 16;                   jmp   n105_var_β
#-----------------------------------------------------------------------------------------------------------------------
n107_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5;                    je    .Lx135_1
                        cmp              eax, 3;                    jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                    jne   .Lx135_0
.Lx135_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax;  jmp   n108_cmp_test_α
.Lx135_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n108_cmp_test_α
n107_coerce_numeric_β:  add              rsp, 16;                   jmp   n106_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n108_cmp_test_α:        sub              rsp, 16
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
                        test             eax, eax;                  je    .Lx137_240
                        add              rsp, 16;                   jmp   n107_coerce_numeric_β
.Lx137_240:                                                         jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 80;                   jmp   RETURN
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                             jmp   n111_var_α
n110_statement_begin_β:                                             jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]                       # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx;  jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n113_binop_α
n112_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n110_statement_begin_β
.Lx143_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                  jne   .Lx144_240
                        add              rsp, 16;                   jmp   n112_lit_integer_β
.Lx144_240:             mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # I
                        mov              qword ptr [r9 + 72], rdx;  jmp   n115_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   add              rsp, 48;                   jmp   n94_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_β:
                                                                    jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_ω:
                                                                    jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n148_save_restore_α:                                                jmp   n149_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n149_goto_deferred_α:   lea              rax, [rip + proc_LBL__ROMAN_α]; jmp   rax
                                                                    jmp   n150_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n150_save_restore_α:
ROMAN_alpha:            mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx156_2
                        mov              eax, 16
.Lx156_2:               sub              rsp, 80
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 32]                       # UNITS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 0]                        # ROMAN
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        mov              qword ptr [rsp + 48], rcx
                        cmp              rcx, 0;                    jbe   .Lx156_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 16]                       # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [r8 + 56], rdx;  jmp   .Lx156_41
.Lx156_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx156_41:              lea              r10, [rip + ROMAN_gamma]
                        lea              r11, [rip + ROMAN_omega]
                        lea              rax, [rip + proc_LBL__ROMAN_α]; jmp   rax
ROMAN_gamma:            mov              rdi, qword ptr [r9 + 0]                        # ROMAN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 48]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx156_75
                        mov              eax, 16
.Lx156_75:              lea              r8, [rsp + 64]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx156_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 16], rax                       # N
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 24], rax;  jmp   .Lx156_110
.Lx156_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 24], rax
.Lx156_110:             mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              eax, 112
                        cmp              rcx, 1;                    jbe   .Lx156_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 96
.Lx156_3:               mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
ROMAN_omega:            mov              rcx, qword ptr [rsp + 48]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1;                    jbe   .Lx156_145
                        mov              eax, 16
.Lx156_145:             lea              r8, [rsp + 64]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax                        # ROMAN
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0;                    jbe   .Lx156_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 16], rax                       # N
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 24], rax;  jmp   .Lx156_180
.Lx156_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 24], rax
.Lx156_180:             mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              eax, 112
                        cmp              rcx, 1;                    jbe   .Lx156_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 96
.Lx156_4:               mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
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
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_TEST_α
proc_TEST_α:
proc_TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n157_save_restore_α:                                                jmp   n158_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n158_goto_deferred_α:   lea              rax, [rip + proc_LBL__TEST_α]; jmp   rax
                                                                    jmp   n159_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n159_save_restore_α:
TEST_alpha:             mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 32
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 2;                    jbe   .Lx165_2
                        mov              eax, 32
.Lx165_2:               sub              rsp, 80
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 48]                       # TEST
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0;                    jbe   .Lx165_10
                        mov              rax, qword ptr [r8 + 64]
                        mov              rdx, qword ptr [r9 + 64]                       # I
                        mov              qword ptr [r9 + 64], rax
                        mov              qword ptr [r8 + 64], rdx
                        mov              rax, qword ptr [r8 + 72]
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [r9 + 72], rax
                        mov              qword ptr [r8 + 72], rdx;  jmp   .Lx165_41
.Lx165_10:              mov              rax, qword ptr [r9 + 64]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
.Lx165_41:              cmp              rcx, 1;                    jbe   .Lx165_11
                        mov              rax, qword ptr [r8 + 80]
                        mov              rdx, qword ptr [r9 + 80]                       # J
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 80], rdx
                        mov              rax, qword ptr [r8 + 88]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 88], rdx;  jmp   .Lx165_42
.Lx165_11:              mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 16], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 24], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx165_42:              lea              r10, [rip + TEST_gamma]
                        lea              r11, [rip + TEST_omega]
                        lea              rax, [rip + proc_LBL__TEST_α]; jmp   rax
TEST_gamma:             mov              rdi, qword ptr [r9 + 48]                       # TEST
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 2;                    jbe   .Lx165_75
                        mov              eax, 32
.Lx165_75:              lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rcx, 0;                    jbe   .Lx165_80
                        mov              rax, qword ptr [r8 + 64]
                        mov              qword ptr [r9 + 64], rax                       # I
                        mov              rax, qword ptr [r8 + 72]
                        mov              qword ptr [r9 + 72], rax;  jmp   .Lx165_110
.Lx165_80:              mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 72], rax
.Lx165_110:             cmp              rcx, 1;                    jbe   .Lx165_81
                        mov              rax, qword ptr [r8 + 80]
                        mov              qword ptr [r9 + 80], rax                       # J
                        mov              rax, qword ptr [r8 + 88]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx165_111
.Lx165_81:              mov              rax, qword ptr [r8 + 16]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 24]
                        mov              qword ptr [r9 + 88], rax
.Lx165_111:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 112
                        cmp              rcx, 2;                    jbe   .Lx165_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx165_3:               mov              rcx, qword ptr [r8 + 48]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi;                  jmp   rcx
TEST_omega:             mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 2;                    jbe   .Lx165_145
                        mov              eax, 32
.Lx165_145:             lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax                       # TEST
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rcx, 0;                    jbe   .Lx165_150
                        mov              rax, qword ptr [r8 + 64]
                        mov              qword ptr [r9 + 64], rax                       # I
                        mov              rax, qword ptr [r8 + 72]
                        mov              qword ptr [r9 + 72], rax;  jmp   .Lx165_180
.Lx165_150:             mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 72], rax
.Lx165_180:             cmp              rcx, 1;                    jbe   .Lx165_151
                        mov              rax, qword ptr [r8 + 80]
                        mov              qword ptr [r9 + 80], rax                       # J
                        mov              rax, qword ptr [r8 + 88]
                        mov              qword ptr [r9 + 88], rax;  jmp   .Lx165_181
.Lx165_151:             mov              rax, qword ptr [r8 + 16]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 24]
                        mov              qword ptr [r9 + 88], rax
.Lx165_181:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 112
                        cmp              rcx, 2;                    jbe   .Lx165_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx165_4:               mov              rcx, qword ptr [r8 + 56]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx;                  jmp   rcx
                                                                    jmp   proc_TEST_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_β:
                                                                    jmp   proc_TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_γ:
                                                                    jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_ω:
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
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__TEST"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__TEST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "UNITS"
.Lgvan3:                .string          "TEST"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "J"
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
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α:                                             jmp   n167_statement_end_α
n166_statement_begin_β:                                             jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:                                               jmp   n168_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:                                             jmp   n169_func_activate_α
n168_statement_begin_β:                                             jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_func_activate_α:   mov              rdi, qword ptr [rip + .Lx213_0]
                        mov              rsi, qword ptr [rip + .Lx213_1]
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
                        mov              r11,  qword ptr [r11 + 64]; jmp   n170_statement_end_α
n169_func_activate_β:                                               jmp   n168_statement_begin_β
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "ROMAN"
.Lx213_1:               .quad            .Lx213_1_s
.Lx213_1_s:             .string          "N,UNITS"
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:                                               jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:                                             jmp   n172_statement_end_α
n171_statement_begin_β:                                             jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:                                               jmp   n173_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:                                             jmp   n174_statement_end_α
n173_statement_begin_β:                                             jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:                                               jmp   n175_statement_begin_α
#=======================================================================================================================
# 	DEFINE("TEST(I,J)")				:(TEST_END)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:                                             jmp   n176_func_activate_α
n175_statement_begin_β:                                             jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_func_activate_α:   mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              rsi, qword ptr [rip + .Lx227_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + proc_TEST_α]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_define_site@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]; jmp   n177_statement_end_α
n176_func_activate_β:                                               jmp   n175_statement_begin_β
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "TEST"
.Lx227_1:               .quad            .Lx227_1_s
.Lx227_1_s:             .string          "I,J"
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:                                               jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:                                             jmp   n179_statement_end_α
n178_statement_begin_β:                                             jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:                                               jmp   n180_statement_begin_α
#=======================================================================================================================
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α:                                             jmp   n181_lit_integer_α
n180_statement_begin_β:                                             jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n182_lit_integer_α
.Lx236_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n183_call_α
n182_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n180_statement_begin_β
.Lx237_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 96]                      # lit_integer
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              eax, 2
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx239_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + TEST_alpha];   jmp   rax
.Lx239_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx239_240
                        add              rsp, 16;                   jmp   n182_lit_integer_β
.Lx239_240:                                                         jmp   n184_statement_end_α
n183_call_β:                                                        jmp   n182_lit_integer_β
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   add              rsp, 48;                   jmp   n185_statement_begin_α
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α:                                             jmp   n186_lit_integer_α
n185_statement_begin_β:                                             jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n187_lit_integer_α
.Lx244_0:               .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n188_call_α
n187_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n185_statement_begin_β
.Lx245_0:               .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 96]                      # lit_integer
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              eax, 2
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx247_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + TEST_alpha];   jmp   rax
.Lx247_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx247_240
                        add              rsp, 16;                   jmp   n187_lit_integer_β
.Lx247_240:                                                         jmp   n189_statement_end_α
n188_call_β:                                                        jmp   n187_lit_integer_β
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 48;                   jmp   n190_statement_begin_α
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:                                             jmp   n191_lit_integer_α
n190_statement_begin_β:                                             jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n192_lit_integer_α
.Lx252_0:               .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n193_call_α
n192_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n190_statement_begin_β
.Lx253_0:               .quad            520
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 96]                      # lit_integer
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              eax, 2
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx255_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + TEST_alpha];   jmp   rax
.Lx255_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx255_240
                        add              rsp, 16;                   jmp   n192_lit_integer_β
.Lx255_240:                                                         jmp   n194_statement_end_α
n193_call_β:                                                        jmp   n192_lit_integer_β
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   add              rsp, 48;                   jmp   n195_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:                                             jmp   n196_lit_integer_α
n195_statement_begin_β:                                             jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n197_lit_integer_α
.Lx260_0:               .quad            1900
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;  jmp   n198_call_α
n197_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                   jmp   n195_statement_begin_β
.Lx261_0:               .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        sub              rsp, 64
                        mov              rax, qword ptr [rsp + 96]                      # lit_integer
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              eax, 2
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx263_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + TEST_alpha];   jmp   rax
.Lx263_2:               mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                  jne   .Lx263_240
                        add              rsp, 16;                   jmp   n197_lit_integer_β
.Lx263_240:                                                         jmp   n199_statement_end_α
n198_call_β:                                                        jmp   n197_lit_integer_β
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   add              rsp, 48;                   jmp   n200_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:                                             jmp   n201_statement_end_α
n200_statement_begin_β:                                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:                                               jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n202_goto_α:                                                        jmp   n171_statement_begin_α
n202_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n203_goto_α:                                                        jmp   n178_statement_begin_α
n203_goto_β:                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 lea              rdi, [rip + .S2]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                lea              rdi, [rip + .S3]
                        call             rt_bomb@PLT
                        ud2
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
.S0:                    .string          "UNITS"
.S1:                    .string          "PATV$0"
.S2:                    .string          "BOMB-RETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S3:                    .string          "BOMB-FRETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
                        .text
                        .section         .note.GNU-stack,"",@progbits
