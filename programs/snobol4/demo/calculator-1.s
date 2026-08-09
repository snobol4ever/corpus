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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx28_0]                 # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx28_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx28_6]
                        lea              rdx, [rip + .Lx28_7]
                                                                                        jmp   rax
.Lx28_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx28_2
.Lx28_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx28_2
.Lx28_5:
                        add              rsp, 32
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
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx29_0]                 # name
                        call             NV_SET_fn@PLT
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
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd42:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd42]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd48:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd48]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx50_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx50_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx52_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx52_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_β:
                                                                                        jmp   proc_LBL__EMIT_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__EMIT_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx73_240
                        add              rsp, 16
                                                                                        jmp   n55_lit_integer_β
.Lx73_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd87:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd87]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx89_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx89_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n68_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx91_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx91_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_β:
                                                                                        jmp   proc_LBL__PSH_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__PSH_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 584], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        sub              rsp, 64
                        mov              qword ptr [rsp + 48], r13                      # outer_Σ
                        mov              qword ptr [rsp + 56], r14                      # outer_δ
                        mov              qword ptr [rsp + 64], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 72], rax                      # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
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
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 72]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rsp + 40]                      # old_rbp
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
                        mov              r10, r12
.Lx126_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_9
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx126_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx126_1:
                        test             rax, rax
                                                                                        je    .Lx126_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx126_3]
                        lea              rdx, [rip + .Lx126_4]
                                                                                        jmp   rax
.Lx126_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx126_1
.Lx126_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx126_1
.Lx126_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rsp + 40]                      # old_rbp
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
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
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
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n112_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n113_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n113_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx145_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx145_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_β:
                                                                                        jmp   proc_LBL__DRF_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DRF_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx189_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx189_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx189_6]
                        lea              rdx, [rip + .Lx189_7]
                                                                                        jmp   rax
.Lx189_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx189_2
.Lx189_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx189_2
.Lx189_5:
                        add              rsp, 32
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
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx197_240
                        add              rsp, 16
                                                                                        jmp   n156_lit_integer_β
.Lx197_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n165_var_α
n164_var_β:
                        add              rsp, 16
                                                                                        jmp   n163_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx211_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx211_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx211_6]
                        lea              rdx, [rip + .Lx211_7]
                                                                                        jmp   rax
.Lx211_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx211_2
.Lx211_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx211_2
.Lx211_5:
                        add              rsp, 32
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
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
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx213_240
                        add              rsp, 16
                                                                                        jmp   n169_var_β
.Lx213_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n171_assign_var_α
n170_binop_β:
                        add              rsp, 16
                                                                                        jmp   n169_var_β
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd221:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd221]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd227:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd227]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx229_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx229_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n181_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx231_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx231_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_β:
                                                                                        jmp   proc_LBL__ADD_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ADD_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx275_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx275_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx275_6]
                        lea              rdx, [rip + .Lx275_7]
                                                                                        jmp   rax
.Lx275_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_5:
                        add              rsp, 32
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
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx283_240
                        add              rsp, 16
                                                                                        jmp   n242_lit_integer_β
.Lx283_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n244_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n244_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n251_var_α
n250_var_β:
                        add              rsp, 16
                                                                                        jmp   n249_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx297_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx297_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx297_6]
                        lea              rdx, [rip + .Lx297_7]
                                                                                        jmp   rax
.Lx297_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx297_2
.Lx297_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx297_2
.Lx297_5:
                        add              rsp, 32
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx299_240
                        add              rsp, 16
                                                                                        jmp   n255_var_β
.Lx299_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n257_assign_var_α
n256_binop_β:
                        add              rsp, 16
                                                                                        jmp   n255_var_β
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd307:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd307]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd313:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd313]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx315_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx315_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n267_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx317_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx317_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_β:
                                                                                        jmp   proc_LBL__SUB_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SUB_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n320_var_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx361_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx361_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx361_6]
                        lea              rdx, [rip + .Lx361_7]
                                                                                        jmp   rax
.Lx361_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx361_2
.Lx361_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx361_2
.Lx361_5:
                        add              rsp, 32
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
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx369_240
                        add              rsp, 16
                                                                                        jmp   n328_lit_integer_β
.Lx369_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n330_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n334_var_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n337_var_α
n336_var_β:
                        add              rsp, 16
                                                                                        jmp   n335_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n337_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx383_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx383_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx383_6]
                        lea              rdx, [rip + .Lx383_7]
                                                                                        jmp   rax
.Lx383_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx383_2
.Lx383_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx383_2
.Lx383_5:
                        add              rsp, 32
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
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
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx385_240
                        add              rsp, 16
                                                                                        jmp   n341_var_β
.Lx385_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n343_assign_var_α
n342_binop_β:
                        add              rsp, 16
                                                                                        jmp   n341_var_β
#-----------------------------------------------------------------------------------------------------------------------
n343_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd393:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd393]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd399:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd399]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx401_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx401_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n353_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx403_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx403_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_β:
                                                                                        jmp   proc_LBL__MUL_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__MUL_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n406_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx447_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx447_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx447_6]
                        lea              rdx, [rip + .Lx447_7]
                                                                                        jmp   rax
.Lx447_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx447_2
.Lx447_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx447_2
.Lx447_5:
                        add              rsp, 32
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
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx455_240
                        add              rsp, 16
                                                                                        jmp   n414_lit_integer_β
.Lx455_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n416_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n420_var_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n423_var_α
n422_var_β:
                        add              rsp, 16
                                                                                        jmp   n421_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx469_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx469_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx469_6]
                        lea              rdx, [rip + .Lx469_7]
                                                                                        jmp   rax
.Lx469_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx469_2
.Lx469_5:
                        add              rsp, 32
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
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
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx471_240
                        add              rsp, 16
                                                                                        jmp   n427_var_β
.Lx471_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n429_assign_var_α
n428_binop_β:
                        add              rsp, 16
                                                                                        jmp   n427_var_β
#-----------------------------------------------------------------------------------------------------------------------
n429_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd479:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd479]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd485:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd485]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx487_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx487_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n439_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx489_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx489_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_β:
                                                                                        jmp   proc_LBL__DIV_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__DIV_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_α:
proc_LBL__NEG_α_body:
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n490_statement_begin_α:
                                                                                        jmp   n491_var_α
n490_statement_begin_β:
                                                                                        jmp   n502_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n492_var_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx515_240
                        add              rsp, 16
                                                                                        jmp   n492_var_β
.Lx515_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n494_var_α
n493_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n492_var_β
#-----------------------------------------------------------------------------------------------------------------------
n494_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n495_var_α
n494_var_β:
                        add              rsp, 16
                                                                                        jmp   n493_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n495_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n496_subscript_α
n495_var_β:
                        add              rsp, 16
                                                                                        jmp   n494_var_β
#-----------------------------------------------------------------------------------------------------------------------
n496_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx518_240
                        add              rsp, 16
                                                                                        jmp   n495_var_β
.Lx518_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n497_deref_α
n496_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n495_var_β
#-----------------------------------------------------------------------------------------------------------------------
n497_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx519_240
                        add              rsp, 16
                                                                                        jmp   n496_subscript_β
.Lx519_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n498_call_α
n497_deref_β:
                        add              rsp, 16
                                                                                        jmp   n496_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx521_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx521_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx521_6]
                        lea              rdx, [rip + .Lx521_7]
                                                                                        jmp   rax
.Lx521_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx521_2
.Lx521_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx521_2
.Lx521_5:
                        add              rsp, 32
.Lx521_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx521_240
                        add              rsp, 16
                                                                                        jmp   n497_deref_β
.Lx521_240:
                                                                                        jmp   n499_unop_α
n498_call_β:
                                                                                        jmp   n497_deref_β
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n499_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n500_assign_var_α
n499_unop_β:
                        add              rsp, 32
                                                                                        jmp   n497_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx523_240
                        add              rsp, 16
                                                                                        jmp   n499_unop_β
.Lx523_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n501_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n501_statement_end_α:
                        add              rsp, 160
                                                                                        jmp   n502_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n502_statement_begin_α:
                                                                                        jmp   n503_lit_string_α
n502_statement_begin_β:
                                                                                        jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n504_call_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n504_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd530:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd530]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx529_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n502_statement_begin_β
.Lx529_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n505_assign_α
n504_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n502_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n505_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n506_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n506_statement_end_α:
                                                                                        jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n508_call_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n508_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd536:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd536]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx535_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n510_save_restore_α
.Lx535_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n509_save_restore_α
n508_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n510_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n509_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx538_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx538_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n510_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx540_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx540_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_β:
                                                                                        jmp   proc_LBL__NEG_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__NEG_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_EMIT_α
proc_EMIT_α:
proc_EMIT_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n541_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n542_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n542_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx546_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx546_1
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "EMIT"
.Lx546_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_EMIT_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PSH_α
proc_PSH_α:
proc_PSH_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n547_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n548_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n548_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx552_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx552_1
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "PSH"
.Lx552_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PSH_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DRF_α
proc_DRF_α:
proc_DRF_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n553_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n554_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n554_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx558_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx558_1
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "DRF"
.Lx558_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_DRF_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ADD_α
proc_ADD_α:
proc_ADD_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n559_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n560_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n560_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx564_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx564_1
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "ADD"
.Lx564_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ADD_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_SUB_α
proc_SUB_α:
proc_SUB_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n565_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n566_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n566_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx570_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx570_1
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "SUB"
.Lx570_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_SUB_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_MUL_α
proc_MUL_α:
proc_MUL_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n571_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n572_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n572_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx576_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx576_1
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "MUL"
.Lx576_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_MUL_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_DIV_α
proc_DIV_α:
proc_DIV_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n577_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n578_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n578_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx582_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx582_1
.Lx582_0:
                        .quad            .Lx582_0_s
.Lx582_0_s:
                        .string          "DIV"
.Lx582_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_DIV_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_NEG_α
proc_NEG_α:
proc_NEG_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n583_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n584_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n584_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx588_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx588_1
.Lx588_0:
                        .quad            .Lx588_0_s
.Lx588_0_s:
                        .string          "NEG"
.Lx588_1:
                                                                                        jmp   proc_NEG_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_β:
                                                                                        jmp   proc_NEG_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_NEG_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n591_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n589_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n590_match_any_α
n589_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n590_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx595_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx595_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx595_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx595_240:
                        add              r14d, 1
                                                                                        jmp   n591_match_assign_cond_α
n590_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n591_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanhit
n591_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n590_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx598_0
                        mov              ecx, dword ptr [rbp + 104]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx598_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 112], 1
                                                                                        jne   .Lx599_0
                        mov              eax, dword ptr [rbp + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx599_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx599_0
                        mov              dword ptr [rbp + 104], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
.Lx599_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n602_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n600_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n601_match_span_α
n600_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n601_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx606_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx606_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx606_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx606_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx606_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx606_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx606_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx606_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx606_1
                        add              ecx, 1
                                                                                        jmp   .Lx606_0
.Lx606_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx606_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx606_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n602_match_assign_cond_α
n601_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n602_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                        add              rsp, 32
                                                                                        jmp   proc_PAT$1_scanhit
n602_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n601_match_span_β
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx609_0
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx609_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   .Lx610_0
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx610_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx610_0
                        mov              dword ptr [rbp + 88], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
.Lx610_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + n611_match_alternate_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n611_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx619_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n617_match_defer_α
.Lx619_21:
                        lea              rax, [rip + .Lx619_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n616_match_defer_α
.Lx619_22:
                        lea              rax, [rip + .Lx619_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n613_match_lit_α
n611_match_alternate_s0:
                        lea              rax, [rip + .Lx619_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n611_match_alternate_as
n611_match_alternate_s1:
                        lea              rax, [rip + .Lx619_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n611_match_alternate_as
n611_match_alternate_s2:
                        lea              rax, [rip + .Lx619_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n611_match_alternate_as
.Lx619_40:
                                                                                        jmp   n617_match_defer_β
.Lx619_41:
                                                                                        jmp   n616_match_defer_β
.Lx619_42:
                                                                                        jmp   n612_goto_β
n611_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n611_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n611_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx619_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n612_goto_α:
                                                                                        jmp   n611_match_alternate_af
n612_goto_β:
                                                                                        jmp   n611_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n613_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n611_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n611_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n614_match_defer_α
n613_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n611_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n614_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx623_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx623_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx623_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx623_10
.Lx623_9:
                        xor              eax, eax
.Lx623_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx623_11:
                        test             rax, rax
                                                                                        jz    .Lx623_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx623_4]
                        lea              rdx, [rip + .Lx623_5]
                                                                                        jmp   rax
.Lx623_4:
                                                                                        jmp   n615_match_lit_α
.Lx623_5:
                                                                                        jmp   n613_match_lit_β
.Lx623_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx623_2:
                        test             rax, rax
                                                                                        je    .Lx623_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx623_7]
                        lea              rdx, [rip + .Lx623_8]
                                                                                        jmp   rax
.Lx623_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx623_2
.Lx623_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx623_2
.Lx623_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n613_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx623_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n615_match_lit_α
.Lx623_6:
                        add              rsp, 16
                                                                                        jmp   n613_match_lit_β
n614_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n615_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n614_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n614_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n611_match_alternate_s2
n615_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n614_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n616_match_defer_α:
                        mov              rax, qword ptr [1879052816]                    # PAT$2$V1
                        mov              rdx, qword ptr [1879052824]
                        cmp              eax, 8
                                                                                        jne   .Lx626_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx626_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx626_10
.Lx626_9:
                        xor              eax, eax
.Lx626_10:
                        test             rax, rax
                                                                                        jz    .Lx626_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx626_4]
                        lea              rdx, [rip + .Lx626_5]
                                                                                        jmp   rax
.Lx626_4:
                                                                                        jmp   n611_match_alternate_s1
.Lx626_5:
                                                                                        jmp   n611_match_alternate_af
.Lx626_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx626_2:
                        test             rax, rax
                                                                                        je    .Lx626_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx626_7]
                        lea              rdx, [rip + .Lx626_8]
                                                                                        jmp   rax
.Lx626_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx626_2
.Lx626_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx626_2
.Lx626_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n611_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx626_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n611_match_alternate_s1
.Lx626_6:
                        add              rsp, 16
                                                                                        jmp   n611_match_alternate_af
n616_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n617_match_defer_α:
                        mov              rax, qword ptr [1879052800]                    # PAT$2$V0
                        mov              rdx, qword ptr [1879052808]
                        cmp              eax, 8
                                                                                        jne   .Lx627_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx627_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx627_10
.Lx627_9:
                        xor              eax, eax
.Lx627_10:
                        test             rax, rax
                                                                                        jz    .Lx627_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx627_4]
                        lea              rdx, [rip + .Lx627_5]
                                                                                        jmp   rax
.Lx627_4:
                                                                                        jmp   n611_match_alternate_s0
.Lx627_5:
                                                                                        jmp   n611_match_alternate_af
.Lx627_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx627_2:
                        test             rax, rax
                                                                                        je    .Lx627_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx627_7]
                        lea              rdx, [rip + .Lx627_8]
                                                                                        jmp   rax
.Lx627_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx627_2
.Lx627_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx627_2
.Lx627_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n611_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx627_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n611_match_alternate_s0
.Lx627_6:
                        add              rsp, 16
                                                                                        jmp   n611_match_alternate_af
n617_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx628_0
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx628_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   .Lx629_0
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx629_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx629_0
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx629_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, qword ptr [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r8
                        mov              dword ptr [rsp + 184], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + n630_match_alternate_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n630_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx641_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n639_match_defer_α
.Lx641_21:
                        lea              rax, [rip + .Lx641_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n637_match_lit_α
.Lx641_22:
                        lea              rax, [rip + .Lx641_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n632_match_lit_α
n630_match_alternate_s0:
                        lea              rax, [rip + .Lx641_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n630_match_alternate_as
n630_match_alternate_s1:
                        lea              rax, [rip + .Lx641_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n630_match_alternate_as
n630_match_alternate_s2:
                        lea              rax, [rip + .Lx641_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n630_match_alternate_as
.Lx641_40:
                                                                                        jmp   n639_match_defer_β
.Lx641_41:
                                                                                        jmp   n636_goto_β
.Lx641_42:
                                                                                        jmp   n631_goto_β
n630_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n630_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n630_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx641_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n631_goto_α:
                                                                                        jmp   n630_match_alternate_af
n631_goto_β:
                                                                                        jmp   n630_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n632_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n630_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n630_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n633_match_assign_save_α
n632_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n630_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n633_match_assign_save_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n634_match_defer_α
n633_match_assign_save_β:
                                                                                        jmp   n632_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n634_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx647_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx647_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx647_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx647_10
.Lx647_9:
                        xor              eax, eax
.Lx647_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx647_11:
                        test             rax, rax
                                                                                        jz    .Lx647_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx647_4]
                        lea              rdx, [rip + .Lx647_5]
                                                                                        jmp   rax
.Lx647_4:
                                                                                        jmp   n635_match_assign_cond_α
.Lx647_5:
                                                                                        jmp   n633_match_assign_save_β
.Lx647_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx647_2:
                        test             rax, rax
                                                                                        je    .Lx647_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx647_7]
                        lea              rdx, [rip + .Lx647_8]
                                                                                        jmp   rax
.Lx647_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx647_2
.Lx647_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx647_2
.Lx647_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n633_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx647_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n635_match_assign_cond_α
.Lx647_6:
                        add              rsp, 16
                                                                                        jmp   n633_match_assign_save_β
n634_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n635_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 128]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n630_match_alternate_s2
n635_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n634_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n636_goto_α:
                                                                                        jmp   n630_match_alternate_af
n636_goto_β:
                                                                                        jmp   n630_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n637_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n630_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n630_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n638_match_defer_α
n637_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n630_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n638_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx653_11
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx653_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx653_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx653_10
.Lx653_9:
                        xor              eax, eax
.Lx653_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx653_11:
                        test             rax, rax
                                                                                        jz    .Lx653_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx653_4]
                        lea              rdx, [rip + .Lx653_5]
                                                                                        jmp   rax
.Lx653_4:
                                                                                        jmp   n630_match_alternate_s1
.Lx653_5:
                                                                                        jmp   n637_match_lit_β
.Lx653_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx653_2:
                        test             rax, rax
                                                                                        je    .Lx653_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx653_7]
                        lea              rdx, [rip + .Lx653_8]
                                                                                        jmp   rax
.Lx653_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx653_2
.Lx653_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx653_2
.Lx653_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n637_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx653_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n630_match_alternate_s1
.Lx653_6:
                        add              rsp, 16
                                                                                        jmp   n637_match_lit_β
n638_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n639_match_defer_α:
                        mov              rax, qword ptr [1879052832]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052840]
                        cmp              eax, 8
                                                                                        jne   .Lx654_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx654_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx654_10
.Lx654_9:
                        xor              eax, eax
.Lx654_10:
                        test             rax, rax
                                                                                        jz    .Lx654_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx654_4]
                        lea              rdx, [rip + .Lx654_5]
                                                                                        jmp   rax
.Lx654_4:
                                                                                        jmp   n630_match_alternate_s0
.Lx654_5:
                                                                                        jmp   n630_match_alternate_af
.Lx654_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx654_2:
                        test             rax, rax
                                                                                        je    .Lx654_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx654_7]
                        lea              rdx, [rip + .Lx654_8]
                                                                                        jmp   rax
.Lx654_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx654_2
.Lx654_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n630_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx654_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n630_match_alternate_s0
.Lx654_6:
                        add              rsp, 16
                                                                                        jmp   n630_match_alternate_af
n639_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx655_0
                        mov              ecx, dword ptr [rbp + 184]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx655_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 192], 1
                                                                                        jne   .Lx656_0
                        mov              eax, dword ptr [rbp + 184]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx656_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx656_0
                        mov              dword ptr [rbp + 184], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx656_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, qword ptr [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n657_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052848]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052856]
                        cmp              eax, 8
                                                                                        jne   .Lx670_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx670_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx670_10
.Lx670_9:
                        xor              eax, eax
.Lx670_10:
                        test             rax, rax
                                                                                        jz    .Lx670_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx670_4]
                        lea              rdx, [rip + .Lx670_5]
                                                                                        jmp   rax
.Lx670_4:
                                                                                        jmp   n658_match_alternate_α
.Lx670_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx670_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx670_2:
                        test             rax, rax
                                                                                        je    .Lx670_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx670_7]
                        lea              rdx, [rip + .Lx670_8]
                                                                                        jmp   rax
.Lx670_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx670_2
.Lx670_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx670_2
.Lx670_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx670_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx670_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx670_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n658_match_alternate_α
.Lx670_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
n657_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n658_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx672_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n666_match_lit_α
.Lx672_21:
                        lea              rax, [rip + .Lx672_22]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n661_match_lit_α
.Lx672_22:
                        lea              rax, [rip + .Lx672_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n659_match_lit_α
n658_match_alternate_s0:
                        lea              rax, [rip + .Lx672_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n658_match_alternate_as
n658_match_alternate_s1:
                        lea              rax, [rip + .Lx672_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n658_match_alternate_as
n658_match_alternate_s2:
                        lea              rax, [rip + .Lx672_42]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n658_match_alternate_as
.Lx672_40:
                                                                                        jmp   n665_goto_β
.Lx672_41:
                                                                                        jmp   n660_goto_β
.Lx672_42:
                                                                                        jmp   n659_match_lit_β
n658_match_alternate_as:
                                                                                        jmp   proc_PAT$4_γ
n658_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n658_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx672_19:
                                                                                        jmp   n657_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n659_match_lit_α:
                                                                                        jmp   n658_match_alternate_s2
n659_match_lit_β:
                                                                                        jmp   n658_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n660_goto_α:
                                                                                        jmp   n658_match_alternate_af
n660_goto_β:
                                                                                        jmp   n658_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n661_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n658_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n658_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n662_match_assign_save_α
n661_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n658_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n662_match_assign_save_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n663_match_defer_α
n662_match_assign_save_β:
                                                                                        jmp   n661_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n663_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx680_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx680_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx680_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx680_10
.Lx680_9:
                        xor              eax, eax
.Lx680_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx680_11:
                        test             rax, rax
                                                                                        jz    .Lx680_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx680_4]
                        lea              rdx, [rip + .Lx680_5]
                                                                                        jmp   rax
.Lx680_4:
                                                                                        jmp   n664_match_assign_cond_α
.Lx680_5:
                                                                                        jmp   n662_match_assign_save_β
.Lx680_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx680_2:
                        test             rax, rax
                                                                                        je    .Lx680_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx680_7]
                        lea              rdx, [rip + .Lx680_8]
                                                                                        jmp   rax
.Lx680_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx680_2
.Lx680_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx680_2
.Lx680_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n662_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx680_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n664_match_assign_cond_α
.Lx680_6:
                        add              rsp, 16
                                                                                        jmp   n662_match_assign_save_β
n663_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n664_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 176]
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n658_match_alternate_s1
n664_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n663_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n665_goto_α:
                                                                                        jmp   n658_match_alternate_af
n665_goto_β:
                                                                                        jmp   n658_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n666_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n658_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n658_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n667_match_assign_save_α
n666_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n658_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n667_match_assign_save_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n668_match_defer_α
n667_match_assign_save_β:
                                                                                        jmp   n666_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n668_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx688_11
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        cmp              eax, 8
                                                                                        jne   .Lx688_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx688_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx688_10
.Lx688_9:
                        xor              eax, eax
.Lx688_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx688_11:
                        test             rax, rax
                                                                                        jz    .Lx688_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx688_4]
                        lea              rdx, [rip + .Lx688_5]
                                                                                        jmp   rax
.Lx688_4:
                                                                                        jmp   n669_match_assign_cond_α
.Lx688_5:
                                                                                        jmp   n667_match_assign_save_β
.Lx688_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx688_2:
                        test             rax, rax
                                                                                        je    .Lx688_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx688_7]
                        lea              rdx, [rip + .Lx688_8]
                                                                                        jmp   rax
.Lx688_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx688_2
.Lx688_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx688_2
.Lx688_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n667_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx688_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n669_match_assign_cond_α
.Lx688_6:
                        add              rsp, 16
                                                                                        jmp   n667_match_assign_save_β
n668_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n669_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 112]
                        lea              rcx, [rip + .S10]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n658_match_alternate_s0
n669_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n668_match_defer_β
proc_PAT$4_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx691_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx691_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx692_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx692_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx692_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$4_attempt
.Lx692_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$4_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 240], r8
                        mov              dword ptr [rsp + 232], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n693_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052864]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 8
                                                                                        jne   .Lx706_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx706_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx706_10
.Lx706_9:
                        xor              eax, eax
.Lx706_10:
                        test             rax, rax
                                                                                        jz    .Lx706_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx706_4]
                        lea              rdx, [rip + .Lx706_5]
                                                                                        jmp   rax
.Lx706_4:
                                                                                        jmp   n694_match_alternate_α
.Lx706_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx706_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S11]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx706_2:
                        test             rax, rax
                                                                                        je    .Lx706_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx706_7]
                        lea              rdx, [rip + .Lx706_8]
                                                                                        jmp   rax
.Lx706_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx706_2
.Lx706_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx706_2
.Lx706_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx706_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx706_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx706_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n694_match_alternate_α
.Lx706_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n693_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n694_match_alternate_α:
                        mov              dword ptr [rbp + 32], r14d
                        lea              rax, [rip + .Lx708_21]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n702_match_lit_α
.Lx708_21:
                        lea              rax, [rip + .Lx708_22]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n697_match_lit_α
.Lx708_22:
                        lea              rax, [rip + .Lx708_19]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   n695_match_lit_α
n694_match_alternate_s0:
                        lea              rax, [rip + .Lx708_40]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n694_match_alternate_as
n694_match_alternate_s1:
                        lea              rax, [rip + .Lx708_41]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n694_match_alternate_as
n694_match_alternate_s2:
                        lea              rax, [rip + .Lx708_42]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n694_match_alternate_as
.Lx708_40:
                                                                                        jmp   n701_goto_β
.Lx708_41:
                                                                                        jmp   n696_goto_β
.Lx708_42:
                                                                                        jmp   n695_match_lit_β
n694_match_alternate_as:
                                                                                        jmp   proc_PAT$5_γ
n694_match_alternate_β:
                        mov              rax, qword ptr [rbp + 40]
                                                                                        jmp   rax
n694_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 32]
                        mov              rax, qword ptr [rbp + 48]
                                                                                        jmp   rax
.Lx708_19:
                                                                                        jmp   n693_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n695_match_lit_α:
                                                                                        jmp   n694_match_alternate_s2
n695_match_lit_β:
                                                                                        jmp   n694_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n696_goto_α:
                                                                                        jmp   n694_match_alternate_af
n696_goto_β:
                                                                                        jmp   n694_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n697_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n694_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n694_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n698_match_assign_save_α
n697_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n694_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n698_match_assign_save_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n699_match_defer_α
n698_match_assign_save_β:
                                                                                        jmp   n697_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n699_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx716_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx716_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx716_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx716_10
.Lx716_9:
                        xor              eax, eax
.Lx716_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx716_11:
                        test             rax, rax
                                                                                        jz    .Lx716_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx716_4]
                        lea              rdx, [rip + .Lx716_5]
                                                                                        jmp   rax
.Lx716_4:
                                                                                        jmp   n700_match_assign_cond_α
.Lx716_5:
                                                                                        jmp   n698_match_assign_save_β
.Lx716_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx716_2:
                        test             rax, rax
                                                                                        je    .Lx716_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx716_7]
                        lea              rdx, [rip + .Lx716_8]
                                                                                        jmp   rax
.Lx716_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx716_2
.Lx716_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx716_2
.Lx716_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n698_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx716_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n700_match_assign_cond_α
.Lx716_6:
                        add              rsp, 16
                                                                                        jmp   n698_match_assign_save_β
n699_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n700_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 176]
                        lea              rcx, [rip + .S12]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n694_match_alternate_s1
n700_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n699_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n701_goto_α:
                                                                                        jmp   n694_match_alternate_af
n701_goto_β:
                                                                                        jmp   n694_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n702_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n694_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n694_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n703_match_assign_save_α
n702_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n694_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n703_match_assign_save_α:
                        mov              dword ptr [rbp + 112], r14d
                                                                                        jmp   n704_match_defer_α
n703_match_assign_save_β:
                                                                                        jmp   n702_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n704_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx724_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx724_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx724_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx724_10
.Lx724_9:
                        xor              eax, eax
.Lx724_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx724_11:
                        test             rax, rax
                                                                                        jz    .Lx724_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx724_4]
                        lea              rdx, [rip + .Lx724_5]
                                                                                        jmp   rax
.Lx724_4:
                                                                                        jmp   n705_match_assign_cond_α
.Lx724_5:
                                                                                        jmp   n703_match_assign_save_β
.Lx724_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx724_2:
                        test             rax, rax
                                                                                        je    .Lx724_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx724_7]
                        lea              rdx, [rip + .Lx724_8]
                                                                                        jmp   rax
.Lx724_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx724_2
.Lx724_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx724_2
.Lx724_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n703_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx724_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n705_match_assign_cond_α
.Lx724_6:
                        add              rsp, 16
                                                                                        jmp   n703_match_assign_save_β
n704_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n705_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 112]
                        lea              rcx, [rip + .S13]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n694_match_alternate_s0
n705_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n704_match_defer_β
proc_PAT$5_scanhit:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx727_0
                        mov              ecx, dword ptr [rbp + 232]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx727_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        cmp              qword ptr [rbp + 240], 1
                                                                                        jne   .Lx728_0
                        mov              eax, dword ptr [rbp + 232]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx728_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx728_0
                        mov              dword ptr [rbp + 232], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$5_attempt
.Lx728_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$5_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rax, qword ptr [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n730_call_α
.Lx733_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n730_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd266:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd266]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx734_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
.Lx734_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n731_match_value_α
n730_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n731_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx735_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx735_4]
                        lea              rdx, [rip + .Lx735_5]
                                                                                        jmp   rax
.Lx735_4:
                                                                                        jmp   n732_match_fence1_α
.Lx735_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx735_0:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx735_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n732_match_fence1_α
.Lx735_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
n731_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n732_match_fence1_α:
                        add              rsp, 32
                                                                                        jmp   proc_PAT$6_scanhit
n732_match_fence1_β:
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx738_0
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx738_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   .Lx739_0
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx739_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx739_0
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$6_attempt
.Lx739_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$6_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rax, qword ptr [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + proc_PAT$7_ω]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n741_match_pos_α
.Lx750_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n741_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx751_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_scanfail
.Lx751_240:
                                                                                        jmp   n742_match_arbno_α
n741_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n742_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n743_lit_integer_α
n742_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n745_match_defer_α
n742_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n745_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n743_lit_integer_α
n742_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx753_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n745_match_defer_β
.Lx753_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n741_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n744_match_rpos_α
.Lx754_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n744_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx755_240
                        add              rsp, 16
                                                                                        jmp   n742_match_arbno_β
.Lx755_240:
                        add              rsp, 48
                                                                                        jmp   proc_PAT$7_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n745_match_defer_α:
                        mov              rax, qword ptr [1879052880]                    # PAT$7$V0
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 8
                                                                                        jne   .Lx756_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx756_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx756_10
.Lx756_9:
                        xor              eax, eax
.Lx756_10:
                        test             rax, rax
                                                                                        jz    .Lx756_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx756_4]
                        lea              rdx, [rip + .Lx756_5]
                                                                                        jmp   rax
.Lx756_4:
                                                                                        jmp   n746_match_defer_α
.Lx756_5:
                                                                                        jmp   n742_match_arbno_af
.Lx756_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S14]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx756_2:
                        test             rax, rax
                                                                                        je    .Lx756_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx756_7]
                        lea              rdx, [rip + .Lx756_8]
                                                                                        jmp   rax
.Lx756_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx756_2
.Lx756_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx756_2
.Lx756_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n742_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx756_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n746_match_defer_α
.Lx756_6:
                        add              rsp, 16
                                                                                        jmp   n742_match_arbno_af
n745_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n746_match_defer_α:
                        mov              rax, qword ptr [1879052896]                    # PAT$7$V1
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 8
                                                                                        jne   .Lx757_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx757_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx757_10
.Lx757_9:
                        xor              eax, eax
.Lx757_10:
                        test             rax, rax
                                                                                        jz    .Lx757_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx757_4]
                        lea              rdx, [rip + .Lx757_5]
                                                                                        jmp   rax
.Lx757_4:
                                                                                        jmp   n747_match_assign_save_α
.Lx757_5:
                                                                                        jmp   n745_match_defer_β
.Lx757_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx757_2:
                        test             rax, rax
                                                                                        je    .Lx757_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx757_7]
                        lea              rdx, [rip + .Lx757_8]
                                                                                        jmp   rax
.Lx757_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx757_2
.Lx757_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx757_2
.Lx757_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n745_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx757_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n747_match_assign_save_α
.Lx757_6:
                        add              rsp, 16
                                                                                        jmp   n745_match_defer_β
n746_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n747_match_assign_save_α:
                        lea              rdi, [rbp + 192]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n748_match_defer_α
n747_match_assign_save_β:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n746_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n748_match_defer_α:
                        mov              rax, qword ptr [1879052912]                    # PAT$7$V2
                        mov              rdx, qword ptr [1879052920]
                        cmp              eax, 8
                                                                                        jne   .Lx760_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx760_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx760_10
.Lx760_9:
                        xor              eax, eax
.Lx760_10:
                        test             rax, rax
                                                                                        jz    .Lx760_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx760_4]
                        lea              rdx, [rip + .Lx760_5]
                                                                                        jmp   rax
.Lx760_4:
                                                                                        jmp   n749_match_assign_cond_α
.Lx760_5:
                                                                                        jmp   n747_match_assign_save_β
.Lx760_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S16]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx760_2:
                        test             rax, rax
                                                                                        je    .Lx760_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx760_7]
                        lea              rdx, [rip + .Lx760_8]
                                                                                        jmp   rax
.Lx760_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx760_2
.Lx760_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx760_2
.Lx760_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n747_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx760_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n749_match_assign_cond_α
.Lx760_6:
                        add              rsp, 16
                                                                                        jmp   n747_match_assign_save_β
n748_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n749_match_assign_cond_α:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S17]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n742_match_arbno_as
n749_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n748_match_defer_β
proc_PAT$7_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx763_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx763_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx764_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx764_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx764_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$7_attempt
.Lx764_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$7_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rax, qword ptr [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
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
                        mov              esi, 5152
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
                        mov              esi, 5152
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
                        mov              esi, 5152
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
                        mov              esi, 5152
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
                        mov              esi, 5152
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
                        mov              esi, 5152
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
                        mov              esi, 5152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "LBL__NEG"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_LBL__NEG_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 5152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "EMIT"
                        .align           8
.Lstartup_pnames8:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + .Lstartup_pnames8]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_EMIT_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "PSH"
                        .align           8
.Lstartup_pnames9:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + .Lstartup_pnames9]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_PSH_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "DRF"
.Lstartup_pp10_0:       .string          "nm"
                        .align           8
.Lstartup_pnames10:
                        .quad            .Lstartup_pp10_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + .Lstartup_pnames10]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_DRF_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "ADD"
.Lstartup_pp11_0:       .string          "p1"
                        .align           8
.Lstartup_pnames11:
                        .quad            .Lstartup_pp11_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + .Lstartup_pnames11]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_ADD_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "SUB"
.Lstartup_pp12_0:       .string          "p1"
                        .align           8
.Lstartup_pnames12:
                        .quad            .Lstartup_pp12_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + .Lstartup_pnames12]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_SUB_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "MUL"
.Lstartup_pp13_0:       .string          "p1"
                        .align           8
.Lstartup_pnames13:
                        .quad            .Lstartup_pp13_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + .Lstartup_pnames13]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_MUL_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "DIV"
.Lstartup_pp14_0:       .string          "p1"
                        .align           8
.Lstartup_pnames14:
                        .quad            .Lstartup_pp14_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + .Lstartup_pnames14]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_DIV_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "NEG"
                        .align           8
.Lstartup_pnames15:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + .Lstartup_pnames15]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_NEG_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
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
                        mov              esi, 176
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
                        mov              esi, 224
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
                        mov              esi, 224
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
.Lgvan9:                .string          "NEG"
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
.Lgvan36:               .string          "PAT$5$V0"
.Lgvan37:               .string          "PAT$7$V0"
.Lgvan38:               .string          "PAT$7$V1"
.Lgvan39:               .string          "PAT$7$V2"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 40
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 40
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
#         DEFINE('EMIT()')                        :(EMIT_x)
#-----------------------------------------------------------------------------------------------------------------------
n765_statement_begin_α:
                                                                                        jmp   n766_func_activate_α
n765_statement_begin_β:
                                                                                        jmp   n768_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n766_func_activate_α:
                        lea              rax, [rip + EMIT_act_α]
                        mov              r11, qword ptr [rip + fn_cell$EMIT@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n767_statement_end_α
n766_func_activate_β:
                                                                                        jmp   n765_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n767_statement_end_α:
                                                                                        jmp   n768_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n768_statement_begin_α:
                                                                                        jmp   n769_statement_end_α
n768_statement_begin_β:
                                                                                        jmp   n770_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n769_statement_end_α:
                                                                                        jmp   n770_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n770_statement_begin_α:
                                                                                        jmp   n771_func_activate_α
n770_statement_begin_β:
                                                                                        jmp   n773_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n771_func_activate_α:
                        lea              rax, [rip + PSH_act_α]
                        mov              r11, qword ptr [rip + fn_cell$PSH@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n772_statement_end_α
n771_func_activate_β:
                                                                                        jmp   n770_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n772_statement_end_α:
                                                                                        jmp   n773_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n773_statement_begin_α:
                                                                                        jmp   n774_statement_end_α
n773_statement_begin_β:
                                                                                        jmp   n775_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n774_statement_end_α:
                                                                                        jmp   n775_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n775_statement_begin_α:
                                                                                        jmp   n776_func_activate_α
n775_statement_begin_β:
                                                                                        jmp   n778_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n776_func_activate_α:
                        lea              rax, [rip + DRF_act_α]
                        mov              r11, qword ptr [rip + fn_cell$DRF@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n777_statement_end_α
n776_func_activate_β:
                                                                                        jmp   n775_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n777_statement_end_α:
                                                                                        jmp   n778_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n778_statement_begin_α:
                                                                                        jmp   n779_statement_end_α
n778_statement_begin_β:
                                                                                        jmp   n780_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n779_statement_end_α:
                                                                                        jmp   n780_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n780_statement_begin_α:
                                                                                        jmp   n781_func_activate_α
n780_statement_begin_β:
                                                                                        jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n781_func_activate_α:
                        lea              rax, [rip + ADD_act_α]
                        mov              r11, qword ptr [rip + fn_cell$ADD@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n782_statement_end_α
n781_func_activate_β:
                                                                                        jmp   n780_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n782_statement_end_α:
                                                                                        jmp   n783_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n783_statement_begin_α:
                                                                                        jmp   n784_statement_end_α
n783_statement_begin_β:
                                                                                        jmp   n785_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n784_statement_end_α:
                                                                                        jmp   n785_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n785_statement_begin_α:
                                                                                        jmp   n786_func_activate_α
n785_statement_begin_β:
                                                                                        jmp   n788_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n786_func_activate_α:
                        lea              rax, [rip + SUB_act_α]
                        mov              r11, qword ptr [rip + fn_cell$SUB@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n787_statement_end_α
n786_func_activate_β:
                                                                                        jmp   n785_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n787_statement_end_α:
                                                                                        jmp   n788_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n788_statement_begin_α:
                                                                                        jmp   n789_statement_end_α
n788_statement_begin_β:
                                                                                        jmp   n790_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n789_statement_end_α:
                                                                                        jmp   n790_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n790_statement_begin_α:
                                                                                        jmp   n791_func_activate_α
n790_statement_begin_β:
                                                                                        jmp   n793_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n791_func_activate_α:
                        lea              rax, [rip + MUL_act_α]
                        mov              r11, qword ptr [rip + fn_cell$MUL@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n792_statement_end_α
n791_func_activate_β:
                                                                                        jmp   n790_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n792_statement_end_α:
                                                                                        jmp   n793_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n793_statement_begin_α:
                                                                                        jmp   n794_statement_end_α
n793_statement_begin_β:
                                                                                        jmp   n795_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n794_statement_end_α:
                                                                                        jmp   n795_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n795_statement_begin_α:
                                                                                        jmp   n796_func_activate_α
n795_statement_begin_β:
                                                                                        jmp   n798_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n796_func_activate_α:
                        lea              rax, [rip + DIV_act_α]
                        mov              r11, qword ptr [rip + fn_cell$DIV@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n797_statement_end_α
n796_func_activate_β:
                                                                                        jmp   n795_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n797_statement_end_α:
                                                                                        jmp   n798_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n798_statement_begin_α:
                                                                                        jmp   n799_statement_end_α
n798_statement_begin_β:
                                                                                        jmp   n800_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n799_statement_end_α:
                                                                                        jmp   n800_statement_begin_α
#=======================================================================================================================
#         DEFINE('NEG()')                         :(NEG_x)
#-----------------------------------------------------------------------------------------------------------------------
n800_statement_begin_α:
                                                                                        jmp   n801_func_activate_α
n800_statement_begin_β:
                                                                                        jmp   n803_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n801_func_activate_α:
                        lea              rax, [rip + NEG_act_α]
                        mov              r11, qword ptr [rip + fn_cell$NEG@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n802_statement_end_α
n801_func_activate_β:
                                                                                        jmp   n800_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n802_statement_end_α:
                                                                                        jmp   n803_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n803_statement_begin_α:
                                                                                        jmp   n804_statement_end_α
n803_statement_begin_β:
                                                                                        jmp   n805_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n804_statement_end_α:
                                                                                        jmp   n805_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n805_statement_begin_α:
                                                                                        jmp   n806_lit_integer_α
n805_statement_begin_β:
                                                                                        jmp   n810_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1306_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n807_call_α
.Lx1306_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n807_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1308:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1308]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1307_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n805_statement_begin_β
.Lx1307_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n808_assign_α
n807_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n805_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n808_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n809_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n809_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n810_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n810_statement_begin_α:
                                                                                        jmp   n811_keyword_snobol4_α
n810_statement_begin_β:
                                                                                        jmp   n814_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n811_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1314_0]               # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n812_assign_α
.Lx1314_0:
                        .quad            .Lx1314_0_s
.Lx1314_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n812_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n813_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n813_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n814_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n814_statement_begin_α:
                                                                                        jmp   n815_lit_string_α
n814_statement_begin_β:
                                                                                        jmp   n818_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1320_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n816_assign_α
.Lx1320_0:
                        .quad            .Lx1320_0_s
.Lx1320_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n816_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n817_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n817_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n818_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n818_statement_begin_α:
                                                                                        jmp   n819_lit_string_α
n818_statement_begin_β:
                                                                                        jmp   n823_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1326_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n820_call_α
.Lx1326_0:
                        .quad            .Lx1326_0_s
.Lx1326_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n820_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1328:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1328]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1327_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n818_statement_begin_β
.Lx1327_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n821_assign_α
n820_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n818_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n821_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n822_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n822_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n823_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n823_statement_begin_α:
                                                                                        jmp   n824_lit_string_α
n823_statement_begin_β:
                                                                                        jmp   n828_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1334_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n825_call_α
.Lx1334_0:
                        .quad            .Lx1334_0_s
.Lx1334_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n825_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1336:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1336]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1335_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n823_statement_begin_β
.Lx1335_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n826_assign_α
n825_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n823_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n826_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n827_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n827_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n828_statement_begin_α
#=======================================================================================================================
#         A = V | I | FENCE('(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_begin_α:
                                                                                        jmp   n829_var_α
n828_statement_begin_β:
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n830_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052816], rax                    # PAT$2$V1
                        mov              qword ptr [1879052824], rdx
                                                                                        jmp   n831_var_α
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n832_assign_α
n831_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n828_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n832_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052800], rax                    # PAT$2$V0
                        mov              qword ptr [1879052808], rdx
                                                                                        jmp   n833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n833_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n834_call_α
n833_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n831_var_β
.Lx1346_0:
                        .quad            .Lx1346_0_s
.Lx1346_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n834_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1348:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1348]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1347_240
                        add              rsp, 16
                                                                                        jmp   n833_lit_string_β
.Lx1347_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n835_assign_α
n834_call_β:
                        add              rsp, 16
                                                                                        jmp   n833_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n835_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n836_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n836_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n837_statement_begin_α
#=======================================================================================================================
#         F = A | FENCE('+' *F) | FENCE('-' *F . *NEG())
#-----------------------------------------------------------------------------------------------------------------------
n837_statement_begin_α:
                                                                                        jmp   n838_var_α
n837_statement_begin_β:
                                                                                        jmp   n844_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n838_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n839_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052832], rax                    # PAT$3$V0
                        mov              qword ptr [1879052840], rdx
                                                                                        jmp   n840_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n840_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1356_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n841_call_α
n840_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n837_statement_begin_β
.Lx1356_0:
                        .quad            .Lx1356_0_s
.Lx1356_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n841_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1358:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1358]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1357_240
                        add              rsp, 16
                                                                                        jmp   n840_lit_string_β
.Lx1357_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n842_assign_α
n841_call_β:
                        add              rsp, 16
                                                                                        jmp   n840_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n842_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n843_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n843_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n844_statement_begin_α
#=======================================================================================================================
#         T = F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n844_statement_begin_α:
                                                                                        jmp   n845_var_α
n844_statement_begin_β:
                                                                                        jmp   n851_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n846_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052848], rax                    # PAT$4$V0
                        mov              qword ptr [1879052856], rdx
                                                                                        jmp   n847_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n847_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1366_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n848_call_α
n847_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n844_statement_begin_β
.Lx1366_0:
                        .quad            .Lx1366_0_s
.Lx1366_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n848_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1368:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1368]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1367_240
                        add              rsp, 16
                                                                                        jmp   n847_lit_string_β
.Lx1367_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n849_assign_α
n848_call_β:
                        add              rsp, 16
                                                                                        jmp   n847_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n849_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n850_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n850_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n851_statement_begin_α
#=======================================================================================================================
#         X = T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' )
#-----------------------------------------------------------------------------------------------------------------------
n851_statement_begin_α:
                                                                                        jmp   n852_var_α
n851_statement_begin_β:
                                                                                        jmp   n858_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n852_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n853_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n853_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052864], rax                    # PAT$5$V0
                        mov              qword ptr [1879052872], rdx
                                                                                        jmp   n854_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n855_call_α
n854_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n851_statement_begin_β
.Lx1376_0:
                        .quad            .Lx1376_0_s
.Lx1376_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n855_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1378:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1378]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1377_240
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_β
.Lx1377_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_assign_α
n855_call_β:
                        add              rsp, 16
                                                                                        jmp   n854_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n857_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n857_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n858_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n858_statement_begin_α:
                                                                                        jmp   n859_lit_string_α
n858_statement_begin_β:
                                                                                        jmp   n863_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n859_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n860_call_α
.Lx1384_0:
                        .quad            .Lx1384_0_s
.Lx1384_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n860_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1386:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1386]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1385_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n858_statement_begin_β
.Lx1385_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n861_assign_α
n860_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n858_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n861_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n862_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n862_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n863_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n863_statement_begin_α:
                                                                                        jmp   n864_var_α
n863_statement_begin_β:
                                                                                        jmp   n874_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # epsilon
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n865_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052912], rax                    # PAT$7$V2
                        mov              qword ptr [1879052920], rdx
                                                                                        jmp   n866_var_α
#-----------------------------------------------------------------------------------------------------------------------
n866_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n867_assign_α
n866_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n863_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n867_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052896], rax                    # PAT$7$V1
                        mov              qword ptr [1879052904], rdx
                                                                                        jmp   n868_var_α
#-----------------------------------------------------------------------------------------------------------------------
n868_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n869_assign_α
n868_var_β:
                        add              rsp, 16
                                                                                        jmp   n866_var_β
#-----------------------------------------------------------------------------------------------------------------------
n869_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052880], rax                    # PAT$7$V0
                        mov              qword ptr [1879052888], rdx
                                                                                        jmp   n870_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1398_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n871_call_α
n870_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n868_var_β
.Lx1398_0:
                        .quad            .Lx1398_0_s
.Lx1398_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n871_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1400:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1400]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1399_240
                        add              rsp, 16
                                                                                        jmp   n870_lit_string_β
.Lx1399_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n872_assign_α
n871_call_β:
                        add              rsp, 16
                                                                                        jmp   n870_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n872_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n873_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n873_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n874_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n874_statement_begin_α:
                                                                                        jmp   n875_lit_string_α
n874_statement_begin_β:
                                                                                        jmp   n879_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n875_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1406_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n876_lit_integer_α
.Lx1406_0:
                        .quad            .Lx1406_0_s
.Lx1406_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n876_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1407_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n877_call_α
n876_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n874_statement_begin_β
.Lx1407_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n877_call_α:
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
.Lrkfnzd1409:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1409]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1408_240
                        add              rsp, 16
                                                                                        jmp   n876_lit_integer_β
.Lx1408_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n878_statement_end_α
n877_call_β:
                        add              rsp, 16
                                                                                        jmp   n876_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n878_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n879_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n879_statement_begin_α:
                                                                                        jmp   n880_lit_integer_α
n879_statement_begin_β:
                                                                                        jmp   n884_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n880_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1414_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n881_call_α
.Lx1414_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n881_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd395:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd395]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1415_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_statement_begin_β
.Lx1415_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n882_assign_α
n881_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n879_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n882_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # nl
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n883_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n883_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n884_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n884_statement_begin_α:
                                                                                        jmp   n885_call_α
n884_statement_begin_β:
                                                                                        jmp   n888_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n885_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1422:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1422]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1421_240
                        add              rsp, 16
                                                                                        jmp   n884_statement_begin_β
.Lx1421_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_assign_α
n885_call_β:
                        add              rsp, 16
                                                                                        jmp   n884_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n887_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n887_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n888_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n888_statement_begin_α:
                                                                                        jmp   n889_var_α
n888_statement_begin_β:
                                                                                        jmp   n895_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n890_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1429_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n891_subscript_α
n890_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n888_statement_begin_β
.Lx1429_0:
                        .quad            .Lx1429_0_s
.Lx1429_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n891_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1430_240
                        add              rsp, 16
                                                                                        jmp   n890_lit_string_β
.Lx1430_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n892_lit_integer_α
n891_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n890_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n892_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1431_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n893_assign_var_α
n892_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n891_subscript_β
.Lx1431_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1432_240
                        add              rsp, 16
                                                                                        jmp   n892_lit_integer_β
.Lx1432_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n894_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n894_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n895_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n895_statement_begin_α:
                                                                                        jmp   n896_var_α
n895_statement_begin_β:
                                                                                        jmp   n902_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n896_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n897_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n897_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1438_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n898_subscript_α
n897_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n895_statement_begin_β
.Lx1438_0:
                        .quad            .Lx1438_0_s
.Lx1438_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n898_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1439_240
                        add              rsp, 16
                                                                                        jmp   n897_lit_string_β
.Lx1439_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n899_lit_integer_α
n898_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n897_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n899_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1440_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n900_assign_var_α
n899_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n898_subscript_β
.Lx1440_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n900_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1441_240
                        add              rsp, 16
                                                                                        jmp   n899_lit_integer_β
.Lx1441_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n901_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n902_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n902_statement_begin_α:
                                                                                        jmp   n903_var_α
n902_statement_begin_β:
                                                                                        jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n904_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n904_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1447_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n905_subscript_α
n904_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n902_statement_begin_β
.Lx1447_0:
                        .quad            .Lx1447_0_s
.Lx1447_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n905_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1448_240
                        add              rsp, 16
                                                                                        jmp   n904_lit_string_β
.Lx1448_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n906_lit_integer_α
n905_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n904_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n906_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1449_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n907_assign_var_α
n906_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n905_subscript_β
.Lx1449_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n907_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1450_240
                        add              rsp, 16
                                                                                        jmp   n906_lit_integer_β
.Lx1450_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n908_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n909_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n909_statement_begin_α:
                                                                                        jmp   n910_var_α
n909_statement_begin_β:
                                                                                        jmp   n957_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1455_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1455_240
                        add              rsp, 16
                                                                                        jmp   n909_statement_begin_β
.Lx1455_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n911_assign_α
.Lx1455_0:
                        .quad            .Lx1455_0_s
.Lx1455_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # line
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n912_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n912_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n913_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n913_statement_begin_α:
                                                                                        jmp   n914_var_α
n913_statement_begin_β:
                                                                                        jmp   n921_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n914_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # line
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n916_binop_α
n915_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n913_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n916_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_var_α
n916_binop_β:
                        add              rsp, 16
                                                                                        jmp   n915_var_β
#-----------------------------------------------------------------------------------------------------------------------
n917_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # nl
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n918_binop_α
n917_var_β:
                        add              rsp, 16
                                                                                        jmp   n916_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n918_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n919_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n919_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n920_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n920_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n921_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n921_statement_begin_α:
                                                                                        jmp   n922_var_α
n921_statement_begin_β:
                                                                                        jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n922_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n923_call_α
#-----------------------------------------------------------------------------------------------------------------------
n923_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1473:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1473]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1472_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n921_statement_begin_β
.Lx1472_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n924_lit_integer_α
n923_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n921_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1474_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n925_coerce_numeric_α
n924_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n921_statement_begin_β
.Lx1474_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n925_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1476_1
                        cmp              eax, 3
                                                                                        jne   .Lx1476_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1476_0
.Lx1476_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n926_coerce_numeric_α
.Lx1476_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n926_coerce_numeric_α
n925_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n924_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n926_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1478_1
                        cmp              eax, 3
                                                                                        jne   .Lx1478_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1478_0
.Lx1478_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n927_cmp_test_α
.Lx1478_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n927_cmp_test_α
n926_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n925_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n927_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1480_240
                        add              rsp, 16
                                                                                        jmp   n926_coerce_numeric_β
.Lx1480_240:
                                                                                        jmp   n928_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n928_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n929_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n929_statement_begin_α:
                                                                                        jmp   n930_var_α
n929_statement_begin_β:
                                                                                        jmp   n935_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n930_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n931_var_α
#-----------------------------------------------------------------------------------------------------------------------
n931_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n932_binop_α
n931_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n929_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n932_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n933_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n933_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # b2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n934_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n934_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n935_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n935_statement_begin_α:
                                                                                        jmp   n936_lit_string_α
n935_statement_begin_β:
                                                                                        jmp   n939_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n936_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1493_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n937_assign_α
.Lx1493_0:
                        .quad            .Lx1493_0_s
.Lx1493_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n937_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n938_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n938_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n939_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n939_statement_begin_α:
                                                                                        jmp   n940_var_α
n939_statement_begin_β:
                                                                                        jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n940_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n941_call_α
#-----------------------------------------------------------------------------------------------------------------------
n941_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1501:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1501]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1500_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n939_statement_begin_β
.Lx1500_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_lit_integer_α
n941_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n939_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1502_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n943_coerce_numeric_α
n942_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n939_statement_begin_β
.Lx1502_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n943_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1504_1
                        cmp              eax, 3
                                                                                        jne   .Lx1504_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1504_0
.Lx1504_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n944_coerce_numeric_α
.Lx1504_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n944_coerce_numeric_α
n943_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n942_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n944_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1506_1
                        cmp              eax, 3
                                                                                        jne   .Lx1506_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1506_0
.Lx1506_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n945_cmp_test_α
.Lx1506_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n945_cmp_test_α
n944_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n943_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n945_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1508_240
                        add              rsp, 16
                                                                                        jmp   n944_coerce_numeric_β
.Lx1508_240:
                                                                                        jmp   n946_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n946_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n947_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n947_statement_begin_α:
                                                                                        jmp   n948_var_α
n947_statement_begin_β:
                                                                                        jmp   n953_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n949_var_α
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n950_binop_α
n949_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n947_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n950_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n951_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # src
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n952_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n952_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n953_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n953_statement_begin_α:
                                                                                        jmp   n954_lit_string_α
n953_statement_begin_β:
                                                                                        jmp   n909_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1521_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n955_assign_α
.Lx1521_0:
                        .quad            .Lx1521_0_s
.Lx1521_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n955_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # b2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n956_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n956_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n909_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n957_statement_begin_α:
                                                                                        jmp   n958_var_α
n957_statement_begin_β:
                                                                                        jmp   n965_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n959_var_α
#-----------------------------------------------------------------------------------------------------------------------
n959_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n960_binop_α
n959_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n957_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n960_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n961_var_α
n960_binop_β:
                        add              rsp, 16
                                                                                        jmp   n959_var_β
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n962_binop_α
n961_var_β:
                        add              rsp, 16
                                                                                        jmp   n960_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n962_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n963_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # src
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n964_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n964_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n965_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n965_statement_begin_α:
                                                                                        jmp   n966_call_α
n965_statement_begin_β:
                                                                                        jmp   n969_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n966_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1538:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1538]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1537_240
                        add              rsp, 16
                                                                                        jmp   n965_statement_begin_β
.Lx1537_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_assign_α
n966_call_β:
                        add              rsp, 16
                                                                                        jmp   n965_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n967_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t0
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n968_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n968_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n969_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n969_statement_begin_α:
                                                                                        jmp   n970_var_α
n969_statement_begin_β:
                                                                                        jmp   n989_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n970_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n971_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n972_assign_α
n971_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n989_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n972_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1546_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n973_match_begin_α
n972_assign_β:
                                                                                        jmp   n971_var_β
.Lx1546_0:
                        .quad            .Lx1546_0_s
.Lx1546_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n973_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rbp + -40], r13                     # outer_Σ
                        mov              qword ptr [rbp + -32], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -16], rax                     # cap_gen
                        mov              qword ptr [rbp + -48], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + -56], rsp                     # zls2_mark
                        mov              dword ptr [rbp + -64], 0                       # start_δ
.Lx1548_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n974_match_defer_α
n973_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx1548_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1548_1
                                                                                        jmp   .Lx1548_0
.Lx1548_1:
n973_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + -56]
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -16]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n972_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n974_match_defer_α:
                        lea              rdi, [rip + .S18]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx1549_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1549_4]
                        lea              rdx, [rip + .Lx1549_5]
                                                                                        jmp   rax
.Lx1549_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 4784], eax
                                                                                        jmp   n975_match_end_α
.Lx1549_5:
                                                                                        jmp   n973_match_begin_β
.Lx1549_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1549_2:
                        test             rax, rax
                                                                                        je    .Lx1549_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1549_7]
                        lea              rdx, [rip + .Lx1549_8]
                                                                                        jmp   rax
.Lx1549_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1549_2
.Lx1549_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1549_2
.Lx1549_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n973_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1549_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n975_match_end_α
.Lx1549_6:
                        add              rsp, 16
                                                                                        jmp   n973_match_begin_β
n974_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n975_match_end_α:
                        mov              r10, r12
.Lx1551_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1551_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx1551_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1551_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1551_1:
                        test             rax, rax
                                                                                        je    .Lx1551_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1551_3]
                        lea              rdx, [rip + .Lx1551_4]
                                                                                        jmp   rax
.Lx1551_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1551_1
.Lx1551_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1551_1
.Lx1551_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n976_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n976_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n977_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n977_statement_begin_α:
                                                                                        jmp   n978_call_α
n977_statement_begin_β:
                                                                                        jmp   n981_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n978_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1557:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1557]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1556_240
                        add              rsp, 16
                                                                                        jmp   n977_statement_begin_β
.Lx1556_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n979_assign_α
n978_call_β:
                        add              rsp, 16
                                                                                        jmp   n977_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n979_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # t1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n980_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n980_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n981_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n981_statement_begin_α:
                                                                                        jmp   n982_lit_string_α
n981_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n982_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1563_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n983_var_α
.Lx1563_0:
                        .quad            .Lx1563_0_s
.Lx1563_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n983_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # t1
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n984_var_α
n983_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n981_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n984_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t0
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n985_binop_α
n984_var_β:
                        add              rsp, 16
                                                                                        jmp   n983_var_β
#-----------------------------------------------------------------------------------------------------------------------
n985_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1566_240
                        add              rsp, 16
                                                                                        jmp   n984_var_β
.Lx1566_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n986_binop_α
n985_binop_β:
                        add              rsp, 16
                                                                                        jmp   n984_var_β
#-----------------------------------------------------------------------------------------------------------------------
n986_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n987_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n987_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1568_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n988_statement_end_α
.Lx1568_0:
                        .quad            .Lx1568_0_s
.Lx1568_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n988_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n989_statement_begin_α:
                                                                                        jmp   n990_call_α
n989_statement_begin_β:
                                                                                        jmp   n993_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n990_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1574:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1574]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1573_240
                        add              rsp, 16
                                                                                        jmp   n989_statement_begin_β
.Lx1573_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n991_assign_α
n990_call_β:
                        add              rsp, 16
                                                                                        jmp   n989_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n991_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # t1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n992_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n992_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n993_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n993_statement_begin_α:
                                                                                        jmp   n994_lit_string_α
n993_statement_begin_β:
                                                                                        jmp   n997_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n994_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1580_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n995_assign_α
.Lx1580_0:
                        .quad            .Lx1580_0_s
.Lx1580_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n995_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1581_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n996_statement_end_α
.Lx1581_0:
                        .quad            .Lx1581_0_s
.Lx1581_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n996_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n997_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
#-----------------------------------------------------------------------------------------------------------------------
n997_statement_begin_α:
                                                                                        jmp   n998_lit_string_α
n997_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1586_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n999_var_α
.Lx1586_0:
                        .quad            .Lx1586_0_s
.Lx1586_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n999_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # t1
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1000_var_α
n999_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n997_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t0
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1001_binop_α
n1000_var_β:
                        add              rsp, 16
                                                                                        jmp   n999_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1001_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1589_240
                        add              rsp, 16
                                                                                        jmp   n1000_var_β
.Lx1589_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1002_binop_α
n1001_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1000_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1002_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1003_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1591_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1004_statement_end_α
.Lx1591_0:
                        .quad            .Lx1591_0_s
.Lx1591_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1004_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1005_goto_α:
                                                                                        jmp   n1006_statement_begin_α
n1005_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n1006_statement_begin_α:
                                                                                        jmp   n1007_var_α
n1006_statement_begin_β:
                                                                                        jmp   n1014_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1008_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1598_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1009_subscript_α
n1008_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1006_statement_begin_β
.Lx1598_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1009_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1599_240
                        add              rsp, 16
                                                                                        jmp   n1008_lit_integer_β
.Lx1599_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1010_deref_α
n1009_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1008_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n1010_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1600_240
                        add              rsp, 16
                                                                                        jmp   n1009_subscript_β
.Lx1600_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1011_call_α
n1010_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1009_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1011_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1602_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1602_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1602_6]
                        lea              rdx, [rip + .Lx1602_7]
                                                                                        jmp   rax
.Lx1602_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1602_2
.Lx1602_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1602_2
.Lx1602_5:
                        add              rsp, 32
.Lx1602_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1602_240
                        add              rsp, 16
                                                                                        jmp   n1010_deref_β
.Lx1602_240:
                                                                                        jmp   n1012_assign_α
n1011_call_β:
                                                                                        jmp   n1010_deref_β
.Lx1602_0:
                        .quad            .Lx1602_0_s
.Lx1602_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1012_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1603_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1013_statement_end_α
.Lx1603_0:
                        .quad            .Lx1603_0_s
.Lx1603_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1013_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1014_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n1014_statement_begin_α:
                                                                                        jmp   n1015_lit_integer_α
n1014_statement_begin_β:
                                                                                        jmp   n1018_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1608_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1016_assign_α
.Lx1608_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1016_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1017_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1018_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1018_statement_begin_α:
                                                                                        jmp   n1019_lit_string_α
n1018_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1614_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1020_call_α
.Lx1614_0:
                        .quad            .Lx1614_0_s
.Lx1614_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1020_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1616:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1616]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1615_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1018_statement_begin_β
.Lx1615_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1021_assign_α
n1020_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1018_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1021_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n1022_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_statement_end_α:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1620_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1024_call_α
.Lx1620_0:
                        .quad            .Lx1620_0_s
.Lx1620_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1024_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1622:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1622]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1621_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1026_save_restore_α
.Lx1621_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1025_save_restore_α
n1024_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1026_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1025_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx1624_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx1624_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n1026_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx1626_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx1626_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n1027_goto_α:
                                                                                        jmp   n768_statement_begin_α
n1027_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1028_goto_α:
                                                                                        jmp   n1029_statement_begin_α
n1028_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n1029_statement_begin_α:
                                                                                        jmp   n1030_var_α
n1029_statement_begin_β:
                                                                                        jmp   n1035_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1031_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1632_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1032_binop_α
n1031_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1029_statement_begin_β
.Lx1632_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1032_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1633_240
                        add              rsp, 16
                                                                                        jmp   n1031_lit_integer_β
.Lx1633_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1033_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1034_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1035_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1035_statement_begin_α:
                                                                                        jmp   n1036_var_α
n1035_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1038_subscript_α
n1037_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1035_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1038_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1641_240
                        add              rsp, 16
                                                                                        jmp   n1037_var_β
.Lx1641_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1039_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n1040_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_goto_α:
                                                                                        jmp   n773_statement_begin_α
n1041_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1042_goto_α:
                                                                                        jmp   n1043_statement_begin_α
n1042_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n1043_statement_begin_α:
                                                                                        jmp   n1044_var_α
n1043_statement_begin_β:
                                                                                        jmp   n1060_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1045_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        sub              rsp, 64
                        mov              qword ptr [rbp + -40], r13                     # outer_Σ
                        mov              qword ptr [rbp + -32], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -16], rax                     # cap_gen
                        mov              qword ptr [rbp + -48], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rbp + -56], rax                     # rsp_mark
                        mov              dword ptr [rbp + -64], 0                       # start_δ
.Lx1651_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n1046_lit_integer_α
n1045_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rbp + -64], 1                       # start_δ
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx1651_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1651_1
                                                                                        jmp   .Lx1651_0
.Lx1651_1:
n1045_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -16]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                        add              rsp, 16
                                                                                        jmp   n1060_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1652_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1047_match_pos_α
.Lx1652_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1047_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx1653_240
                        add              rsp, 16
                                                                                        jmp   n1045_match_begin_β
.Lx1653_240:
                                                                                        jmp   n1048_match_any_α
n1047_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   n1045_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1048_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n1045_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n1045_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n1049_lit_integer_α
n1048_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n1045_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1049_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1656_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1050_match_rpos_α
.Lx1656_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1050_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx1657_240
                        add              rsp, 16
                                                                                        jmp   n1048_match_any_β
.Lx1657_240:
                                                                                        jmp   n1051_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_match_end_α:
                        mov              r10, r12
.Lx1659_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1659_9
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx1659_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1659_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1659_1:
                        test             rax, rax
                                                                                        je    .Lx1659_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1659_3]
                        lea              rdx, [rip + .Lx1659_4]
                                                                                        jmp   rax
.Lx1659_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1659_1
.Lx1659_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1659_1
.Lx1659_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n1052_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1053_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1053_statement_begin_α:
                                                                                        jmp   n1054_var_α
n1053_statement_begin_β:
                                                                                        jmp   n1025_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1056_subscript_α
n1055_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1053_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1056_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1666_240
                        add              rsp, 16
                                                                                        jmp   n1055_var_β
.Lx1666_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1057_deref_α
n1056_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1055_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1057_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1667_240
                        add              rsp, 16
                                                                                        jmp   n1056_subscript_β
.Lx1667_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1058_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n1059_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n1025_save_restore_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1060_statement_begin_α:
                                                                                        jmp   n1061_var_α
n1060_statement_begin_β:
                                                                                        jmp   n1025_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1062_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n1063_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1025_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_goto_α:
                                                                                        jmp   n1060_statement_begin_α
n1064_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1065_goto_α:
                                                                                        jmp   n778_statement_begin_α
n1065_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1066_goto_α:
                                                                                        jmp   n1067_statement_begin_α
n1066_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1067_statement_begin_α:
                                                                                        jmp   n1068_var_α
n1067_statement_begin_β:
                                                                                        jmp   n1075_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1069_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1070_subscript_α
n1069_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1067_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1070_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1684_240
                        add              rsp, 16
                                                                                        jmp   n1069_var_β
.Lx1684_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1071_deref_α
n1070_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1069_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1071_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1685_240
                        add              rsp, 16
                                                                                        jmp   n1070_subscript_β
.Lx1685_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1072_call_α
n1071_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1070_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1687_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1687_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1687_6]
                        lea              rdx, [rip + .Lx1687_7]
                                                                                        jmp   rax
.Lx1687_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1687_2
.Lx1687_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1687_2
.Lx1687_5:
                        add              rsp, 32
.Lx1687_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1687_240
                        add              rsp, 16
                                                                                        jmp   n1071_deref_β
.Lx1687_240:
                                                                                        jmp   n1073_assign_α
n1072_call_β:
                                                                                        jmp   n1071_deref_β
.Lx1687_0:
                        .quad            .Lx1687_0_s
.Lx1687_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1073_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1074_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1075_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1075_statement_begin_α:
                                                                                        jmp   n1076_var_α
n1075_statement_begin_β:
                                                                                        jmp   n1081_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1076_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1077_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1694_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1078_binop_α
n1077_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1075_statement_begin_β
.Lx1694_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1078_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1695_240
                        add              rsp, 16
                                                                                        jmp   n1077_lit_integer_β
.Lx1695_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1079_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1079_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1080_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1080_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1081_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n1081_statement_begin_α:
                                                                                        jmp   n1082_var_α
n1081_statement_begin_β:
                                                                                        jmp   n1094_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1082_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1083_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1083_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1084_subscript_α
n1083_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1081_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1084_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1703_240
                        add              rsp, 16
                                                                                        jmp   n1083_var_β
.Lx1703_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1085_var_α
n1084_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1083_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1085_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1086_var_α
n1085_var_β:
                        add              rsp, 16
                                                                                        jmp   n1084_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1087_subscript_α
n1086_var_β:
                        add              rsp, 16
                                                                                        jmp   n1085_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1087_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1706_240
                        add              rsp, 16
                                                                                        jmp   n1086_var_β
.Lx1706_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1088_deref_α
n1087_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1086_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1088_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1707_240
                        add              rsp, 16
                                                                                        jmp   n1087_subscript_β
.Lx1707_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1089_call_α
n1088_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1087_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1089_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1709_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1709_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1709_6]
                        lea              rdx, [rip + .Lx1709_7]
                                                                                        jmp   rax
.Lx1709_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1709_2
.Lx1709_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1709_2
.Lx1709_5:
                        add              rsp, 32
.Lx1709_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1709_240
                        add              rsp, 16
                                                                                        jmp   n1088_deref_β
.Lx1709_240:
                                                                                        jmp   n1090_var_α
n1089_call_β:
                                                                                        jmp   n1088_deref_β
.Lx1709_0:
                        .quad            .Lx1709_0_s
.Lx1709_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1090_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1091_binop_α
n1090_var_β:
                        add              rsp, 32
                                                                                        jmp   n1088_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1091_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1711_240
                        add              rsp, 16
                                                                                        jmp   n1090_var_β
.Lx1711_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1092_assign_var_α
n1091_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1090_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1092_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1712_240
                        add              rsp, 16
                                                                                        jmp   n1091_binop_β
.Lx1712_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1093_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1093_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1094_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1094_statement_begin_α:
                                                                                        jmp   n1095_lit_string_α
n1094_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1095_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1717_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1096_call_α
.Lx1717_0:
                        .quad            .Lx1717_0_s
.Lx1717_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1719:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1719]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1718_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1094_statement_begin_β
.Lx1718_240:
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
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n1098_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1098_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1099_goto_α:
                                                                                        jmp   n783_statement_begin_α
n1099_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1100_goto_α:
                                                                                        jmp   n1101_statement_begin_α
n1100_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1101_statement_begin_α:
                                                                                        jmp   n1102_var_α
n1101_statement_begin_β:
                                                                                        jmp   n1109_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1102_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1103_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1103_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1104_subscript_α
n1103_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1101_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1104_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1729_240
                        add              rsp, 16
                                                                                        jmp   n1103_var_β
.Lx1729_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1105_deref_α
n1104_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1103_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1105_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1730_240
                        add              rsp, 16
                                                                                        jmp   n1104_subscript_β
.Lx1730_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1106_call_α
n1105_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1104_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1106_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1732_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1732_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1732_6]
                        lea              rdx, [rip + .Lx1732_7]
                                                                                        jmp   rax
.Lx1732_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1732_2
.Lx1732_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1732_2
.Lx1732_5:
                        add              rsp, 32
.Lx1732_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1732_240
                        add              rsp, 16
                                                                                        jmp   n1105_deref_β
.Lx1732_240:
                                                                                        jmp   n1107_assign_α
n1106_call_β:
                                                                                        jmp   n1105_deref_β
.Lx1732_0:
                        .quad            .Lx1732_0_s
.Lx1732_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1107_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1108_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1108_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1109_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1109_statement_begin_α:
                                                                                        jmp   n1110_var_α
n1109_statement_begin_β:
                                                                                        jmp   n1115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1111_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1739_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1112_binop_α
n1111_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1109_statement_begin_β
.Lx1739_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1112_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1740_240
                        add              rsp, 16
                                                                                        jmp   n1111_lit_integer_β
.Lx1740_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1113_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1113_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1114_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1114_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1115_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n1115_statement_begin_α:
                                                                                        jmp   n1116_var_α
n1115_statement_begin_β:
                                                                                        jmp   n1128_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1117_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1118_subscript_α
n1117_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1115_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1118_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1748_240
                        add              rsp, 16
                                                                                        jmp   n1117_var_β
.Lx1748_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1119_var_α
n1118_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1117_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1119_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1120_var_α
n1119_var_β:
                        add              rsp, 16
                                                                                        jmp   n1118_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1121_subscript_α
n1120_var_β:
                        add              rsp, 16
                                                                                        jmp   n1119_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1121_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1751_240
                        add              rsp, 16
                                                                                        jmp   n1120_var_β
.Lx1751_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1122_deref_α
n1121_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1120_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1122_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1752_240
                        add              rsp, 16
                                                                                        jmp   n1121_subscript_β
.Lx1752_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1123_call_α
n1122_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1121_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1754_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1754_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1754_6]
                        lea              rdx, [rip + .Lx1754_7]
                                                                                        jmp   rax
.Lx1754_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1754_2
.Lx1754_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1754_2
.Lx1754_5:
                        add              rsp, 32
.Lx1754_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1754_240
                        add              rsp, 16
                                                                                        jmp   n1122_deref_β
.Lx1754_240:
                                                                                        jmp   n1124_var_α
n1123_call_β:
                                                                                        jmp   n1122_deref_β
.Lx1754_0:
                        .quad            .Lx1754_0_s
.Lx1754_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1124_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1125_binop_α
n1124_var_β:
                        add              rsp, 32
                                                                                        jmp   n1122_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1125_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1756_240
                        add              rsp, 16
                                                                                        jmp   n1124_var_β
.Lx1756_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1126_assign_var_α
n1125_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1124_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1126_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1757_240
                        add              rsp, 16
                                                                                        jmp   n1125_binop_β
.Lx1757_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1127_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1127_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1128_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1128_statement_begin_α:
                                                                                        jmp   n1129_lit_string_α
n1128_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1762_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1130_call_α
.Lx1762_0:
                        .quad            .Lx1762_0_s
.Lx1762_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1130_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1764:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1764]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1763_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1128_statement_begin_β
.Lx1763_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1131_assign_α
n1130_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1128_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n1132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1132_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1133_goto_α:
                                                                                        jmp   n788_statement_begin_α
n1133_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1134_goto_α:
                                                                                        jmp   n1135_statement_begin_α
n1134_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1135_statement_begin_α:
                                                                                        jmp   n1136_var_α
n1135_statement_begin_β:
                                                                                        jmp   n1143_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1136_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1138_subscript_α
n1137_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1135_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1138_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1774_240
                        add              rsp, 16
                                                                                        jmp   n1137_var_β
.Lx1774_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1139_deref_α
n1138_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1139_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1775_240
                        add              rsp, 16
                                                                                        jmp   n1138_subscript_β
.Lx1775_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1140_call_α
n1139_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1138_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1140_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1777_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1777_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1777_6]
                        lea              rdx, [rip + .Lx1777_7]
                                                                                        jmp   rax
.Lx1777_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1777_2
.Lx1777_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1777_2
.Lx1777_5:
                        add              rsp, 32
.Lx1777_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1777_240
                        add              rsp, 16
                                                                                        jmp   n1139_deref_β
.Lx1777_240:
                                                                                        jmp   n1141_assign_α
n1140_call_β:
                                                                                        jmp   n1139_deref_β
.Lx1777_0:
                        .quad            .Lx1777_0_s
.Lx1777_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1141_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1142_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1142_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1143_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1143_statement_begin_α:
                                                                                        jmp   n1144_var_α
n1143_statement_begin_β:
                                                                                        jmp   n1149_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1144_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1145_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1784_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1146_binop_α
n1145_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1143_statement_begin_β
.Lx1784_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1146_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1785_240
                        add              rsp, 16
                                                                                        jmp   n1145_lit_integer_β
.Lx1785_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1147_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1147_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1148_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1148_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1149_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n1149_statement_begin_α:
                                                                                        jmp   n1150_var_α
n1149_statement_begin_β:
                                                                                        jmp   n1162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1150_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1152_subscript_α
n1151_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1149_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1152_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1793_240
                        add              rsp, 16
                                                                                        jmp   n1151_var_β
.Lx1793_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1153_var_α
n1152_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1151_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1153_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1154_var_α
n1153_var_β:
                        add              rsp, 16
                                                                                        jmp   n1152_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1155_subscript_α
n1154_var_β:
                        add              rsp, 16
                                                                                        jmp   n1153_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1155_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1796_240
                        add              rsp, 16
                                                                                        jmp   n1154_var_β
.Lx1796_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1156_deref_α
n1155_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1154_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1156_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1797_240
                        add              rsp, 16
                                                                                        jmp   n1155_subscript_β
.Lx1797_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1157_call_α
n1156_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1155_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1157_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1799_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1799_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1799_6]
                        lea              rdx, [rip + .Lx1799_7]
                                                                                        jmp   rax
.Lx1799_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1799_2
.Lx1799_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1799_2
.Lx1799_5:
                        add              rsp, 32
.Lx1799_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1799_240
                        add              rsp, 16
                                                                                        jmp   n1156_deref_β
.Lx1799_240:
                                                                                        jmp   n1158_var_α
n1157_call_β:
                                                                                        jmp   n1156_deref_β
.Lx1799_0:
                        .quad            .Lx1799_0_s
.Lx1799_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1158_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1159_binop_α
n1158_var_β:
                        add              rsp, 32
                                                                                        jmp   n1156_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1159_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1801_240
                        add              rsp, 16
                                                                                        jmp   n1158_var_β
.Lx1801_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1160_assign_var_α
n1159_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1158_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1160_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1802_240
                        add              rsp, 16
                                                                                        jmp   n1159_binop_β
.Lx1802_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1161_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1161_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1162_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1162_statement_begin_α:
                                                                                        jmp   n1163_lit_string_α
n1162_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1807_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1164_call_α
.Lx1807_0:
                        .quad            .Lx1807_0_s
.Lx1807_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1164_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1809:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1809]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1808_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1162_statement_begin_β
.Lx1808_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1165_assign_α
n1164_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1165_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n1166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_goto_α:
                                                                                        jmp   n793_statement_begin_α
n1167_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1168_goto_α:
                                                                                        jmp   n1169_statement_begin_α
n1168_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1169_statement_begin_α:
                                                                                        jmp   n1170_var_α
n1169_statement_begin_β:
                                                                                        jmp   n1177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1171_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1171_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1172_subscript_α
n1171_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1169_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1172_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1819_240
                        add              rsp, 16
                                                                                        jmp   n1171_var_β
.Lx1819_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1173_deref_α
n1172_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1171_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1173_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1820_240
                        add              rsp, 16
                                                                                        jmp   n1172_subscript_β
.Lx1820_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1174_call_α
n1173_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1172_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1174_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1822_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1822_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1822_6]
                        lea              rdx, [rip + .Lx1822_7]
                                                                                        jmp   rax
.Lx1822_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1822_2
.Lx1822_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1822_2
.Lx1822_5:
                        add              rsp, 32
.Lx1822_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1822_240
                        add              rsp, 16
                                                                                        jmp   n1173_deref_β
.Lx1822_240:
                                                                                        jmp   n1175_assign_α
n1174_call_β:
                                                                                        jmp   n1173_deref_β
.Lx1822_0:
                        .quad            .Lx1822_0_s
.Lx1822_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1175_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1176_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1176_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1177_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1177_statement_begin_α:
                                                                                        jmp   n1178_var_α
n1177_statement_begin_β:
                                                                                        jmp   n1183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1180_binop_α
n1179_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1177_statement_begin_β
.Lx1829_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1180_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1830_240
                        add              rsp, 16
                                                                                        jmp   n1179_lit_integer_β
.Lx1830_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1181_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1182_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1183_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n1183_statement_begin_α:
                                                                                        jmp   n1184_var_α
n1183_statement_begin_β:
                                                                                        jmp   n1196_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1186_subscript_α
n1185_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1183_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1186_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1838_240
                        add              rsp, 16
                                                                                        jmp   n1185_var_β
.Lx1838_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1187_var_α
n1186_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1185_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1188_var_α
n1187_var_β:
                        add              rsp, 16
                                                                                        jmp   n1186_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1189_subscript_α
n1188_var_β:
                        add              rsp, 16
                                                                                        jmp   n1187_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1189_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1841_240
                        add              rsp, 16
                                                                                        jmp   n1188_var_β
.Lx1841_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1190_deref_α
n1189_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1188_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1190_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1842_240
                        add              rsp, 16
                                                                                        jmp   n1189_subscript_β
.Lx1842_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1191_call_α
n1190_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1189_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1191_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1844_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1844_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1844_6]
                        lea              rdx, [rip + .Lx1844_7]
                                                                                        jmp   rax
.Lx1844_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1844_2
.Lx1844_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1844_2
.Lx1844_5:
                        add              rsp, 32
.Lx1844_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1844_240
                        add              rsp, 16
                                                                                        jmp   n1190_deref_β
.Lx1844_240:
                                                                                        jmp   n1192_var_α
n1191_call_β:
                                                                                        jmp   n1190_deref_β
.Lx1844_0:
                        .quad            .Lx1844_0_s
.Lx1844_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1193_binop_α
n1192_var_β:
                        add              rsp, 32
                                                                                        jmp   n1190_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1193_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1846_240
                        add              rsp, 16
                                                                                        jmp   n1192_var_β
.Lx1846_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1194_assign_var_α
n1193_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1192_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1194_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1847_240
                        add              rsp, 16
                                                                                        jmp   n1193_binop_β
.Lx1847_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1195_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1196_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1196_statement_begin_α:
                                                                                        jmp   n1197_lit_string_α
n1196_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1852_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1198_call_α
.Lx1852_0:
                        .quad            .Lx1852_0_s
.Lx1852_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1854:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1854]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1853_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1196_statement_begin_β
.Lx1853_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1199_assign_α
n1198_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1196_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1199_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n1200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1201_goto_α:
                                                                                        jmp   n798_statement_begin_α
n1201_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1202_goto_α:
                                                                                        jmp   n1203_statement_begin_α
n1202_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# NEG     S[sp] = -DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1203_statement_begin_α:
                                                                                        jmp   n1204_var_α
n1203_statement_begin_β:
                                                                                        jmp   n1215_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1204_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1205_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1205_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1206_subscript_α
n1205_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1203_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1206_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1864_240
                        add              rsp, 16
                                                                                        jmp   n1205_var_β
.Lx1864_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1207_var_α
n1206_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1205_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1207_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1208_var_α
n1207_var_β:
                        add              rsp, 16
                                                                                        jmp   n1206_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1208_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1209_subscript_α
n1208_var_β:
                        add              rsp, 16
                                                                                        jmp   n1207_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1209_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1867_240
                        add              rsp, 16
                                                                                        jmp   n1208_var_β
.Lx1867_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1210_deref_α
n1209_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1208_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1210_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1868_240
                        add              rsp, 16
                                                                                        jmp   n1209_subscript_β
.Lx1868_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1211_call_α
n1210_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1209_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1211_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # deref
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx1870_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1870_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1870_6]
                        lea              rdx, [rip + .Lx1870_7]
                                                                                        jmp   rax
.Lx1870_6:
                        mov              rdi, qword ptr [1879052320]                    # DRF
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx1870_2
.Lx1870_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx1870_2
.Lx1870_5:
                        add              rsp, 32
.Lx1870_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1870_240
                        add              rsp, 16
                                                                                        jmp   n1210_deref_β
.Lx1870_240:
                                                                                        jmp   n1212_unop_α
n1211_call_β:
                                                                                        jmp   n1210_deref_β
.Lx1870_0:
                        .quad            .Lx1870_0_s
.Lx1870_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1212_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # call
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1213_assign_var_α
n1212_unop_β:
                        add              rsp, 32
                                                                                        jmp   n1210_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1213_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]                     # subscript
                        mov              rsi, qword ptr [rsp + 120]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # unop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1872_240
                        add              rsp, 16
                                                                                        jmp   n1212_unop_β
.Lx1872_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1214_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1214_statement_end_α:
                        add              rsp, 160
                                                                                        jmp   n1215_statement_begin_α
#=======================================================================================================================
#         NEG = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1215_statement_begin_α:
                                                                                        jmp   n1216_lit_string_α
n1215_statement_begin_β:
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1216_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1877_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1217_call_α
.Lx1877_0:
                        .quad            .Lx1877_0_s
.Lx1877_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1217_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1879:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1879]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1878_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1215_statement_begin_β
.Lx1878_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1218_assign_α
n1217_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1215_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1218_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # NEG
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n1219_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1219_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1023_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1220_goto_α:
                                                                                        jmp   n803_statement_begin_α
n1220_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1221_goto_α:
                                                                                        jmp   n909_statement_begin_α
n1221_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1222_goto_α:
                                                                                        jmp   n957_statement_begin_α
n1222_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1223_goto_α:
                                                                                        jmp   n989_statement_begin_α
n1223_goto_β:
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
                        .section         .data
                        .align           8
fn_cell$EMIT:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
EMIT_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1887_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052288]                    # EMIT
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rbp + -104], rax
                        xor              eax, eax
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1887_2
                        mov              rdi, qword ptr [rip + .Lx1887_0]
                        call             mon_emit_call_bin@PLT
.Lx1887_2:
                        mov              rax, qword ptr [rip + fn_cell$EMIT@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   EMIT_act_γ
.Lx1887_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1887_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1887_4
.Lx1887_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1887_4:
                        mov              rcx, qword ptr [rbp + -112]
                        mov              qword ptr [1879052288], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052296], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1887_5
                        mov              rdi, qword ptr [rip + .Lx1887_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1887_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1887_6
                                                                                        jmp   r10
.Lx1887_6:
                                                                                        jmp   r11
EMIT_act_γ:
EMIT_act_ω:
.Lx1887_0:
                        .quad            .Lx1887_0_s
.Lx1887_0_s:
                        .string          "EMIT"
                        .section         .data
                        .align           8
fn_cell$PSH:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
PSH_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1888_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052304]                    # PSH
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rbp + -104], rax
                        xor              eax, eax
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1888_2
                        mov              rdi, qword ptr [rip + .Lx1888_0]
                        call             mon_emit_call_bin@PLT
.Lx1888_2:
                        mov              rax, qword ptr [rip + fn_cell$PSH@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   PSH_act_γ
.Lx1888_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1888_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1888_4
.Lx1888_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1888_4:
                        mov              rcx, qword ptr [rbp + -112]
                        mov              qword ptr [1879052304], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052312], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1888_5
                        mov              rdi, qword ptr [rip + .Lx1888_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1888_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1888_6
                                                                                        jmp   r10
.Lx1888_6:
                                                                                        jmp   r11
PSH_act_γ:
PSH_act_ω:
.Lx1888_0:
                        .quad            .Lx1888_0_s
.Lx1888_0_s:
                        .string          "PSH"
                        .section         .data
                        .align           8
fn_cell$DRF:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
DRF_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1889_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052320]                    # DRF
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # DRF
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rax
                        xor              eax, eax                                       # nm
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1889_2
                        mov              rdi, qword ptr [rip + .Lx1889_0]
                        call             mon_emit_call_bin@PLT
.Lx1889_2:
                        mov              rax, qword ptr [rip + fn_cell$DRF@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   DRF_act_γ
.Lx1889_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1889_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1889_4
.Lx1889_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1889_4:
                        mov              rcx, qword ptr [rbp + -112]                    # DRF
                        mov              qword ptr [1879052320], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052328], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # nm
                        mov              qword ptr [1879052336], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052344], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1889_5
                        mov              rdi, qword ptr [rip + .Lx1889_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1889_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1889_6
                                                                                        jmp   r10
.Lx1889_6:
                                                                                        jmp   r11
DRF_act_γ:
DRF_act_ω:
.Lx1889_0:
                        .quad            .Lx1889_0_s
.Lx1889_0_s:
                        .string          "DRF"
                        .section         .data
                        .align           8
fn_cell$ADD:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
ADD_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1890_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052352]                    # ADD
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # ADD
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rax
                        xor              eax, eax                                       # p1
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1890_2
                        mov              rdi, qword ptr [rip + .Lx1890_0]
                        call             mon_emit_call_bin@PLT
.Lx1890_2:
                        mov              rax, qword ptr [rip + fn_cell$ADD@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   ADD_act_γ
.Lx1890_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1890_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1890_4
.Lx1890_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1890_4:
                        mov              rcx, qword ptr [rbp + -112]                    # ADD
                        mov              qword ptr [1879052352], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052360], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # p1
                        mov              qword ptr [1879052368], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052376], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1890_5
                        mov              rdi, qword ptr [rip + .Lx1890_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1890_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1890_6
                                                                                        jmp   r10
.Lx1890_6:
                                                                                        jmp   r11
ADD_act_γ:
ADD_act_ω:
.Lx1890_0:
                        .quad            .Lx1890_0_s
.Lx1890_0_s:
                        .string          "ADD"
                        .section         .data
                        .align           8
fn_cell$SUB:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
SUB_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1891_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052384]                    # SUB
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # SUB
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rax
                        xor              eax, eax                                       # p1
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1891_2
                        mov              rdi, qword ptr [rip + .Lx1891_0]
                        call             mon_emit_call_bin@PLT
.Lx1891_2:
                        mov              rax, qword ptr [rip + fn_cell$SUB@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   SUB_act_γ
.Lx1891_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1891_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1891_4
.Lx1891_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1891_4:
                        mov              rcx, qword ptr [rbp + -112]                    # SUB
                        mov              qword ptr [1879052384], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052392], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # p1
                        mov              qword ptr [1879052368], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052376], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1891_5
                        mov              rdi, qword ptr [rip + .Lx1891_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1891_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1891_6
                                                                                        jmp   r10
.Lx1891_6:
                                                                                        jmp   r11
SUB_act_γ:
SUB_act_ω:
.Lx1891_0:
                        .quad            .Lx1891_0_s
.Lx1891_0_s:
                        .string          "SUB"
                        .section         .data
                        .align           8
fn_cell$MUL:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
MUL_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1892_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052400]                    # MUL
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # MUL
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rax
                        xor              eax, eax                                       # p1
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1892_2
                        mov              rdi, qword ptr [rip + .Lx1892_0]
                        call             mon_emit_call_bin@PLT
.Lx1892_2:
                        mov              rax, qword ptr [rip + fn_cell$MUL@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   MUL_act_γ
.Lx1892_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1892_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1892_4
.Lx1892_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1892_4:
                        mov              rcx, qword ptr [rbp + -112]                    # MUL
                        mov              qword ptr [1879052400], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052408], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # p1
                        mov              qword ptr [1879052368], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052376], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1892_5
                        mov              rdi, qword ptr [rip + .Lx1892_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1892_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1892_6
                                                                                        jmp   r10
.Lx1892_6:
                                                                                        jmp   r11
MUL_act_γ:
MUL_act_ω:
.Lx1892_0:
                        .quad            .Lx1892_0_s
.Lx1892_0_s:
                        .string          "MUL"
                        .section         .data
                        .align           8
fn_cell$DIV:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
DIV_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1893_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052416]                    # DIV
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rbp + -120], rax
                        xor              eax, eax                                       # DIV
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rax
                        xor              eax, eax                                       # p1
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1893_2
                        mov              rdi, qword ptr [rip + .Lx1893_0]
                        call             mon_emit_call_bin@PLT
.Lx1893_2:
                        mov              rax, qword ptr [rip + fn_cell$DIV@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   DIV_act_γ
.Lx1893_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1893_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1893_4
.Lx1893_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1893_4:
                        mov              rcx, qword ptr [rbp + -112]                    # DIV
                        mov              qword ptr [1879052416], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052424], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # p1
                        mov              qword ptr [1879052368], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052376], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1893_5
                        mov              rdi, qword ptr [rip + .Lx1893_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1893_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1893_6
                                                                                        jmp   r10
.Lx1893_6:
                                                                                        jmp   r11
DIV_act_γ:
DIV_act_ω:
.Lx1893_0:
                        .quad            .Lx1893_0_s
.Lx1893_0_s:
                        .string          "DIV"
                        .section         .data
                        .align           8
fn_cell$NEG:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
NEG_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx1894_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052432]                    # NEG
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rbp + -104], rax
                        xor              eax, eax
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rax
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1894_2
                        mov              rdi, qword ptr [rip + .Lx1894_0]
                        call             mon_emit_call_bin@PLT
.Lx1894_2:
                        mov              rax, qword ptr [rip + fn_cell$NEG@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   NEG_act_γ
.Lx1894_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx1894_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx1894_4
.Lx1894_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx1894_4:
                        mov              rcx, qword ptr [rbp + -112]
                        mov              qword ptr [1879052432], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052440], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 140170155507084
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1894_5
                        mov              rdi, qword ptr [rip + .Lx1894_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx1894_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx1894_6
                                                                                        jmp   r10
.Lx1894_6:
                                                                                        jmp   r11
NEG_act_γ:
NEG_act_ω:
.Lx1894_0:
                        .quad            .Lx1894_0_s
.Lx1894_0_s:
                        .string          "NEG"
                        .section         .rodata
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*NEG"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "T"
.S9:                    .string          "*DIV"
.S10:                   .string          "*MUL"
.S11:                   .string          "PAT$5$V0"
.S12:                   .string          "*SUB"
.S13:                   .string          "*ADD"
.S14:                   .string          "PAT$7$V0"
.S15:                   .string          "PAT$7$V1"
.S16:                   .string          "PAT$7$V2"
.S17:                   .string          "*EMIT"
.S18:                   .string          "PATV$0"
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
