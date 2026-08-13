                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_α:
proc_LBL__EMIT_α_body:
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_subscript_α
n2_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n0_statement_begin_β
.Lx24_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_β
.Lx25_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n4_deref_α
n3_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx26_240
                        add              rsp, 16
                                                                                        jmp   n3_subscript_β
.Lx26_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_call_α
n4_deref_β:
                        add              rsp, 16
                                                                                        jmp   n3_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx28_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx28_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx28_240
                        add              rsp, 16
                                                                                        jmp   n4_deref_β
.Lx28_240:
                                                                                        jmp   n6_assign_α
n5_call_β:
                                                                                        jmp   n4_deref_β
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx29_0]
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
                                                                                        jmp   n7_statement_end_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n8_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_lit_integer_α
n8_statement_begin_β:
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_assign_α
.Lx34_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_call_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd42:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd42]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx41_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_β
.Lx41_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_assign_α
n14_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax                        # EMIT
                        mov              qword ptr [r9 + 8], rdx
                                                                                        jmp   n16_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_call_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd48:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd48]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx47_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n20_save_restore_α
.Lx47_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_save_restore_α
n18_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n20_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n19_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_β:
                                                                                        jmp   proc_LBL__EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_α:
proc_LBL__PSH_α_body:
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:
                                                                                        jmp   n54_var_α
n53_statement_begin_β:
                                                                                        jmp   n59_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_binop_α
n55_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n53_statement_begin_β
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
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
                                                                                        jne   .Lx73_240
                        add              rsp, 16
                                                                                        jmp   n55_lit_integer_β
.Lx73_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n58_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n59_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:
                                                                                        jmp   n60_var_α
n59_statement_begin_β:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_subscript_α
n61_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n59_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx81_240
                        add              rsp, 16
                                                                                        jmp   n61_var_β
.Lx81_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n63_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax                       # PSH
                        mov              qword ptr [r9 + 24], rdx
                                                                                        jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_call_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd87:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd87]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx86_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n68_save_restore_α
.Lx86_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n67_save_restore_α
n66_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n68_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n67_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n68_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_β:
                                                                                        jmp   proc_LBL__PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_α:
proc_LBL__DRF_α_body:
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:
                                                                                        jmp   n93_var_α
n92_statement_begin_β:
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 504], rsp                     # old____
                        sub              rsp, 64                                        # stmt_base
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
.Lx118_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n95_lit_integer_α
n94_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx118_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx118_1
                                                                                        jmp   .Lx118_0
.Lx118_1:
n94_match_begin_af:
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
                        add              rsp, 64                                        # old____
                        add              rsp, 16
                                                                                        jmp   n109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n96_match_pos_α
.Lx119_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx120_240
                        add              rsp, 16
                                                                                        jmp   n94_match_begin_β
.Lx120_240:
                                                                                        jmp   n97_match_any_α
n96_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   n94_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n97_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n94_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n94_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n98_lit_integer_α
n97_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n94_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_match_rpos_α
.Lx123_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx124_240
                        add              rsp, 16
                                                                                        jmp   n97_match_any_β
.Lx124_240:
                                                                                        jmp   n100_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_match_end_α:
                        mov              r8, r12
.Lx126_9:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx126_5:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_5
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
.Lx126_1:
                        test             rax, rax
                                                                                        je    .Lx126_2
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
                        lea              rcx, [rip + .Lx126_3]
                        lea              rdx, [rip + .Lx126_4]
                                                                                        jmp   rax
.Lx126_3:
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
                                                                                        jmp   .Lx126_1
.Lx126_4:
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
                                                                                        jmp   .Lx126_1
.Lx126_2:
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
.Lx126_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_10
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
                                                                                        jmp   n101_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n102_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:
                                                                                        jmp   n103_var_α
n102_statement_begin_β:
                                                                                        jmp   n113_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n105_subscript_α
n104_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n102_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n105_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx133_240
                        add              rsp, 16
                                                                                        jmp   n104_var_β
.Lx133_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_deref_α
n105_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n104_var_β
#-----------------------------------------------------------------------------------------------------------------------
n106_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx134_240
                        add              rsp, 16
                                                                                        jmp   n105_subscript_β
.Lx134_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx
                                                                                        jmp   n108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:
                                                                                        jmp   n113_save_restore_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α:
                                                                                        jmp   n110_var_α
n109_statement_begin_β:
                                                                                        jmp   n113_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx
                                                                                        jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n113_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n113_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_β:
                                                                                        jmp   proc_LBL__DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_α:
proc_LBL__ADD_α_body:
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α:
                                                                                        jmp   n147_var_α
n146_statement_begin_β:
                                                                                        jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n149_subscript_α
n148_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n149_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                                                                                        jmp   n148_var_β
.Lx186_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_deref_α
n149_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n148_var_β
#-----------------------------------------------------------------------------------------------------------------------
n150_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx187_240
                        add              rsp, 16
                                                                                        jmp   n149_subscript_β
.Lx187_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n151_call_α
n150_deref_β:
                        add              rsp, 16
                                                                                        jmp   n149_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx189_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx189_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx189_240
                        add              rsp, 16
                                                                                        jmp   n150_deref_β
.Lx189_240:
                                                                                        jmp   n152_assign_α
n151_call_β:
                                                                                        jmp   n150_deref_β
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n153_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n154_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:
                                                                                        jmp   n155_var_α
n154_statement_begin_β:
                                                                                        jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n157_binop_α
n156_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n154_statement_begin_β
.Lx196_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx197_240
                        add              rsp, 16
                                                                                        jmp   n156_lit_integer_β
.Lx197_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n159_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n160_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α:
                                                                                        jmp   n161_var_α
n160_statement_begin_β:
                                                                                        jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n163_subscript_α
n162_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx205_240
                        add              rsp, 16
                                                                                        jmp   n162_var_β
.Lx205_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n164_var_α
n163_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n162_var_β
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_var_α
n164_var_β:
                        add              rsp, 16
                                                                                        jmp   n163_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n166_subscript_α
n165_var_β:
                        add              rsp, 16
                                                                                        jmp   n164_var_β
#-----------------------------------------------------------------------------------------------------------------------
n166_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx208_240
                        add              rsp, 16
                                                                                        jmp   n165_var_β
.Lx208_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n167_deref_α
n166_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n165_var_β
#-----------------------------------------------------------------------------------------------------------------------
n167_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx209_240
                        add              rsp, 16
                                                                                        jmp   n166_subscript_β
.Lx209_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n168_call_α
n167_deref_β:
                        add              rsp, 16
                                                                                        jmp   n166_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx211_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx211_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx211_240
                        add              rsp, 16
                                                                                        jmp   n167_deref_β
.Lx211_240:
                                                                                        jmp   n169_var_α
n168_call_β:
                                                                                        jmp   n167_deref_β
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n170_binop_α
n169_var_β:
                        add              rsp, 32
                                                                                        jmp   n167_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx213_240
                        add              rsp, 16
                                                                                        jmp   n169_var_β
.Lx213_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n171_assign_var_α
n170_binop_β:
                        add              rsp, 16
                                                                                        jmp   n169_var_β
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx214_240
                        add              rsp, 16
                                                                                        jmp   n170_binop_β
.Lx214_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n172_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_lit_string_α
n173_statement_begin_β:
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_call_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd221:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd221]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx220_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n173_statement_begin_β
.Lx220_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n176_assign_α
n175_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n173_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              qword ptr [r9 + 72], rdx
                                                                                        jmp   n177_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n179_call_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd227:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd227]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx226_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n181_save_restore_α
.Lx226_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n180_save_restore_α
n179_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n181_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n180_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n181_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_β:
                                                                                        jmp   proc_LBL__ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_α:
proc_LBL__SUB_α_body:
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_begin_α:
                                                                                        jmp   n233_var_α
n232_statement_begin_β:
                                                                                        jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n235_subscript_α
n234_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n232_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n235_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx272_240
                        add              rsp, 16
                                                                                        jmp   n234_var_β
.Lx272_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n236_deref_α
n235_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n234_var_β
#-----------------------------------------------------------------------------------------------------------------------
n236_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx273_240
                        add              rsp, 16
                                                                                        jmp   n235_subscript_β
.Lx273_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n237_call_α
n236_deref_β:
                        add              rsp, 16
                                                                                        jmp   n235_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx275_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx275_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx275_240
                        add              rsp, 16
                                                                                        jmp   n236_deref_β
.Lx275_240:
                                                                                        jmp   n238_assign_α
n237_call_β:
                                                                                        jmp   n236_deref_β
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n239_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n240_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α:
                                                                                        jmp   n241_var_α
n240_statement_begin_β:
                                                                                        jmp   n246_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n243_binop_α
n242_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n240_statement_begin_β
.Lx282_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx283_240
                        add              rsp, 16
                                                                                        jmp   n242_lit_integer_β
.Lx283_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n245_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n246_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_begin_α:
                                                                                        jmp   n247_var_α
n246_statement_begin_β:
                                                                                        jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n249_subscript_α
n248_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n246_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx291_240
                        add              rsp, 16
                                                                                        jmp   n248_var_β
.Lx291_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n250_var_α
n249_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n248_var_β
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n251_var_α
n250_var_β:
                        add              rsp, 16
                                                                                        jmp   n249_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_subscript_α
n251_var_β:
                        add              rsp, 16
                                                                                        jmp   n250_var_β
#-----------------------------------------------------------------------------------------------------------------------
n252_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx294_240
                        add              rsp, 16
                                                                                        jmp   n251_var_β
.Lx294_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_deref_α
n252_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n251_var_β
#-----------------------------------------------------------------------------------------------------------------------
n253_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx295_240
                        add              rsp, 16
                                                                                        jmp   n252_subscript_β
.Lx295_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n254_call_α
n253_deref_β:
                        add              rsp, 16
                                                                                        jmp   n252_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx297_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx297_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx297_240
                        add              rsp, 16
                                                                                        jmp   n253_deref_β
.Lx297_240:
                                                                                        jmp   n255_var_α
n254_call_β:
                                                                                        jmp   n253_deref_β
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n256_binop_α
n255_var_β:
                        add              rsp, 32
                                                                                        jmp   n253_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx299_240
                        add              rsp, 16
                                                                                        jmp   n255_var_β
.Lx299_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n257_assign_var_α
n256_binop_β:
                        add              rsp, 16
                                                                                        jmp   n255_var_β
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx300_240
                        add              rsp, 16
                                                                                        jmp   n256_binop_β
.Lx300_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n258_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n259_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α:
                                                                                        jmp   n260_lit_string_α
n259_statement_begin_β:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n261_call_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd307:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd307]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx306_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n259_statement_begin_β
.Lx306_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n262_assign_α
n261_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              qword ptr [r9 + 104], rdx
                                                                                        jmp   n263_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:
                                                                                        jmp   n264_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n265_call_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd313:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd313]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx312_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n267_save_restore_α
.Lx312_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n266_save_restore_α
n265_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n267_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n266_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n267_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_β:
                                                                                        jmp   proc_LBL__SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_α:
proc_LBL__MUL_α_body:
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n318_statement_begin_α:
                                                                                        jmp   n319_var_α
n318_statement_begin_β:
                                                                                        jmp   n326_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n321_subscript_α
n320_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n318_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n321_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx358_240
                        add              rsp, 16
                                                                                        jmp   n320_var_β
.Lx358_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n322_deref_α
n321_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n320_var_β
#-----------------------------------------------------------------------------------------------------------------------
n322_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx359_240
                        add              rsp, 16
                                                                                        jmp   n321_subscript_β
.Lx359_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n323_call_α
n322_deref_β:
                        add              rsp, 16
                                                                                        jmp   n321_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx361_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx361_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx361_240
                        add              rsp, 16
                                                                                        jmp   n322_deref_β
.Lx361_240:
                                                                                        jmp   n324_assign_α
n323_call_β:
                                                                                        jmp   n322_deref_β
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n325_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n325_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n326_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n326_statement_begin_α:
                                                                                        jmp   n327_var_α
n326_statement_begin_β:
                                                                                        jmp   n332_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n328_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n329_binop_α
n328_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n326_statement_begin_β
.Lx368_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx369_240
                        add              rsp, 16
                                                                                        jmp   n328_lit_integer_β
.Lx369_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n330_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n331_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n332_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n332_statement_begin_α:
                                                                                        jmp   n333_var_α
n332_statement_begin_β:
                                                                                        jmp   n345_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n334_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n335_subscript_α
n334_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n332_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n335_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx377_240
                        add              rsp, 16
                                                                                        jmp   n334_var_β
.Lx377_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n336_var_α
n335_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n334_var_β
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n337_var_α
n336_var_β:
                        add              rsp, 16
                                                                                        jmp   n335_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n338_subscript_α
n337_var_β:
                        add              rsp, 16
                                                                                        jmp   n336_var_β
#-----------------------------------------------------------------------------------------------------------------------
n338_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx380_240
                        add              rsp, 16
                                                                                        jmp   n337_var_β
.Lx380_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n339_deref_α
n338_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n337_var_β
#-----------------------------------------------------------------------------------------------------------------------
n339_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 16
                                                                                        jmp   n338_subscript_β
.Lx381_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n340_call_α
n339_deref_β:
                        add              rsp, 16
                                                                                        jmp   n338_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx383_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx383_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx383_240
                        add              rsp, 16
                                                                                        jmp   n339_deref_β
.Lx383_240:
                                                                                        jmp   n341_var_α
n340_call_β:
                                                                                        jmp   n339_deref_β
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n342_binop_α
n341_var_β:
                        add              rsp, 32
                                                                                        jmp   n339_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n342_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx385_240
                        add              rsp, 16
                                                                                        jmp   n341_var_β
.Lx385_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n343_assign_var_α
n342_binop_β:
                        add              rsp, 16
                                                                                        jmp   n341_var_β
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx386_240
                        add              rsp, 16
                                                                                        jmp   n342_binop_β
.Lx386_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n344_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n344_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n345_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n345_statement_begin_α:
                                                                                        jmp   n346_lit_string_α
n345_statement_begin_β:
                                                                                        jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n347_call_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd393:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd393]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx392_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n345_statement_begin_β
.Lx392_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n348_assign_α
n347_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n345_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              qword ptr [r9 + 120], rdx
                                                                                        jmp   n349_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n349_statement_end_α:
                                                                                        jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n351_call_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd399:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd399]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx398_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n353_save_restore_α
.Lx398_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n352_save_restore_α
n351_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n353_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n352_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n353_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_β:
                                                                                        jmp   proc_LBL__MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_α:
proc_LBL__DIV_α_body:
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n404_statement_begin_α:
                                                                                        jmp   n405_var_α
n404_statement_begin_β:
                                                                                        jmp   n412_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n407_subscript_α
n406_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n404_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n407_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx444_240
                        add              rsp, 16
                                                                                        jmp   n406_var_β
.Lx444_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n408_deref_α
n407_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n406_var_β
#-----------------------------------------------------------------------------------------------------------------------
n408_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx445_240
                        add              rsp, 16
                                                                                        jmp   n407_subscript_β
.Lx445_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n409_call_α
n408_deref_β:
                        add              rsp, 16
                                                                                        jmp   n407_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx447_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx447_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx447_240
                        add              rsp, 16
                                                                                        jmp   n408_deref_β
.Lx447_240:
                                                                                        jmp   n410_assign_α
n409_call_β:
                                                                                        jmp   n408_deref_β
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n410_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n411_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n411_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n412_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n412_statement_begin_α:
                                                                                        jmp   n413_var_α
n412_statement_begin_β:
                                                                                        jmp   n418_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n414_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n415_binop_α
n414_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n412_statement_begin_β
.Lx454_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx455_240
                        add              rsp, 16
                                                                                        jmp   n414_lit_integer_β
.Lx455_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n416_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n417_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n417_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n418_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n418_statement_begin_α:
                                                                                        jmp   n419_var_α
n418_statement_begin_β:
                                                                                        jmp   n431_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n420_var_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n421_subscript_α
n420_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n418_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx463_240
                        add              rsp, 16
                                                                                        jmp   n420_var_β
.Lx463_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n422_var_α
n421_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n420_var_β
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n423_var_α
n422_var_β:
                        add              rsp, 16
                                                                                        jmp   n421_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n424_subscript_α
n423_var_β:
                        add              rsp, 16
                                                                                        jmp   n422_var_β
#-----------------------------------------------------------------------------------------------------------------------
n424_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx466_240
                        add              rsp, 16
                                                                                        jmp   n423_var_β
.Lx466_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n425_deref_α
n424_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n423_var_β
#-----------------------------------------------------------------------------------------------------------------------
n425_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx467_240
                        add              rsp, 16
                                                                                        jmp   n424_subscript_β
.Lx467_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n426_call_α
n425_deref_β:
                        add              rsp, 16
                                                                                        jmp   n424_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n426_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx469_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx469_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx469_240
                        add              rsp, 16
                                                                                        jmp   n425_deref_β
.Lx469_240:
                                                                                        jmp   n427_var_α
n426_call_β:
                                                                                        jmp   n425_deref_β
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n428_binop_α
n427_var_β:
                        add              rsp, 32
                                                                                        jmp   n425_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n428_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx471_240
                        add              rsp, 16
                                                                                        jmp   n427_var_β
.Lx471_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n429_assign_var_α
n428_binop_β:
                        add              rsp, 16
                                                                                        jmp   n427_var_β
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx472_240
                        add              rsp, 16
                                                                                        jmp   n428_binop_β
.Lx472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n430_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n430_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n431_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n431_statement_begin_α:
                                                                                        jmp   n432_lit_string_α
n431_statement_begin_β:
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n433_call_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd479:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd479]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx478_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n431_statement_begin_β
.Lx478_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n434_assign_α
n433_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n431_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n434_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              qword ptr [r9 + 136], rdx
                                                                                        jmp   n435_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n435_statement_end_α:
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n437_call_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n437_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd485:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd485]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx484_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n439_save_restore_α
.Lx484_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n438_save_restore_α
n437_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n439_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n438_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n439_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_β:
                                                                                        jmp   proc_LBL__DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_α:
proc_LBL__SGN_α_body:
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_begin_α:
                                                                                        jmp   n491_var_α
n490_statement_begin_β:
                                                                                        jmp   n498_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n492_var_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n493_subscript_α
n492_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n490_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n493_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx537_240
                        add              rsp, 16
                                                                                        jmp   n492_var_β
.Lx537_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n494_deref_α
n493_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n492_var_β
#-----------------------------------------------------------------------------------------------------------------------
n494_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx538_240
                        add              rsp, 16
                                                                                        jmp   n493_subscript_β
.Lx538_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n495_call_α
n494_deref_β:
                        add              rsp, 16
                                                                                        jmp   n493_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n495_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]                      # deref
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              eax, 1
                        mov              qword ptr [rsp + 0], rax
                        lea              rax, [rip + .Lx540_2]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        lea              rax, [rip + DRF_alpha]
                                                                                        jmp   rax
.Lx540_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx540_240
                        add              rsp, 16
                                                                                        jmp   n494_deref_β
.Lx540_240:
                                                                                        jmp   n496_assign_α
n495_call_β:
                                                                                        jmp   n494_deref_β
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n497_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n497_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n498_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n498_statement_begin_α:
                                                                                        jmp   n499_var_α
n498_statement_begin_β:
                                                                                        jmp   n504_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n500_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n501_binop_α
n500_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n498_statement_begin_β
.Lx547_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n501_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx548_240
                        add              rsp, 16
                                                                                        jmp   n500_lit_integer_β
.Lx548_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n502_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n502_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax                      # sp
                        mov              qword ptr [r9 + 184], rdx
                                                                                        jmp   n503_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n503_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n504_statement_begin_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n504_statement_begin_α:
                                                                                        jmp   n505_var_α
n504_statement_begin_β:
                                                                                        jmp   n517_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n506_var_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n507_subscript_α
n506_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n504_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n507_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx556_240
                        add              rsp, 16
                                                                                        jmp   n506_var_β
.Lx556_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n508_deref_α
n507_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n506_var_β
#-----------------------------------------------------------------------------------------------------------------------
n508_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_deref@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx557_240
                        add              rsp, 16
                                                                                        jmp   n507_subscript_β
.Lx557_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n509_lit_string_α
n508_deref_β:
                        add              rsp, 16
                                                                                        jmp   n507_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n510_call_α
n509_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n508_deref_β
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n510_call_α:
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
.Lrkfnzd560:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd560]
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
                                                                                        jne   .Lx559_240
                        add              rsp, 16
                                                                                        jmp   n509_lit_string_β
.Lx559_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n511_statement_end_α
n510_call_β:
                        add              rsp, 16
                                                                                        jmp   n509_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n511_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n512_statement_begin_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n512_statement_begin_α:
                                                                                        jmp   n513_var_α
n512_statement_begin_β:
                                                                                        jmp   n517_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n514_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n514_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_num_neg@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n515_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              qword ptr [r9 + 88], rdx
                                                                                        jmp   n516_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n516_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n517_statement_begin_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n517_statement_begin_α:
                                                                                        jmp   n518_var_α
n517_statement_begin_β:
                                                                                        jmp   n524_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n519_var_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n520_subscript_α
n519_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n517_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n520_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx574_240
                        add              rsp, 16
                                                                                        jmp   n519_var_β
.Lx574_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n521_var_α
n520_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n519_var_β
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n522_assign_var_α
n521_var_β:
                        add              rsp, 16
                                                                                        jmp   n520_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx576_240
                        add              rsp, 16
                                                                                        jmp   n521_var_β
.Lx576_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n523_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n523_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n524_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n524_statement_begin_α:
                                                                                        jmp   n525_lit_string_α
n524_statement_begin_β:
                                                                                        jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n526_call_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd583:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd583]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx582_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n524_statement_begin_β
.Lx582_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n527_assign_α
n526_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n524_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n527_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax                      # SGN
                        mov              qword ptr [r9 + 152], rdx
                                                                                        jmp   n528_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n528_statement_end_α:
                                                                                        jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n530_call_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd589:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd589]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx588_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n532_save_restore_α
.Lx588_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n531_save_restore_α
n530_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n532_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n531_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n532_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_β:
                                                                                        jmp   proc_LBL__SGN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n594_save_restore_α:
                                                                                        jmp   n595_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n595_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__EMIT_α]
                                                                                        jmp   rax
                                                                                        jmp   n596_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n596_save_restore_α:
EMIT_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx602_2
                        mov              eax, 0
.Lx602_2:
                        sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 0]                        # EMIT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + EMIT_gamma]
                        lea              r11, [rip + EMIT_omega]
                        lea              rax, [rip + proc_LBL__EMIT_α]
                                                                                        jmp   rax
EMIT_gamma:
                        mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx602_75
                        mov              eax, 0
.Lx602_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0
                                                                                        jbe   .Lx602_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx602_3:
                        mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
EMIT_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx602_145
                        mov              eax, 0
.Lx602_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0
                                                                                        jbe   .Lx602_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx602_4:
                        mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_EMIT_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_β:
                                                                                        jmp   proc_EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n603_save_restore_α:
                                                                                        jmp   n604_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n604_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__PSH_α]
                                                                                        jmp   rax
                                                                                        jmp   n605_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n605_save_restore_α:
PSH_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 0
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx611_2
                        mov              eax, 0
.Lx611_2:
                        sub              rsp, 48
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 16]                       # PSH
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        lea              r10, [rip + PSH_gamma]
                        lea              r11, [rip + PSH_omega]
                        lea              rax, [rip + proc_LBL__PSH_α]
                                                                                        jmp   rax
PSH_gamma:
                        mov              rdi, qword ptr [r9 + 16]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx611_75
                        mov              eax, 0
.Lx611_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0
                                                                                        jbe   .Lx611_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx611_3:
                        mov              rcx, qword ptr [r8 + 16]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
PSH_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx611_145
                        mov              eax, 0
.Lx611_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 24], rax
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 80
                        cmp              rcx, 0
                                                                                        jbe   .Lx611_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx611_4:
                        mov              rcx, qword ptr [r8 + 24]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_PSH_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_β:
                                                                                        jmp   proc_PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n612_save_restore_α:
                                                                                        jmp   n613_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n613_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__DRF_α]
                                                                                        jmp   rax
                                                                                        jmp   n614_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n614_save_restore_α:
DRF_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx620_2
                        mov              eax, 16
.Lx620_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 32]                       # DRF
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx620_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 48]                       # nm
                        mov              qword ptr [r9 + 48], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [r9 + 56], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx620_41
.Lx620_10:
                        mov              rax, qword ptr [r9 + 48]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
.Lx620_41:
                        lea              r10, [rip + DRF_gamma]
                        lea              r11, [rip + DRF_omega]
                        lea              rax, [rip + proc_LBL__DRF_α]
                                                                                        jmp   rax
DRF_gamma:
                        mov              rdi, qword ptr [r9 + 32]                       # DRF
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx620_75
                        mov              eax, 16
.Lx620_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx620_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax
                                                                                        jmp   .Lx620_110
.Lx620_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx620_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx620_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx620_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
DRF_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx620_145
                        mov              eax, 16
.Lx620_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx620_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 48], rax                       # nm
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 56], rax
                                                                                        jmp   .Lx620_180
.Lx620_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 56], rax
.Lx620_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx620_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx620_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_DRF_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_β:
                                                                                        jmp   proc_DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n621_save_restore_α:
                                                                                        jmp   n622_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n622_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__ADD_α]
                                                                                        jmp   rax
                                                                                        jmp   n623_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n623_save_restore_α:
ADD_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx629_2
                        mov              eax, 16
.Lx629_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 64]                       # ADD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx629_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx629_41
.Lx629_10:
                        mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx629_41:
                        lea              r10, [rip + ADD_gamma]
                        lea              r11, [rip + ADD_omega]
                        lea              rax, [rip + proc_LBL__ADD_α]
                                                                                        jmp   rax
ADD_gamma:
                        mov              rdi, qword ptr [r9 + 64]                       # ADD
                        mov              rsi, qword ptr [r9 + 72]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx629_75
                        mov              eax, 16
.Lx629_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx629_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx629_110
.Lx629_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx629_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx629_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx629_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
ADD_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx629_145
                        mov              eax, 16
.Lx629_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 64], rax                       # ADD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 72], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx629_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx629_180
.Lx629_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx629_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx629_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx629_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_ADD_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_β:
                                                                                        jmp   proc_ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n630_save_restore_α:
                                                                                        jmp   n631_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n631_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__SUB_α]
                                                                                        jmp   rax
                                                                                        jmp   n632_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n632_save_restore_α:
SUB_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx638_2
                        mov              eax, 16
.Lx638_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 96]                       # SUB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 96], 0
                        mov              qword ptr [r9 + 104], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx638_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx638_41
.Lx638_10:
                        mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx638_41:
                        lea              r10, [rip + SUB_gamma]
                        lea              r11, [rip + SUB_omega]
                        lea              rax, [rip + proc_LBL__SUB_α]
                                                                                        jmp   rax
SUB_gamma:
                        mov              rdi, qword ptr [r9 + 96]                       # SUB
                        mov              rsi, qword ptr [r9 + 104]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx638_75
                        mov              eax, 16
.Lx638_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx638_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx638_110
.Lx638_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx638_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx638_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx638_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
SUB_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx638_145
                        mov              eax, 16
.Lx638_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 96], rax                       # SUB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 104], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx638_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx638_180
.Lx638_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx638_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx638_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx638_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_SUB_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_β:
                                                                                        jmp   proc_SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n639_save_restore_α:
                                                                                        jmp   n640_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n640_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__MUL_α]
                                                                                        jmp   rax
                                                                                        jmp   n641_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n641_save_restore_α:
MUL_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx647_2
                        mov              eax, 16
.Lx647_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 112]                      # MUL
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 112], 0
                        mov              qword ptr [r9 + 120], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx647_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx647_41
.Lx647_10:
                        mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx647_41:
                        lea              r10, [rip + MUL_gamma]
                        lea              r11, [rip + MUL_omega]
                        lea              rax, [rip + proc_LBL__MUL_α]
                                                                                        jmp   rax
MUL_gamma:
                        mov              rdi, qword ptr [r9 + 112]                      # MUL
                        mov              rsi, qword ptr [r9 + 120]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx647_75
                        mov              eax, 16
.Lx647_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx647_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx647_110
.Lx647_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx647_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx647_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx647_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
MUL_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx647_145
                        mov              eax, 16
.Lx647_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 112], rax                      # MUL
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 120], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx647_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx647_180
.Lx647_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx647_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx647_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx647_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_MUL_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_β:
                                                                                        jmp   proc_MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n648_save_restore_α:
                                                                                        jmp   n649_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n649_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__DIV_α]
                                                                                        jmp   rax
                                                                                        jmp   n650_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n650_save_restore_α:
DIV_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx656_2
                        mov              eax, 16
.Lx656_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 128]                      # DIV
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 128], 0
                        mov              qword ptr [r9 + 136], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx656_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx656_41
.Lx656_10:
                        mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx656_41:
                        lea              r10, [rip + DIV_gamma]
                        lea              r11, [rip + DIV_omega]
                        lea              rax, [rip + proc_LBL__DIV_α]
                                                                                        jmp   rax
DIV_gamma:
                        mov              rdi, qword ptr [r9 + 128]                      # DIV
                        mov              rsi, qword ptr [r9 + 136]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx656_75
                        mov              eax, 16
.Lx656_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx656_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx656_110
.Lx656_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx656_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx656_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx656_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
DIV_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx656_145
                        mov              eax, 16
.Lx656_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 128], rax                      # DIV
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 136], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx656_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx656_180
.Lx656_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx656_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx656_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx656_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_DIV_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_β:
                                                                                        jmp   proc_DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SGN_α
proc_SGN_α:
proc_SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n657_save_restore_α:
                                                                                        jmp   n658_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n658_goto_deferred_α:
                        lea              rax, [rip + proc_LBL__SGN_α]
                                                                                        jmp   rax
                                                                                        jmp   n659_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n659_save_restore_α:
SGN_alpha:
                        mov              rcx, qword ptr [rsp + 0]
                        mov              r8, rsp
                        sub              r8, 16
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx665_2
                        mov              eax, 16
.Lx665_2:
                        sub              rsp, 64
                        add              rsp, rax
                        mov              rax, qword ptr [r9 + 144]                      # SGN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 144], 0
                        mov              qword ptr [r9 + 152], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        cmp              rcx, 0
                                                                                        jbe   .Lx665_10
                        mov              rax, qword ptr [r8 + 48]
                        mov              rdx, qword ptr [r9 + 80]                       # p1
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [r8 + 48], rdx
                        mov              rax, qword ptr [r8 + 56]
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [r8 + 56], rdx
                                                                                        jmp   .Lx665_41
.Lx665_10:
                        mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [r8 + 8], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Lx665_41:
                        lea              r10, [rip + SGN_gamma]
                        lea              r11, [rip + SGN_omega]
                        lea              rax, [rip + proc_LBL__SGN_α]
                                                                                        jmp   rax
SGN_gamma:
                        mov              rdi, qword ptr [r9 + 144]                      # SGN
                        mov              rsi, qword ptr [r9 + 152]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx665_75
                        mov              eax, 16
.Lx665_75:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx665_80
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx665_110
.Lx665_80:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx665_110:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx665_3
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx665_3:
                        mov              rcx, qword ptr [r8 + 32]
                        add              rsp, rax
                        mov              rax, rdi
                        mov              rdx, rsi
                                                                                        jmp   rcx
SGN_omega:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        cmp              rcx, 1
                                                                                        jbe   .Lx665_145
                        mov              eax, 16
.Lx665_145:
                        lea              r8, [rsp + 48]
                        sub              r8, rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 144], rax                      # SGN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 152], rax
                        cmp              rcx, 0
                                                                                        jbe   .Lx665_150
                        mov              rax, qword ptr [r8 + 48]
                        mov              qword ptr [r9 + 80], rax                       # p1
                        mov              rax, qword ptr [r8 + 56]
                        mov              qword ptr [r9 + 88], rax
                                                                                        jmp   .Lx665_180
.Lx665_150:
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 88], rax
.Lx665_180:
                        mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              eax, 96
                        cmp              rcx, 1
                                                                                        jbe   .Lx665_4
                        mov              rax, rcx
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, rax
                        add              rax, 80
.Lx665_4:
                        mov              rcx, qword ptr [r8 + 40]
                        add              rsp, rax
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   rcx
                                                                                        jmp   proc_SGN_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_β:
                                                                                        jmp   proc_SGN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_γ:
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
proc_PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n666_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n667_match_any_α
n666_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n667_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx672_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx672_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx672_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx672_240:
                        add              r14d, 1
                                                                                        jmp   n668_match_assign_cond_α
n667_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$0_γ
n668_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n667_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
proc_PAT$1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n675_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n676_match_span_α
n675_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n676_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx681_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx681_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx681_1
                        add              ecx, 1
                                                                                        jmp   .Lx681_0
.Lx681_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx681_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_ω
.Lx681_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n677_match_assign_cond_α
n676_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n677_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$1_γ
n677_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n676_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
proc_PAT$2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n684_match_alternate_α:
                        mov              dword ptr [rsp + 16], r14d
                        lea              rax, [rip + .Lx692_21]
                        mov              qword ptr [rsp + 32], rax
                                                                                        jmp   n690_match_defer_α
.Lx692_21:
                        lea              rax, [rip + .Lx692_22]
                        mov              qword ptr [rsp + 32], rax
                                                                                        jmp   n689_match_defer_α
.Lx692_22:
                        lea              rax, [rip + .Lx692_19]
                        mov              qword ptr [rsp + 32], rax
                                                                                        jmp   n686_match_lit_α
n684_match_alternate_s0:
                        lea              rax, [rip + .Lx692_40]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n684_match_alternate_as
n684_match_alternate_s1:
                        lea              rax, [rip + .Lx692_41]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n684_match_alternate_as
n684_match_alternate_s2:
                        lea              rax, [rip + .Lx692_42]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n684_match_alternate_as
.Lx692_40:
                                                                                        jmp   n690_match_defer_β
.Lx692_41:
                                                                                        jmp   n689_match_defer_β
.Lx692_42:
                                                                                        jmp   n685_goto_β
n684_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n684_match_alternate_β:
                        mov              rax, qword ptr [rsp + 24]
                                                                                        jmp   rax
n684_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 16]
                        mov              rax, qword ptr [rsp + 32]
                                                                                        jmp   rax
.Lx692_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n685_goto_α:
                                                                                        jmp   n684_match_alternate_af
n685_goto_β:
                                                                                        jmp   n684_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n686_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n684_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n684_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n687_match_defer_α
n686_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n684_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n687_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx696_11
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        cmp              eax, 8
                                                                                        jne   .Lx696_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx696_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx696_10
.Lx696_9:
                        xor              eax, eax
.Lx696_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx696_11:
                        test             rax, rax
                                                                                        jz    .Lx696_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx696_4]
                        lea              r11, [rip + .Lx696_5]
                                                                                        jmp   rax
.Lx696_4:
                                                                                        jmp   n688_match_lit_α
.Lx696_5:
                                                                                        jmp   n686_match_lit_β
.Lx696_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
.Lx696_2:
                        test             rax, rax
                                                                                        je    .Lx696_3
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
                        lea              rcx, [rip + .Lx696_7]
                        lea              rdx, [rip + .Lx696_8]
                                                                                        jmp   rax
.Lx696_7:
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
                                                                                        jmp   .Lx696_2
.Lx696_8:
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
                                                                                        jmp   .Lx696_2
.Lx696_3:
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
                                                                                        js    n686_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx696_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n688_match_lit_α
.Lx696_6:
                        add              rsp, 16
                                                                                        jmp   n686_match_lit_β
n687_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n688_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n684_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n684_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n684_match_alternate_s2
n688_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n684_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n689_match_defer_α:
                        mov              rax, qword ptr [r9 + 528]                      # PAT$2$V1
                        mov              rdx, qword ptr [r9 + 536]
                        cmp              eax, 8
                                                                                        jne   .Lx699_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx699_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx699_10
.Lx699_9:
                        xor              eax, eax
.Lx699_10:
                        test             rax, rax
                                                                                        jz    .Lx699_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx699_4]
                        lea              r11, [rip + .Lx699_5]
                                                                                        jmp   rax
.Lx699_4:
                                                                                        jmp   n684_match_alternate_s1
.Lx699_5:
                                                                                        jmp   n684_match_alternate_af
.Lx699_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]
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
.Lx699_2:
                        test             rax, rax
                                                                                        je    .Lx699_3
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
                        lea              rcx, [rip + .Lx699_7]
                        lea              rdx, [rip + .Lx699_8]
                                                                                        jmp   rax
.Lx699_7:
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
                                                                                        jmp   .Lx699_2
.Lx699_8:
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
                                                                                        jmp   .Lx699_2
.Lx699_3:
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
                                                                                        js    n684_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx699_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n684_match_alternate_s1
.Lx699_6:
                        add              rsp, 16
                                                                                        jmp   n684_match_alternate_af
n689_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n690_match_defer_α:
                        mov              rax, qword ptr [r9 + 512]                      # PAT$2$V0
                        mov              rdx, qword ptr [r9 + 520]
                        cmp              eax, 8
                                                                                        jne   .Lx700_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx700_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx700_10
.Lx700_9:
                        xor              eax, eax
.Lx700_10:
                        test             rax, rax
                                                                                        jz    .Lx700_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx700_4]
                        lea              r11, [rip + .Lx700_5]
                                                                                        jmp   rax
.Lx700_4:
                                                                                        jmp   n684_match_alternate_s0
.Lx700_5:
                                                                                        jmp   n684_match_alternate_af
.Lx700_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]
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
.Lx700_2:
                        test             rax, rax
                                                                                        je    .Lx700_3
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
                        lea              rcx, [rip + .Lx700_7]
                        lea              rdx, [rip + .Lx700_8]
                                                                                        jmp   rax
.Lx700_7:
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
                                                                                        jmp   .Lx700_2
.Lx700_8:
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
                                                                                        jmp   .Lx700_2
.Lx700_3:
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
                                                                                        js    n684_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx700_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n684_match_alternate_s0
.Lx700_6:
                        add              rsp, 16
                                                                                        jmp   n684_match_alternate_af
n690_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
proc_PAT$3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n701_match_alternate_α:
                        mov              dword ptr [rsp + 16], r14d
                        lea              rax, [rip + .Lx711_21]
                        mov              qword ptr [rsp + 32], rax
                                                                                        jmp   n709_match_defer_α
.Lx711_21:
                        lea              rax, [rip + .Lx711_19]
                        mov              qword ptr [rsp + 32], rax
                                                                                        jmp   n703_match_assign_save_α
n701_match_alternate_s0:
                        lea              rax, [rip + .Lx711_40]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n701_match_alternate_as
n701_match_alternate_s1:
                        lea              rax, [rip + .Lx711_41]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n701_match_alternate_as
.Lx711_40:
                                                                                        jmp   n709_match_defer_β
.Lx711_41:
                                                                                        jmp   n702_goto_β
n701_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n701_match_alternate_β:
                        mov              rax, qword ptr [rsp + 24]
                                                                                        jmp   rax
n701_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 16]
                        mov              rax, qword ptr [rsp + 32]
                                                                                        jmp   rax
.Lx711_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n702_goto_α:
                                                                                        jmp   n701_match_alternate_af
n702_goto_β:
                                                                                        jmp   n701_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n703_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n704_match_any_α
n703_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n701_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n704_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx716_240
                        add              rsp, 16
                                                                                        jmp   n701_match_alternate_af
.Lx716_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx716_0
                        cmp              esi, 45
                                                                                        je    .Lx716_0
                        add              rsp, 16
                                                                                        jmp   n701_match_alternate_af
.Lx716_0:
                        add              r14d, 1
                                                                                        jmp   n705_match_assign_cond_α
n704_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n701_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n705_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n706_match_assign_save_α
n705_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n704_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n706_match_assign_save_α:
                        lea              rdi, [rsp + 160]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n707_match_defer_α
n706_match_assign_save_β:
                        lea              rdi, [rsp + 160]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n705_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n707_match_defer_α:
                        mov              qword ptr [rsp + 176], rsp
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        cmp              eax, 8
                                                                                        jne   .Lx721_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx721_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx721_10
.Lx721_9:
                        xor              eax, eax
.Lx721_10:
                        test             rax, rax
                                                                                        jz    .Lx721_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx721_4]
                        lea              r11, [rip + .Lx721_5]
                                                                                        jmp   rax
.Lx721_4:
                        mov              rsp, qword ptr [rsp + 176]
                                                                                        jmp   n708_match_assign_cond_α
.Lx721_5:
                        mov              rsp, qword ptr [rsp + 176]
                                                                                        jmp   n706_match_assign_save_β
.Lx721_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]
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
.Lx721_2:
                        test             rax, rax
                                                                                        je    .Lx721_3
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
                        lea              rcx, [rip + .Lx721_7]
                        lea              rdx, [rip + .Lx721_8]
                                                                                        jmp   rax
.Lx721_7:
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
                                                                                        jmp   .Lx721_2
.Lx721_8:
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
                                                                                        jmp   .Lx721_2
.Lx721_3:
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
                                                                                        js    n706_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx721_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n708_match_assign_cond_α
.Lx721_6:
                        add              rsp, 16
                                                                                        jmp   n706_match_assign_save_β
n707_match_defer_β:
                        mov              rsp, qword ptr [rsp + 176]
                                                                                        jmp   n706_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n708_match_assign_cond_α:
                        lea              rdi, [rsp + 160]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S7]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n701_match_alternate_s1
n708_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n707_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n709_match_defer_α:
                        mov              rax, qword ptr [r9 + 544]                      # PAT$3$V0
                        mov              rdx, qword ptr [r9 + 552]
                        cmp              eax, 8
                                                                                        jne   .Lx724_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx724_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx724_10
.Lx724_9:
                        xor              eax, eax
.Lx724_10:
                        test             rax, rax
                                                                                        jz    .Lx724_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx724_4]
                        lea              r11, [rip + .Lx724_5]
                                                                                        jmp   rax
.Lx724_4:
                                                                                        jmp   n701_match_alternate_s0
.Lx724_5:
                                                                                        jmp   n701_match_alternate_af
.Lx724_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]
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
.Lx724_2:
                        test             rax, rax
                                                                                        je    .Lx724_3
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
                        lea              rcx, [rip + .Lx724_7]
                        lea              rdx, [rip + .Lx724_8]
                                                                                        jmp   rax
.Lx724_7:
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
                                                                                        jmp   .Lx724_2
.Lx724_8:
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
                                                                                        jmp   .Lx724_2
.Lx724_3:
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
                                                                                        js    n701_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx724_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n701_match_alternate_s0
.Lx724_6:
                        add              rsp, 16
                                                                                        jmp   n701_match_alternate_af
n709_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
proc_PAT$4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n725_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 560]                      # PAT$4$V0
                        mov              rdx, qword ptr [r9 + 568]
                        cmp              eax, 8
                                                                                        jne   .Lx738_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx738_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx738_10
.Lx738_9:
                        xor              eax, eax
.Lx738_10:
                        test             rax, rax
                                                                                        jz    .Lx738_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx738_4]
                        lea              r11, [rip + .Lx738_5]
                                                                                        jmp   rax
.Lx738_4:
                                                                                        jmp   n726_match_arbno_α
.Lx738_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
.Lx738_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S9]
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
.Lx738_2:
                        test             rax, rax
                                                                                        je    .Lx738_3
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
                        lea              rcx, [rip + .Lx738_7]
                        lea              rdx, [rip + .Lx738_8]
                                                                                        jmp   rax
.Lx738_7:
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
                                                                                        jmp   .Lx738_2
.Lx738_8:
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
                                                                                        jmp   .Lx738_2
.Lx738_3:
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
                                                                                        jns   .Lx738_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
.Lx738_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx738_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n726_match_arbno_α
.Lx738_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_ω
n725_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n726_match_arbno_α:
                        lea              rdi, [rip + .S11]
                        call             rt_bomb@PLT
                        ud2
n726_match_arbno_β:
                        lea              rdi, [rip + .S10]
                        call             rt_bomb@PLT
                        ud2
n726_match_arbno_as:
n726_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n727_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        lea              rax, [rip + .Lx742_21]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n734_match_lit_α
.Lx742_21:
                        lea              rax, [rip + .Lx742_19]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n729_match_lit_α
n727_match_alternate_s0:
                        lea              rax, [rip + .Lx742_40]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n727_match_alternate_as
n727_match_alternate_s1:
                        lea              rax, [rip + .Lx742_41]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n727_match_alternate_as
.Lx742_40:
                                                                                        jmp   n733_goto_β
.Lx742_41:
                                                                                        jmp   n728_goto_β
n727_match_alternate_as:
                                                                                        jmp   n726_match_arbno_as
n727_match_alternate_β:
                        mov              rax, qword ptr [rsp + 120]
                                                                                        jmp   rax
n727_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rax, qword ptr [rsp + 128]
                                                                                        jmp   rax
.Lx742_19:
                                                                                        jmp   n726_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n728_goto_α:
                                                                                        jmp   n727_match_alternate_af
n728_goto_β:
                                                                                        jmp   n727_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n729_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n727_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n727_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n730_match_assign_save_α
n729_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n727_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n730_match_assign_save_α:
                        lea              rdi, [rsp + 256]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n731_match_defer_α
n730_match_assign_save_β:
                        lea              rdi, [rsp + 256]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n729_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n731_match_defer_α:
                        mov              rax, qword ptr [r9 + 592]                      # PAT$4$V2
                        mov              rdx, qword ptr [r9 + 600]
                        cmp              eax, 8
                                                                                        jne   .Lx748_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx748_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx748_10
.Lx748_9:
                        xor              eax, eax
.Lx748_10:
                        test             rax, rax
                                                                                        jz    .Lx748_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx748_4]
                        lea              r11, [rip + .Lx748_5]
                                                                                        jmp   rax
.Lx748_4:
                                                                                        jmp   n732_match_assign_cond_α
.Lx748_5:
                                                                                        jmp   n730_match_assign_save_β
.Lx748_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]
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
.Lx748_2:
                        test             rax, rax
                                                                                        je    .Lx748_3
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
                        lea              rcx, [rip + .Lx748_7]
                        lea              rdx, [rip + .Lx748_8]
                                                                                        jmp   rax
.Lx748_7:
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
                                                                                        jmp   .Lx748_2
.Lx748_8:
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
                                                                                        jmp   .Lx748_2
.Lx748_3:
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
                                                                                        js    n730_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx748_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n732_match_assign_cond_α
.Lx748_6:
                        add              rsp, 16
                                                                                        jmp   n730_match_assign_save_β
n731_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n732_match_assign_cond_α:
                        lea              rdi, [rsp + 256]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n727_match_alternate_s1
n732_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n731_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n733_goto_α:
                                                                                        jmp   n727_match_alternate_af
n733_goto_β:
                                                                                        jmp   n727_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n734_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n727_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n727_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n735_match_assign_save_α
n734_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n727_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n735_match_assign_save_α:
                        lea              rdi, [rsp + 192]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n736_match_defer_α
n735_match_assign_save_β:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n734_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n736_match_defer_α:
                        mov              rax, qword ptr [r9 + 576]                      # PAT$4$V1
                        mov              rdx, qword ptr [r9 + 584]
                        cmp              eax, 8
                                                                                        jne   .Lx756_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx756_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx756_10
.Lx756_9:
                        xor              eax, eax
.Lx756_10:
                        test             rax, rax
                                                                                        jz    .Lx756_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx756_4]
                        lea              r11, [rip + .Lx756_5]
                                                                                        jmp   rax
.Lx756_4:
                                                                                        jmp   n737_match_assign_cond_α
.Lx756_5:
                                                                                        jmp   n735_match_assign_save_β
.Lx756_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]
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
.Lx756_2:
                        test             rax, rax
                                                                                        je    .Lx756_3
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
                        lea              rcx, [rip + .Lx756_7]
                        lea              rdx, [rip + .Lx756_8]
                                                                                        jmp   rax
.Lx756_7:
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
                                                                                        jmp   .Lx756_2
.Lx756_8:
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
                                                                                        jmp   .Lx756_2
.Lx756_3:
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
                                                                                        js    n735_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx756_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n737_match_assign_cond_α
.Lx756_6:
                        add              rsp, 16
                                                                                        jmp   n735_match_assign_save_β
n736_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n737_match_assign_cond_α:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S15]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n727_match_alternate_s0
n737_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n736_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
proc_PAT$5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n759_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 608]                      # PAT$5$V0
                        mov              rdx, qword ptr [r9 + 616]
                        cmp              eax, 8
                                                                                        jne   .Lx772_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx772_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx772_10
.Lx772_9:
                        xor              eax, eax
.Lx772_10:
                        test             rax, rax
                                                                                        jz    .Lx772_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx772_4]
                        lea              r11, [rip + .Lx772_5]
                                                                                        jmp   rax
.Lx772_4:
                                                                                        jmp   n760_match_arbno_α
.Lx772_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
.Lx772_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]
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
.Lx772_2:
                        test             rax, rax
                                                                                        je    .Lx772_3
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
                        lea              rcx, [rip + .Lx772_7]
                        lea              rdx, [rip + .Lx772_8]
                                                                                        jmp   rax
.Lx772_7:
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
                                                                                        jmp   .Lx772_2
.Lx772_8:
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
                                                                                        jmp   .Lx772_2
.Lx772_3:
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
                                                                                        jns   .Lx772_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
.Lx772_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx772_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n760_match_arbno_α
.Lx772_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_ω
n759_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n760_match_arbno_α:
                        lea              rdi, [rip + .S11]
                        call             rt_bomb@PLT
                        ud2
n760_match_arbno_β:
                        lea              rdi, [rip + .S10]
                        call             rt_bomb@PLT
                        ud2
n760_match_arbno_as:
n760_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n761_match_alternate_α:
                        mov              dword ptr [rsp + 112], r14d
                        lea              rax, [rip + .Lx776_21]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n768_match_lit_α
.Lx776_21:
                        lea              rax, [rip + .Lx776_19]
                        mov              qword ptr [rsp + 128], rax
                                                                                        jmp   n763_match_lit_α
n761_match_alternate_s0:
                        lea              rax, [rip + .Lx776_40]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n761_match_alternate_as
n761_match_alternate_s1:
                        lea              rax, [rip + .Lx776_41]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n761_match_alternate_as
.Lx776_40:
                                                                                        jmp   n767_goto_β
.Lx776_41:
                                                                                        jmp   n762_goto_β
n761_match_alternate_as:
                                                                                        jmp   n760_match_arbno_as
n761_match_alternate_β:
                        mov              rax, qword ptr [rsp + 120]
                                                                                        jmp   rax
n761_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 112]
                        mov              rax, qword ptr [rsp + 128]
                                                                                        jmp   rax
.Lx776_19:
                                                                                        jmp   n760_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n762_goto_α:
                                                                                        jmp   n761_match_alternate_af
n762_goto_β:
                                                                                        jmp   n761_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n763_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n761_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n761_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n764_match_assign_save_α
n763_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n761_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n764_match_assign_save_α:
                        lea              rdi, [rsp + 256]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n765_match_defer_α
n764_match_assign_save_β:
                        lea              rdi, [rsp + 256]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n763_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n765_match_defer_α:
                        mov              rax, qword ptr [r9 + 640]                      # PAT$5$V2
                        mov              rdx, qword ptr [r9 + 648]
                        cmp              eax, 8
                                                                                        jne   .Lx782_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx782_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx782_10
.Lx782_9:
                        xor              eax, eax
.Lx782_10:
                        test             rax, rax
                                                                                        jz    .Lx782_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx782_4]
                        lea              r11, [rip + .Lx782_5]
                                                                                        jmp   rax
.Lx782_4:
                                                                                        jmp   n766_match_assign_cond_α
.Lx782_5:
                                                                                        jmp   n764_match_assign_save_β
.Lx782_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]
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
.Lx782_2:
                        test             rax, rax
                                                                                        je    .Lx782_3
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
                        lea              rcx, [rip + .Lx782_7]
                        lea              rdx, [rip + .Lx782_8]
                                                                                        jmp   rax
.Lx782_7:
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
                                                                                        jmp   .Lx782_2
.Lx782_8:
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
                                                                                        jmp   .Lx782_2
.Lx782_3:
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
                                                                                        js    n764_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx782_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n766_match_assign_cond_α
.Lx782_6:
                        add              rsp, 16
                                                                                        jmp   n764_match_assign_save_β
n765_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n766_match_assign_cond_α:
                        lea              rdi, [rsp + 256]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S18]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n761_match_alternate_s1
n766_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n765_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n767_goto_α:
                                                                                        jmp   n761_match_alternate_af
n767_goto_β:
                                                                                        jmp   n761_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n768_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n761_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n761_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n769_match_assign_save_α
n768_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n761_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n769_match_assign_save_α:
                        lea              rdi, [rsp + 192]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n770_match_defer_α
n769_match_assign_save_β:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n768_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n770_match_defer_α:
                        mov              rax, qword ptr [r9 + 624]                      # PAT$5$V1
                        mov              rdx, qword ptr [r9 + 632]
                        cmp              eax, 8
                                                                                        jne   .Lx790_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx790_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx790_10
.Lx790_9:
                        xor              eax, eax
.Lx790_10:
                        test             rax, rax
                                                                                        jz    .Lx790_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx790_4]
                        lea              r11, [rip + .Lx790_5]
                                                                                        jmp   rax
.Lx790_4:
                                                                                        jmp   n771_match_assign_cond_α
.Lx790_5:
                                                                                        jmp   n769_match_assign_save_β
.Lx790_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S19]
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
.Lx790_2:
                        test             rax, rax
                                                                                        je    .Lx790_3
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
                        lea              rcx, [rip + .Lx790_7]
                        lea              rdx, [rip + .Lx790_8]
                                                                                        jmp   rax
.Lx790_7:
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
                                                                                        jmp   .Lx790_2
.Lx790_8:
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
                                                                                        jmp   .Lx790_2
.Lx790_3:
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
                                                                                        js    n769_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx790_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n771_match_assign_cond_α
.Lx790_6:
                        add              rsp, 16
                                                                                        jmp   n769_match_assign_save_β
n770_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n771_match_assign_cond_α:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S20]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n761_match_alternate_s0
n771_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n770_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
proc_PAT$6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n794_call_α
.Lx797_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n794_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd295:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd295]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx798_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_ω
.Lx798_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n795_match_value_α
n794_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
n795_match_value_α:
                        lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_get_pat_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        test             rax, rax
                                                                                        jz    .Lx799_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx799_4]
                        lea              rdx, [rip + .Lx799_5]
                                                                                        jmp   rax
.Lx799_4:
                                                                                        jmp   n796_match_fence1_α
.Lx799_5:
                                                                                        jmp   proc_PAT$6_ω
.Lx799_0:
                        lea              rdi, [rsp + 0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_match_value_open@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
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
                                                                                        js    proc_PAT$6_ω
                        mov              r14d, eax
                        lea              rax, [rip + .Lx799_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n796_match_fence1_α
.Lx799_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_ω
n795_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n796_match_fence1_α:
                                                                                        jmp   proc_PAT$6_γ
n796_match_fence1_β:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
proc_PAT$7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n803_match_pos_α
.Lx812_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n803_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx813_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_ω
.Lx813_240:
                                                                                        jmp   n804_match_arbno_α
n803_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
n804_match_arbno_α:
                        lea              rdi, [rip + .S11]
                        call             rt_bomb@PLT
                        ud2
n804_match_arbno_β:
                        lea              rdi, [rip + .S10]
                        call             rt_bomb@PLT
                        ud2
n804_match_arbno_as:
n804_match_arbno_af:
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n806_match_rpos_α
.Lx816_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n806_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx817_240
                        add              rsp, 16
                                                                                        jmp   n804_match_arbno_β
.Lx817_240:
                                                                                        jmp   proc_PAT$7_γ
#-----------------------------------------------------------------------------------------------------------------------
n807_match_defer_α:
                        mov              rax, qword ptr [r9 + 656]                      # PAT$7$V0
                        mov              rdx, qword ptr [r9 + 664]
                        cmp              eax, 8
                                                                                        jne   .Lx818_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx818_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx818_10
.Lx818_9:
                        xor              eax, eax
.Lx818_10:
                        test             rax, rax
                                                                                        jz    .Lx818_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx818_4]
                        lea              r11, [rip + .Lx818_5]
                                                                                        jmp   rax
.Lx818_4:
                                                                                        jmp   n808_match_defer_α
.Lx818_5:
                                                                                        jmp   n804_match_arbno_af
.Lx818_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S21]
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
.Lx818_2:
                        test             rax, rax
                                                                                        je    .Lx818_3
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
                        lea              rcx, [rip + .Lx818_7]
                        lea              rdx, [rip + .Lx818_8]
                                                                                        jmp   rax
.Lx818_7:
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
                                                                                        jmp   .Lx818_2
.Lx818_8:
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
                                                                                        jmp   .Lx818_2
.Lx818_3:
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
                                                                                        js    n804_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx818_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n808_match_defer_α
.Lx818_6:
                        add              rsp, 16
                                                                                        jmp   n804_match_arbno_af
n807_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n808_match_defer_α:
                        mov              rax, qword ptr [r9 + 672]                      # PAT$7$V1
                        mov              rdx, qword ptr [r9 + 680]
                        cmp              eax, 8
                                                                                        jne   .Lx819_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx819_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx819_10
.Lx819_9:
                        xor              eax, eax
.Lx819_10:
                        test             rax, rax
                                                                                        jz    .Lx819_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx819_4]
                        lea              r11, [rip + .Lx819_5]
                                                                                        jmp   rax
.Lx819_4:
                                                                                        jmp   n809_match_assign_save_α
.Lx819_5:
                                                                                        jmp   n804_match_arbno_af
.Lx819_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S22]
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
.Lx819_2:
                        test             rax, rax
                                                                                        je    .Lx819_3
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
                        lea              rcx, [rip + .Lx819_7]
                        lea              rdx, [rip + .Lx819_8]
                                                                                        jmp   rax
.Lx819_7:
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
                                                                                        jmp   .Lx819_2
.Lx819_8:
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
                                                                                        jmp   .Lx819_2
.Lx819_3:
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
                                                                                        js    n804_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx819_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n809_match_assign_save_α
.Lx819_6:
                        add              rsp, 16
                                                                                        jmp   n804_match_arbno_af
n808_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n809_match_assign_save_α:
                        lea              rdi, [rsp + 192]
                        mov              esi, r14d
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_push@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n810_match_defer_α
n809_match_assign_save_β:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_pop@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n804_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n810_match_defer_α:
                        mov              rax, qword ptr [r9 + 688]                      # PAT$7$V2
                        mov              rdx, qword ptr [r9 + 696]
                        cmp              eax, 8
                                                                                        jne   .Lx822_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx822_10
                        mov              rdi, rdx
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             dtp_fn_of@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   .Lx822_10
.Lx822_9:
                        xor              eax, eax
.Lx822_10:
                        test             rax, rax
                                                                                        jz    .Lx822_0
                        mov              r8d, 0
                        lea              r10, [rip + .Lx822_4]
                        lea              r11, [rip + .Lx822_5]
                                                                                        jmp   rax
.Lx822_4:
                                                                                        jmp   n811_match_assign_cond_α
.Lx822_5:
                                                                                        jmp   n809_match_assign_save_β
.Lx822_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S23]
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
.Lx822_2:
                        test             rax, rax
                                                                                        je    .Lx822_3
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
                        lea              rcx, [rip + .Lx822_7]
                        lea              rdx, [rip + .Lx822_8]
                                                                                        jmp   rax
.Lx822_7:
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
                                                                                        jmp   .Lx822_2
.Lx822_8:
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
                                                                                        jmp   .Lx822_2
.Lx822_3:
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
                                                                                        js    n809_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx822_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n811_match_assign_cond_α
.Lx822_6:
                        add              rsp, 16
                                                                                        jmp   n809_match_assign_save_β
n810_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n811_match_assign_cond_α:
                        lea              rdi, [rsp + 192]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_cap_top@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        lea              rcx, [rip + .S24]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n804_match_arbno_as
n811_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n810_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                                                                                        jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__EMIT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__EMIT_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__PSH"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__PSH_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__DRF"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__DRF_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__ADD"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__ADD_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__SUB"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__SUB_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__MUL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__MUL_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "LBL__DIV"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_LBL__DIV_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__SGN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_LBL__SGN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 5136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "PAT$4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_PAT$4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "PAT$5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_PAT$5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "PAT$6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_PAT$6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "PAT$7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname23]
                        lea              rsi, [rip + proc_PAT$7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "EMIT"
.Lgvan1:                .string          "PSH"
.Lgvan2:                .string          "DRF"
.Lgvan3:                .string          "nm"
.Lgvan4:                .string          "ADD"
.Lgvan5:                .string          "p1"
.Lgvan6:                .string          "SUB"
.Lgvan7:                .string          "MUL"
.Lgvan8:                .string          "DIV"
.Lgvan9:                .string          "SGN"
.Lgvan10:               .string          "S"
.Lgvan11:               .string          "sp"
.Lgvan12:               .string          "dm"
.Lgvan13:               .string          "vars"
.Lgvan14:               .string          "LCASE"
.Lgvan15:               .string          "DIGITS"
.Lgvan16:               .string          "V"
.Lgvan17:               .string          "I"
.Lgvan18:               .string          "A"
.Lgvan19:               .string          "F"
.Lgvan20:               .string          "T"
.Lgvan21:               .string          "X"
.Lgvan22:               .string          "eol"
.Lgvan23:               .string          "C"
.Lgvan24:               .string          "epsilon"
.Lgvan25:               .string          "nl"
.Lgvan26:               .string          "line"
.Lgvan27:               .string          "b1"
.Lgvan28:               .string          "b2"
.Lgvan29:               .string          "src"
.Lgvan30:               .string          "t0"
.Lgvan31:               .string          "t1"
.Lgvan32:               .string          "PAT$2$V0"
.Lgvan33:               .string          "PAT$2$V1"
.Lgvan34:               .string          "PAT$3$V0"
.Lgvan35:               .string          "PAT$4$V0"
.Lgvan36:               .string          "PAT$4$V1"
.Lgvan37:               .string          "PAT$4$V2"
.Lgvan38:               .string          "PAT$5$V0"
.Lgvan39:               .string          "PAT$5$V1"
.Lgvan40:               .string          "PAT$5$V2"
.Lgvan41:               .string          "PAT$7$V0"
.Lgvan42:               .string          "PAT$7$V1"
.Lgvan43:               .string          "PAT$7$V2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .quad            .Lgvan29
                        .quad            .Lgvan30
                        .quad            .Lgvan31
                        .quad            .Lgvan32
                        .quad            .Lgvan33
                        .quad            .Lgvan34
                        .quad            .Lgvan35
                        .quad            .Lgvan36
                        .quad            .Lgvan37
                        .quad            .Lgvan38
                        .quad            .Lgvan39
                        .quad            .Lgvan40
                        .quad            .Lgvan41
                        .quad            .Lgvan42
                        .quad            .Lgvan43
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 44
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 44
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n825_statement_begin_α:
                                                                                        jmp   n826_func_activate_α
n825_statement_begin_β:
                                                                                        jmp   n828_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n826_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1109_0]
                        mov              rsi, qword ptr [rip + .Lx1109_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_EMIT_α]
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
                                                                                        jmp   n827_statement_end_α
n826_func_activate_β:
                                                                                        jmp   n825_statement_begin_β
.Lx1109_0:
                        .quad            .Lx1109_0_s
.Lx1109_0_s:
                        .string          "EMIT"
.Lx1109_1:
                        .quad            .Lx1109_1_s
.Lx1109_1_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n827_statement_end_α:
                                                                                        jmp   n828_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_begin_α:
                                                                                        jmp   n829_statement_end_α
n828_statement_begin_β:
                                                                                        jmp   n830_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n829_statement_end_α:
                                                                                        jmp   n830_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n830_statement_begin_α:
                                                                                        jmp   n831_func_activate_α
n830_statement_begin_β:
                                                                                        jmp   n833_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n831_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1119_0]
                        mov              rsi, qword ptr [rip + .Lx1119_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_PSH_α]
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
                                                                                        jmp   n832_statement_end_α
n831_func_activate_β:
                                                                                        jmp   n830_statement_begin_β
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "PSH"
.Lx1119_1:
                        .quad            .Lx1119_1_s
.Lx1119_1_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n832_statement_end_α:
                                                                                        jmp   n833_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n833_statement_begin_α:
                                                                                        jmp   n834_statement_end_α
n833_statement_begin_β:
                                                                                        jmp   n835_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n834_statement_end_α:
                                                                                        jmp   n835_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n835_statement_begin_α:
                                                                                        jmp   n836_func_activate_α
n835_statement_begin_β:
                                                                                        jmp   n838_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n836_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1129_0]
                        mov              rsi, qword ptr [rip + .Lx1129_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + proc_DRF_α]
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
                                                                                        jmp   n837_statement_end_α
n836_func_activate_β:
                                                                                        jmp   n835_statement_begin_β
.Lx1129_0:
                        .quad            .Lx1129_0_s
.Lx1129_0_s:
                        .string          "DRF"
.Lx1129_1:
                        .quad            .Lx1129_1_s
.Lx1129_1_s:
                        .string          "nm"
#-----------------------------------------------------------------------------------------------------------------------
n837_statement_end_α:
                                                                                        jmp   n838_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n838_statement_begin_α:
                                                                                        jmp   n839_statement_end_α
n838_statement_begin_β:
                                                                                        jmp   n840_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n839_statement_end_α:
                                                                                        jmp   n840_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n840_statement_begin_α:
                                                                                        jmp   n841_func_activate_α
n840_statement_begin_β:
                                                                                        jmp   n843_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n841_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1139_0]
                        mov              rsi, qword ptr [rip + .Lx1139_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_ADD_α]
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
                                                                                        jmp   n842_statement_end_α
n841_func_activate_β:
                                                                                        jmp   n840_statement_begin_β
.Lx1139_0:
                        .quad            .Lx1139_0_s
.Lx1139_0_s:
                        .string          "ADD"
.Lx1139_1:
                        .quad            .Lx1139_1_s
.Lx1139_1_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n842_statement_end_α:
                                                                                        jmp   n843_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n843_statement_begin_α:
                                                                                        jmp   n844_statement_end_α
n843_statement_begin_β:
                                                                                        jmp   n845_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n844_statement_end_α:
                                                                                        jmp   n845_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n845_statement_begin_α:
                                                                                        jmp   n846_func_activate_α
n845_statement_begin_β:
                                                                                        jmp   n848_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n846_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1149_0]
                        mov              rsi, qword ptr [rip + .Lx1149_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SUB_α]
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
                                                                                        jmp   n847_statement_end_α
n846_func_activate_β:
                                                                                        jmp   n845_statement_begin_β
.Lx1149_0:
                        .quad            .Lx1149_0_s
.Lx1149_0_s:
                        .string          "SUB"
.Lx1149_1:
                        .quad            .Lx1149_1_s
.Lx1149_1_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n847_statement_end_α:
                                                                                        jmp   n848_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n848_statement_begin_α:
                                                                                        jmp   n849_statement_end_α
n848_statement_begin_β:
                                                                                        jmp   n850_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n849_statement_end_α:
                                                                                        jmp   n850_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n850_statement_begin_α:
                                                                                        jmp   n851_func_activate_α
n850_statement_begin_β:
                                                                                        jmp   n853_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n851_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1159_0]
                        mov              rsi, qword ptr [rip + .Lx1159_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_MUL_α]
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
                                                                                        jmp   n852_statement_end_α
n851_func_activate_β:
                                                                                        jmp   n850_statement_begin_β
.Lx1159_0:
                        .quad            .Lx1159_0_s
.Lx1159_0_s:
                        .string          "MUL"
.Lx1159_1:
                        .quad            .Lx1159_1_s
.Lx1159_1_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n852_statement_end_α:
                                                                                        jmp   n853_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n853_statement_begin_α:
                                                                                        jmp   n854_statement_end_α
n853_statement_begin_β:
                                                                                        jmp   n855_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n854_statement_end_α:
                                                                                        jmp   n855_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n855_statement_begin_α:
                                                                                        jmp   n856_func_activate_α
n855_statement_begin_β:
                                                                                        jmp   n858_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n856_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1169_0]
                        mov              rsi, qword ptr [rip + .Lx1169_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_DIV_α]
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
                                                                                        jmp   n857_statement_end_α
n856_func_activate_β:
                                                                                        jmp   n855_statement_begin_β
.Lx1169_0:
                        .quad            .Lx1169_0_s
.Lx1169_0_s:
                        .string          "DIV"
.Lx1169_1:
                        .quad            .Lx1169_1_s
.Lx1169_1_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n857_statement_end_α:
                                                                                        jmp   n858_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n858_statement_begin_α:
                                                                                        jmp   n859_statement_end_α
n858_statement_begin_β:
                                                                                        jmp   n860_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n859_statement_end_α:
                                                                                        jmp   n860_statement_begin_α
#=======================================================================================================================
#         DEFINE('SGN()p1')                       :(SGN_x)
#-----------------------------------------------------------------------------------------------------------------------
n860_statement_begin_α:
                                                                                        jmp   n861_func_activate_α
n860_statement_begin_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n861_func_activate_α:
                        mov              rdi, qword ptr [rip + .Lx1179_0]
                        mov              rsi, qword ptr [rip + .Lx1179_1]
                        mov              edx, 1
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + proc_SGN_α]
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
                                                                                        jmp   n862_statement_end_α
n861_func_activate_β:
                                                                                        jmp   n860_statement_begin_β
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          "SGN"
.Lx1179_1:
                        .quad            .Lx1179_1_s
.Lx1179_1_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n862_statement_end_α:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n863_statement_begin_α:
                                                                                        jmp   n864_statement_end_α
n863_statement_begin_β:
                                                                                        jmp   n865_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n864_statement_end_α:
                                                                                        jmp   n865_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n865_statement_begin_α:
                                                                                        jmp   n866_lit_integer_α
n865_statement_begin_β:
                                                                                        jmp   n870_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n866_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n867_call_α
.Lx1188_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n867_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1190:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1190]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1189_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n865_statement_begin_β
.Lx1189_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n868_assign_α
n867_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n865_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n868_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax                      # S
                        mov              qword ptr [r9 + 168], rdx
                                                                                        jmp   n869_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n869_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n870_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n870_statement_begin_α:
                                                                                        jmp   n871_keyword_snobol4_α
n870_statement_begin_β:
                                                                                        jmp   n874_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n871_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1196_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_keyword_read_snobol4@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n872_assign_α
.Lx1196_0:
                        .quad            .Lx1196_0_s
.Lx1196_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n872_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax                      # LCASE
                        mov              qword ptr [r9 + 232], rdx
                                                                                        jmp   n873_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n873_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n874_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n874_statement_begin_α:
                                                                                        jmp   n875_lit_string_α
n874_statement_begin_β:
                                                                                        jmp   n878_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n875_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n876_assign_α
.Lx1202_0:
                        .quad            .Lx1202_0_s
.Lx1202_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n876_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax                      # DIGITS
                        mov              qword ptr [r9 + 248], rdx
                                                                                        jmp   n877_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n877_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n878_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n878_statement_begin_α:
                                                                                        jmp   n879_lit_string_α
n878_statement_begin_β:
                                                                                        jmp   n883_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n880_call_α
.Lx1208_0:
                        .quad            .Lx1208_0_s
.Lx1208_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n880_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1210:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1210]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1209_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n878_statement_begin_β
.Lx1209_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n881_assign_α
n880_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n878_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n881_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax                      # V
                        mov              qword ptr [r9 + 264], rdx
                                                                                        jmp   n882_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n882_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n883_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n883_statement_begin_α:
                                                                                        jmp   n884_lit_string_α
n883_statement_begin_β:
                                                                                        jmp   n888_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1216_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n885_call_α
.Lx1216_0:
                        .quad            .Lx1216_0_s
.Lx1216_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n885_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1218:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1218]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1217_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n883_statement_begin_β
.Lx1217_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_assign_α
n885_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n883_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 272], rax                      # I
                        mov              qword ptr [r9 + 280], rdx
                                                                                        jmp   n887_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n887_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n888_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n888_statement_begin_α:
                                                                                        jmp   n889_var_α
n888_statement_begin_β:
                                                                                        jmp   n897_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 272]                      # I
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n890_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 528], rax                      # PAT$2$V1
                        mov              qword ptr [r9 + 536], rdx
                                                                                        jmp   n891_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 256]                      # V
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_assign_α
n891_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n888_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 512], rax                      # PAT$2$V0
                        mov              qword ptr [r9 + 520], rdx
                                                                                        jmp   n893_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1228_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n894_call_α
n893_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n891_var_β
.Lx1228_0:
                        .quad            .Lx1228_0_s
.Lx1228_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n894_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1230:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1230]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1229_240
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_β
.Lx1229_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n895_assign_α
n894_call_β:
                        add              rsp, 16
                                                                                        jmp   n893_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n895_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 288], rax                      # A
                        mov              qword ptr [r9 + 296], rdx
                                                                                        jmp   n896_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n896_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n897_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n897_statement_begin_α:
                                                                                        jmp   n898_var_α
n897_statement_begin_β:
                                                                                        jmp   n904_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n898_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 288]                      # A
                        mov              rdx, qword ptr [r9 + 296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n899_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n899_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 544], rax                      # PAT$3$V0
                        mov              qword ptr [r9 + 552], rdx
                                                                                        jmp   n900_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n900_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n901_call_α
n900_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n897_statement_begin_β
.Lx1238_0:
                        .quad            .Lx1238_0_s
.Lx1238_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n901_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1240:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1240]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1239_240
                        add              rsp, 16
                                                                                        jmp   n900_lit_string_β
.Lx1239_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n902_assign_α
n901_call_β:
                        add              rsp, 16
                                                                                        jmp   n900_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n902_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 304], rax                      # F
                        mov              qword ptr [r9 + 312], rdx
                                                                                        jmp   n903_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n903_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n904_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n904_statement_begin_α:
                                                                                        jmp   n905_var_α
n904_statement_begin_β:
                                                                                        jmp   n915_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n905_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n906_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 592], rax                      # PAT$4$V2
                        mov              qword ptr [r9 + 600], rdx
                                                                                        jmp   n907_var_α
#-----------------------------------------------------------------------------------------------------------------------
n907_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_assign_α
n907_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n904_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n908_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 576], rax                      # PAT$4$V1
                        mov              qword ptr [r9 + 584], rdx
                                                                                        jmp   n909_var_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 304]                      # F
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n910_assign_α
n909_var_β:
                        add              rsp, 16
                                                                                        jmp   n907_var_β
#-----------------------------------------------------------------------------------------------------------------------
n910_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 560], rax                      # PAT$4$V0
                        mov              qword ptr [r9 + 568], rdx
                                                                                        jmp   n911_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1252_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n912_call_α
n911_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n909_var_β
.Lx1252_0:
                        .quad            .Lx1252_0_s
.Lx1252_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n912_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1254:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1254]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1253_240
                        add              rsp, 16
                                                                                        jmp   n911_lit_string_β
.Lx1253_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n913_assign_α
n912_call_β:
                        add              rsp, 16
                                                                                        jmp   n911_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n913_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 320], rax                      # T
                        mov              qword ptr [r9 + 328], rdx
                                                                                        jmp   n914_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n914_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n915_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n915_statement_begin_α:
                                                                                        jmp   n916_var_α
n915_statement_begin_β:
                                                                                        jmp   n926_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n917_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 640], rax                      # PAT$5$V2
                        mov              qword ptr [r9 + 648], rdx
                                                                                        jmp   n918_var_α
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n919_assign_α
n918_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n915_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n919_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 624], rax                      # PAT$5$V1
                        mov              qword ptr [r9 + 632], rdx
                                                                                        jmp   n920_var_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 320]                      # T
                        mov              rdx, qword ptr [r9 + 328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n921_assign_α
n920_var_β:
                        add              rsp, 16
                                                                                        jmp   n918_var_β
#-----------------------------------------------------------------------------------------------------------------------
n921_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 608], rax                      # PAT$5$V0
                        mov              qword ptr [r9 + 616], rdx
                                                                                        jmp   n922_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1266_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n923_call_α
n922_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n920_var_β
.Lx1266_0:
                        .quad            .Lx1266_0_s
.Lx1266_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n923_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1268:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1268]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1267_240
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_β
.Lx1267_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n924_assign_α
n923_call_β:
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n924_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 336], rax                      # X
                        mov              qword ptr [r9 + 344], rdx
                                                                                        jmp   n925_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n925_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n926_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n926_statement_begin_α:
                                                                                        jmp   n927_lit_string_α
n926_statement_begin_β:
                                                                                        jmp   n931_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1274_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n928_call_α
.Lx1274_0:
                        .quad            .Lx1274_0_s
.Lx1274_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n928_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1276:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1276]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1275_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n926_statement_begin_β
.Lx1275_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n929_assign_α
n928_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n926_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n929_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 352], rax                      # eol
                        mov              qword ptr [r9 + 360], rdx
                                                                                        jmp   n930_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n930_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n931_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n931_statement_begin_α:
                                                                                        jmp   n932_var_α
n931_statement_begin_β:
                                                                                        jmp   n942_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n932_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 384]                      # epsilon
                        mov              rdx, qword ptr [r9 + 392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n933_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n933_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 688], rax                      # PAT$7$V2
                        mov              qword ptr [r9 + 696], rdx
                                                                                        jmp   n934_var_α
#-----------------------------------------------------------------------------------------------------------------------
n934_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 352]                      # eol
                        mov              rdx, qword ptr [r9 + 360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n935_assign_α
n934_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n931_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n935_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 672], rax                      # PAT$7$V1
                        mov              qword ptr [r9 + 680], rdx
                                                                                        jmp   n936_var_α
#-----------------------------------------------------------------------------------------------------------------------
n936_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 336]                      # X
                        mov              rdx, qword ptr [r9 + 344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n937_assign_α
n936_var_β:
                        add              rsp, 16
                                                                                        jmp   n934_var_β
#-----------------------------------------------------------------------------------------------------------------------
n937_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 656], rax                      # PAT$7$V0
                        mov              qword ptr [r9 + 664], rdx
                                                                                        jmp   n938_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n938_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1288_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n939_call_α
n938_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n936_var_β
.Lx1288_0:
                        .quad            .Lx1288_0_s
.Lx1288_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n939_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1290:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1290]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1289_240
                        add              rsp, 16
                                                                                        jmp   n938_lit_string_β
.Lx1289_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n940_assign_α
n939_call_β:
                        add              rsp, 16
                                                                                        jmp   n938_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n940_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 368], rax                      # C
                        mov              qword ptr [r9 + 376], rdx
                                                                                        jmp   n941_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n941_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n942_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n942_statement_begin_α:
                                                                                        jmp   n943_lit_string_α
n942_statement_begin_β:
                                                                                        jmp   n947_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1296_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n944_lit_integer_α
.Lx1296_0:
                        .quad            .Lx1296_0_s
.Lx1296_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1297_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n945_call_α
n944_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n942_statement_begin_β
.Lx1297_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n945_call_α:
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
.Lrkfnzd1299:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1299]
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
                                                                                        jne   .Lx1298_240
                        add              rsp, 16
                                                                                        jmp   n944_lit_integer_β
.Lx1298_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_statement_end_α
n945_call_β:
                        add              rsp, 16
                                                                                        jmp   n944_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n946_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n947_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n947_statement_begin_α:
                                                                                        jmp   n948_lit_integer_α
n947_statement_begin_β:
                                                                                        jmp   n952_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n949_call_α
.Lx1304_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n949_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lbynamefnzd432:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd432]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1305_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n947_statement_begin_β
.Lx1305_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n950_assign_α
n949_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n947_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n950_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 400], rax                      # nl
                        mov              qword ptr [r9 + 408], rdx
                                                                                        jmp   n951_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n951_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n952_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n952_statement_begin_α:
                                                                                        jmp   n953_call_α
n952_statement_begin_β:
                                                                                        jmp   n956_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n953_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1312:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1312]
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
                                                                                        jne   .Lx1311_240
                        add              rsp, 16
                                                                                        jmp   n952_statement_begin_β
.Lx1311_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n954_assign_α
n953_call_β:
                        add              rsp, 16
                                                                                        jmp   n952_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n954_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax                      # vars
                        mov              qword ptr [r9 + 216], rdx
                                                                                        jmp   n955_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n955_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n956_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n956_statement_begin_α:
                                                                                        jmp   n957_var_α
n956_statement_begin_β:
                                                                                        jmp   n963_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n957_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n958_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n958_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1319_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n959_subscript_α
n958_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n956_statement_begin_β
.Lx1319_0:
                        .quad            .Lx1319_0_s
.Lx1319_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n959_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1320_240
                        add              rsp, 16
                                                                                        jmp   n958_lit_string_β
.Lx1320_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n960_lit_integer_α
n959_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n958_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n960_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1321_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n961_assign_var_α
n960_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n959_subscript_β
.Lx1321_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n961_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1322_240
                        add              rsp, 16
                                                                                        jmp   n960_lit_integer_β
.Lx1322_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n962_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n962_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n963_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n963_statement_begin_α:
                                                                                        jmp   n964_var_α
n963_statement_begin_β:
                                                                                        jmp   n970_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n964_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n965_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n965_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1328_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n966_subscript_α
n965_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n963_statement_begin_β
.Lx1328_0:
                        .quad            .Lx1328_0_s
.Lx1328_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n966_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1329_240
                        add              rsp, 16
                                                                                        jmp   n965_lit_string_β
.Lx1329_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_lit_integer_α
n966_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n965_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1330_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n968_assign_var_α
n967_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n966_subscript_β
.Lx1330_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n968_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1331_240
                        add              rsp, 16
                                                                                        jmp   n967_lit_integer_β
.Lx1331_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n969_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n969_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n970_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n970_statement_begin_α:
                                                                                        jmp   n971_var_α
n970_statement_begin_β:
                                                                                        jmp   n977_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n971_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]                      # vars
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n972_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n972_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1337_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n973_subscript_α
n972_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n970_statement_begin_β
.Lx1337_0:
                        .quad            .Lx1337_0_s
.Lx1337_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1338_240
                        add              rsp, 16
                                                                                        jmp   n972_lit_string_β
.Lx1338_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n974_lit_integer_α
n973_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n972_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n974_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1339_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n975_assign_var_α
n974_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n973_subscript_β
.Lx1339_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n975_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1340_240
                        add              rsp, 16
                                                                                        jmp   n974_lit_integer_β
.Lx1340_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n976_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n976_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n977_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n977_statement_begin_α:
                                                                                        jmp   n978_var_α
n977_statement_begin_β:
                                                                                        jmp   n1025_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n978_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1345_0]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             NV_GET_fn@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1345_240
                        add              rsp, 16
                                                                                        jmp   n977_statement_begin_β
.Lx1345_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n979_assign_α
.Lx1345_0:
                        .quad            .Lx1345_0_s
.Lx1345_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n979_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 416], rax                      # line
                        mov              qword ptr [r9 + 424], rdx
                                                                                        jmp   n980_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n980_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n981_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n981_statement_begin_α:
                                                                                        jmp   n982_var_α
n981_statement_begin_β:
                                                                                        jmp   n989_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n982_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n983_var_α
#-----------------------------------------------------------------------------------------------------------------------
n983_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 416]                      # line
                        mov              rdx, qword ptr [r9 + 424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n984_binop_α
n983_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n981_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n984_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                                                                                        jmp   n985_var_α
n984_binop_β:
                        add              rsp, 16
                                                                                        jmp   n983_var_β
#-----------------------------------------------------------------------------------------------------------------------
n985_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 400]                      # nl
                        mov              rdx, qword ptr [r9 + 408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n986_binop_α
n985_var_β:
                        add              rsp, 16
                                                                                        jmp   n984_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n986_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
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
                                                                                        jmp   n987_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n987_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx
                                                                                        jmp   n988_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n988_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n989_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n989_statement_begin_α:
                                                                                        jmp   n990_var_α
n989_statement_begin_β:
                                                                                        jmp   n977_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n990_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n991_call_α
#-----------------------------------------------------------------------------------------------------------------------
n991_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1363:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1363]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1362_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n989_statement_begin_β
.Lx1362_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n992_lit_integer_α
n991_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n989_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n992_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1364_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n993_coerce_numeric_α
n992_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n989_statement_begin_β
.Lx1364_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n993_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1366_1
                        cmp              eax, 3
                                                                                        jne   .Lx1366_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1366_0
.Lx1366_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n994_coerce_numeric_α
.Lx1366_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111
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
                                                                                        jmp   n994_coerce_numeric_α
n993_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n992_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n994_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1368_1
                        cmp              eax, 3
                                                                                        jne   .Lx1368_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1368_0
.Lx1368_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n995_cmp_test_α
.Lx1368_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112
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
                                                                                        jmp   n995_cmp_test_α
n994_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n993_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n995_cmp_test_α:
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
                                                                                        jg    .Lx1370_240
                        add              rsp, 16
                                                                                        jmp   n994_coerce_numeric_β
.Lx1370_240:
                                                                                        jmp   n996_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n996_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n997_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n997_statement_begin_α:
                                                                                        jmp   n998_var_α
n997_statement_begin_β:
                                                                                        jmp   n1003_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n998_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n999_var_α
#-----------------------------------------------------------------------------------------------------------------------
n999_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1000_binop_α
n999_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n997_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1000_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                                                                                        jmp   n1001_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx
                                                                                        jmp   n1002_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1003_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n1003_statement_begin_α:
                                                                                        jmp   n1004_lit_string_α
n1003_statement_begin_β:
                                                                                        jmp   n1007_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1383_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1005_assign_α
.Lx1383_0:
                        .quad            .Lx1383_0_s
.Lx1383_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1005_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 432], rax                      # b1
                        mov              qword ptr [r9 + 440], rdx
                                                                                        jmp   n1006_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1007_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n1007_statement_begin_α:
                                                                                        jmp   n1008_var_α
n1007_statement_begin_β:
                                                                                        jmp   n977_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1009_call_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1391:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1391]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1390_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_statement_begin_β
.Lx1390_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1010_lit_integer_α
n1009_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1007_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1010_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1392_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1011_coerce_numeric_α
n1010_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n1007_statement_begin_β
.Lx1392_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n1011_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1394_1
                        cmp              eax, 3
                                                                                        jne   .Lx1394_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1394_0
.Lx1394_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n1012_coerce_numeric_α
.Lx1394_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111
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
                                                                                        jmp   n1012_coerce_numeric_α
n1011_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n1010_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n1012_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1396_1
                        cmp              eax, 3
                                                                                        jne   .Lx1396_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1396_0
.Lx1396_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n1013_cmp_test_α
.Lx1396_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112
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
                                                                                        jmp   n1013_cmp_test_α
n1012_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n1011_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n1013_cmp_test_α:
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
                                                                                        jg    .Lx1398_240
                        add              rsp, 16
                                                                                        jmp   n1012_coerce_numeric_β
.Lx1398_240:
                                                                                        jmp   n1014_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1014_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n1015_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n1015_statement_begin_α:
                                                                                        jmp   n1016_var_α
n1015_statement_begin_β:
                                                                                        jmp   n1021_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1017_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1018_binop_α
n1017_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1015_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1018_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                                                                                        jmp   n1019_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx
                                                                                        jmp   n1020_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1021_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n1021_statement_begin_α:
                                                                                        jmp   n1022_lit_string_α
n1021_statement_begin_β:
                                                                                        jmp   n977_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1411_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1023_assign_α
.Lx1411_0:
                        .quad            .Lx1411_0_s
.Lx1411_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1023_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 448], rax                      # b2
                        mov              qword ptr [r9 + 456], rdx
                                                                                        jmp   n1024_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n977_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n1025_statement_begin_α:
                                                                                        jmp   n1026_var_α
n1025_statement_begin_β:
                                                                                        jmp   n1033_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1027_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 448]                      # b2
                        mov              rdx, qword ptr [r9 + 456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1028_binop_α
n1027_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1025_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1028_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
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
                                                                                        jmp   n1029_var_α
n1028_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1027_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1029_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 432]                      # b1
                        mov              rdx, qword ptr [r9 + 440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1030_binop_α
n1029_var_β:
                        add              rsp, 16
                                                                                        jmp   n1028_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n1030_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
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
                                                                                        jmp   n1031_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 464], rax                      # src
                        mov              qword ptr [r9 + 472], rdx
                                                                                        jmp   n1032_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1033_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1033_statement_begin_α:
                                                                                        jmp   n1034_call_α
n1033_statement_begin_β:
                                                                                        jmp   n1037_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1428:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1428]
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
                                                                                        jne   .Lx1427_240
                        add              rsp, 16
                                                                                        jmp   n1033_statement_begin_β
.Lx1427_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1035_assign_α
n1034_call_β:
                        add              rsp, 16
                                                                                        jmp   n1033_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1035_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 480], rax                      # t0
                        mov              qword ptr [r9 + 488], rdx
                                                                                        jmp   n1036_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1037_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n1037_statement_begin_α:
                                                                                        jmp   n1038_var_α
n1037_statement_begin_β:
                                                                                        jmp   n1057_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 464]                      # src
                        mov              rdx, qword ptr [r9 + 472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 368]                      # C
                        mov              rdx, qword ptr [r9 + 376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1040_assign_α
n1039_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1057_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1436_0]
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
                                                                                        jmp   n1041_match_begin_α
n1040_assign_β:
                                                                                        jmp   n1039_var_β
.Lx1436_0:
                        .quad            .Lx1436_0_s
.Lx1436_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n1041_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 24], r13                      # outer_Σ
                        mov              qword ptr [rsp + 32], r14                      # outer_δ
                        mov              qword ptr [rsp + 40], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 48], rax                      # cap_gen
                        mov              qword ptr [rsp + 16], rsp                      # old____
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
                        mov              qword ptr [rsp + 8], rsp                       # zls2_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx1438_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n1042_match_defer_α
n1041_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx1438_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1438_1
                                                                                        jmp   .Lx1438_0
.Lx1438_1:
n1041_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 48]                      # cap_gen
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
                        add              rsp, 64                                        # old____
                                                                                        jmp   n1040_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n1042_match_defer_α:
                        lea              rdi, [rip + .S25]
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
                                                                                        jz    .Lx1439_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx1439_4]
                        lea              r11, [rip + .Lx1439_5]
                                                                                        jmp   rax
.Lx1439_4:
                                                                                        jmp   n1043_match_end_α
.Lx1439_5:
                                                                                        jmp   n1041_match_begin_β
.Lx1439_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S25]
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
.Lx1439_2:
                        test             rax, rax
                                                                                        je    .Lx1439_3
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
                        lea              rcx, [rip + .Lx1439_7]
                        lea              rdx, [rip + .Lx1439_8]
                                                                                        jmp   rax
.Lx1439_7:
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
                                                                                        jmp   .Lx1439_2
.Lx1439_8:
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
                                                                                        jmp   .Lx1439_2
.Lx1439_3:
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
                                                                                        js    n1041_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1439_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n1043_match_end_α
.Lx1439_6:
                        add              rsp, 16
                                                                                        jmp   n1041_match_begin_β
n1042_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1043_match_end_α:
                        mov              r8, r12
.Lx1441_9:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1441_9
                        mov              rsp, qword ptr [r8 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r8, rsi
.Lx1441_5:
                        sub              r8, 24
                        mov              rax, qword ptr [r8 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1441_5
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
.Lx1441_1:
                        test             rax, rax
                                                                                        je    .Lx1441_2
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
                        lea              rcx, [rip + .Lx1441_3]
                        lea              rdx, [rip + .Lx1441_4]
                                                                                        jmp   rax
.Lx1441_3:
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
                                                                                        jmp   .Lx1441_1
.Lx1441_4:
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
                                                                                        jmp   .Lx1441_1
.Lx1441_2:
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
.Lx1441_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1441_10
                        mov              r13, qword ptr [rsp + 24]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 32]                      # outer_δ
                        mov              r15, qword ptr [rsp + 40]                      # outer_Δ
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
                                                                                        jmp   n1044_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n1045_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1045_statement_begin_α:
                                                                                        jmp   n1046_call_α
n1045_statement_begin_β:
                                                                                        jmp   n1049_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1447:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1447]
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
                                                                                        jne   .Lx1446_240
                        add              rsp, 16
                                                                                        jmp   n1045_statement_begin_β
.Lx1446_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1047_assign_α
n1046_call_β:
                        add              rsp, 16
                                                                                        jmp   n1045_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1047_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx
                                                                                        jmp   n1048_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1049_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n1049_statement_begin_α:
                                                                                        jmp   n1050_lit_string_α
n1049_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1453_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1051_var_α
.Lx1453_0:
                        .quad            .Lx1453_0_s
.Lx1453_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1052_var_α
n1051_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1049_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1052_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1053_binop_α
n1052_var_β:
                        add              rsp, 16
                                                                                        jmp   n1051_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1053_binop_α:
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
                                                                                        jne   .Lx1456_240
                        add              rsp, 16
                                                                                        jmp   n1052_var_β
.Lx1456_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n1054_binop_α
n1053_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1052_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1054_binop_α:
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
                                                                                        jmp   n1055_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1458_0]
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
                                                                                        jmp   n1056_statement_end_α
.Lx1458_0:
                        .quad            .Lx1458_0_s
.Lx1458_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1056_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1057_statement_begin_α:
                                                                                        jmp   n1058_call_α
n1057_statement_begin_β:
                                                                                        jmp   n1061_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1464:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1464]
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
                                                                                        jne   .Lx1463_240
                        add              rsp, 16
                                                                                        jmp   n1057_statement_begin_β
.Lx1463_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1059_assign_α
n1058_call_β:
                        add              rsp, 16
                                                                                        jmp   n1057_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1059_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 496], rax                      # t1
                        mov              qword ptr [r9 + 504], rdx
                                                                                        jmp   n1060_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1061_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n1061_statement_begin_α:
                                                                                        jmp   n1062_lit_string_α
n1061_statement_begin_β:
                                                                                        jmp   n1065_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1470_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1063_assign_α
.Lx1470_0:
                        .quad            .Lx1470_0_s
.Lx1470_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n1063_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1471_0]
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
                                                                                        jmp   n1064_statement_end_α
.Lx1471_0:
                        .quad            .Lx1471_0_s
.Lx1471_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1064_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1065_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n1065_statement_begin_α:
                                                                                        jmp   n1066_lit_string_α
n1065_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1066_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1476_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1067_var_α
.Lx1476_0:
                        .quad            .Lx1476_0_s
.Lx1476_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n1067_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 496]                      # t1
                        mov              rdx, qword ptr [r9 + 504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1068_var_α
n1067_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1065_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 480]                      # t0
                        mov              rdx, qword ptr [r9 + 488]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1069_binop_α
n1068_var_β:
                        add              rsp, 16
                                                                                        jmp   n1067_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1069_binop_α:
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
                                                                                        jne   .Lx1479_240
                        add              rsp, 16
                                                                                        jmp   n1068_var_β
.Lx1479_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                                                                                        jmp   n1070_binop_α
n1069_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1068_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1070_binop_α:
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
                                                                                        jmp   n1071_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx1481_0]
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
                                                                                        jmp   n1072_statement_end_α
.Lx1481_0:
                        .quad            .Lx1481_0_s
.Lx1481_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1072_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1073_goto_α:
                                                                                        jmp   n828_statement_begin_α
n1073_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1074_goto_α:
                                                                                        jmp   n833_statement_begin_α
n1074_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1075_goto_α:
                                                                                        jmp   n1076_statement_begin_α
n1075_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1076_statement_begin_α:
                                                                                        jmp   n1077_var_α
n1076_statement_begin_β:
                                                                                        jmp   n1080_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]                       # nm
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1078_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1078_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax                       # DRF
                        mov              qword ptr [r9 + 40], rdx
                                                                                        jmp   n1079_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1079_statement_end_α:
                                                                                        jmp   n1080_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1080_save_restore_α:
                        lea              rdi, [rip + .S0]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n1081_goto_α:
                                                                                        jmp   n838_statement_begin_α
n1081_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1082_goto_α:
                                                                                        jmp   n843_statement_begin_α
n1082_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1083_goto_α:
                                                                                        jmp   n848_statement_begin_α
n1083_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1084_goto_α:
                                                                                        jmp   n853_statement_begin_α
n1084_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1085_goto_α:
                                                                                        jmp   n858_statement_begin_α
n1085_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1086_goto_α:
                                                                                        jmp   n1087_statement_begin_α
n1086_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n1087_statement_begin_α:
                                                                                        jmp   n1088_var_α
n1087_statement_begin_β:
                                                                                        jmp   n1094_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1088_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]                      # S
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1089_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1089_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]                      # sp
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1090_subscript_α
n1089_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1087_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1090_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_subscript_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1505_240
                        add              rsp, 16
                                                                                        jmp   n1089_var_β
.Lx1505_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1091_var_α
n1090_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1089_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1091_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]                       # p1
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1092_assign_var_α
n1091_var_β:
                        add              rsp, 16
                                                                                        jmp   n1090_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1092_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              qword ptr [rax + 40], r8
                        mov              qword ptr [rax + 56], r10
                        mov              qword ptr [rax + 64], r11
                        call             rt_assign_var@PLT
                        mov              r11, qword ptr [rip + g_rtcc_block@GOTPCREL]
                        mov              r8,   qword ptr [r11 + 40]
                        mov              r9,   qword ptr [r11 + 48]
                        mov              r10,  qword ptr [r11 + 56]
                        mov              r11,  qword ptr [r11 + 64]
                        cmp              eax, 104
                                                                                        jne   .Lx1507_240
                        add              rsp, 16
                                                                                        jmp   n1091_var_β
.Lx1507_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1093_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1093_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1094_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1094_statement_begin_α:
                                                                                        jmp   n1095_lit_string_α
n1094_statement_begin_β:
                                                                                        jmp   n1099_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1095_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1512_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1096_call_α
.Lx1512_0:
                        .quad            .Lx1512_0_s
.Lx1512_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1514:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1514]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1513_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1094_statement_begin_β
.Lx1513_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1097_assign_α
n1096_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1094_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1097_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax                      # SGN
                        mov              qword ptr [r9 + 152], rdx
                                                                                        jmp   n1098_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1098_statement_end_α:
                                                                                        jmp   n1099_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1099_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1100_call_α
.Lx1518_0:
                        .quad            .Lx1518_0_s
.Lx1518_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1100_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd1520:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1520]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
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
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1519_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1101_save_restore_α
.Lx1519_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n1080_save_restore_α
n1100_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1101_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1101_save_restore_α:
                        lea              rdi, [rip + .S1]
                        call             rt_bomb@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
n1102_goto_α:
                                                                                        jmp   n863_statement_begin_α
n1102_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1103_goto_α:
                                                                                        jmp   n977_statement_begin_α
n1103_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1104_goto_α:
                                                                                        jmp   n1025_statement_begin_α
n1104_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1105_goto_α:
                                                                                        jmp   n1057_statement_begin_α
n1105_goto_β:
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
.S0:                    .string          "BOMB-RETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S1:                    .string          "BOMB-FRETURN: descent complete, coming-out frozen (s58 RSP-only) \342\200\224 UNKNOWN STACK DEPTH: the rsp-resident record cannot be found from here without a frame anchor"
.S2:                    .string          "*PSH"
.S3:                    .string          "X"
.S4:                    .string          "PAT$2$V1"
.S5:                    .string          "PAT$2$V0"
.S6:                    .string          "F"
.S7:                    .string          "*SGN"
.S8:                    .string          "PAT$3$V0"
.S9:                    .string          "PAT$4$V0"
.S10:                   .string          "IR_MATCH_ARBNO: unreachable beta (defer-unsafe decline)"
.S11:                   .string          "IR_MATCH_ARBNO: body contains a suspend-capable DEFER (pat_static=0) -- anchor-relative slot not yet implemented (W-4)"
.S12:                   .string          "PAT$4$V2"
.S13:                   .string          "*DIV"
.S14:                   .string          "PAT$4$V1"
.S15:                   .string          "*MUL"
.S16:                   .string          "PAT$5$V0"
.S17:                   .string          "PAT$5$V2"
.S18:                   .string          "*SUB"
.S19:                   .string          "PAT$5$V1"
.S20:                   .string          "*ADD"
.S21:                   .string          "PAT$7$V0"
.S22:                   .string          "PAT$7$V1"
.S23:                   .string          "PAT$7$V2"
.S24:                   .string          "*EMIT"
.S25:                   .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
