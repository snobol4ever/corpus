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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx50_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx50_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx52_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx89_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx89_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n68_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx91_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              qword ptr [rsp + 456], rbp                     # old_rbp
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
                        add              rsp, 64
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
.Lx126_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx126_10
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx145_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx229_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx229_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n181_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx231_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx315_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx315_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n267_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx317_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx401_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx401_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n353_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx403_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx487_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx487_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n439_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx489_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              rdi, qword ptr [rip + .Lx540_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx540_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx540_6]
                        lea              rdx, [rip + .Lx540_7]
                                                                                        jmp   rax
.Lx540_6:
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
                                                                                        jmp   .Lx540_2
.Lx540_7:
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
                                                                                        jmp   .Lx540_2
.Lx540_5:
                        add              rsp, 32
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
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx548_240
                        add              rsp, 16
                                                                                        jmp   n500_lit_integer_β
.Lx548_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n502_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n502_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n506_var_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
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
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd560:            .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd560]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n514_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n514_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n515_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n515_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
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
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n519_var_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
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
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
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
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd583:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd583]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
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
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd589:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd589]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
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
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx591_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx591_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n532_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx593_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
                                                                                        jmp   rax
.Lx593_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_β:
                                                                                        jmp   proc_LBL__SGN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__SGN_ω:
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
n594_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n595_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n595_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx599_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx599_1
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "EMIT"
.Lx599_1:
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
n600_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n601_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n601_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx605_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx605_1
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "PSH"
.Lx605_1:
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
n606_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n607_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n607_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx611_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx611_1
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "DRF"
.Lx611_1:
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
n612_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n613_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n613_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx617_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx617_1
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "ADD"
.Lx617_1:
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
n618_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n619_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n619_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx623_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx623_1
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "SUB"
.Lx623_1:
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
n624_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n625_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n625_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx629_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx629_1
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "MUL"
.Lx629_1:
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
n630_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n631_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n631_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx635_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx635_1
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "DIV"
.Lx635_1:
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
                        .globl           proc_SGN_α
proc_SGN_α:
proc_SGN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n636_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n637_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n637_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx641_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx641_1
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "SGN"
.Lx641_1:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_SGN_ω:
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
                        mov              qword ptr [rsp + 112], r8
                        mov              dword ptr [rsp + 104], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n644_match_assign_cond_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n642_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n643_match_any_α
n642_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n643_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx648_239
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx648_239:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        jne   .Lx648_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
.Lx648_240:
                        add              r14d, 1
                                                                                        jmp   n644_match_assign_cond_α
n643_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n644_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$0_scanhit
n644_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n643_match_any_β
proc_PAT$0_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 112], 1
                                                                                        jne   .Lx651_0
                        mov              ecx, dword ptr [rdx + 104]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx651_0:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 112], 1
                                                                                        jne   .Lx652_0
                        mov              eax, dword ptr [rdx + 104]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx652_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx652_0
                        mov              dword ptr [rdx + 104], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$0_attempt
.Lx652_0:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$0_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 120]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 128]
                        lea              rsp, [rax + 144]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n655_match_assign_cond_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n653_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 48], r14d
                                                                                        jmp   n654_match_span_α
n653_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n654_match_span_α:
                        sub              rsp, 16
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx659_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx659_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx659_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx659_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx659_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx659_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx659_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx659_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx659_1
                        add              ecx, 1
                                                                                        jmp   .Lx659_0
.Lx659_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx659_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
.Lx659_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n655_match_assign_cond_α
n654_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$1_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n655_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 48]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   proc_PAT$1_scanhit
n655_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n654_match_span_β
proc_PAT$1_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 96], 1
                                                                                        jne   .Lx662_0
                        mov              ecx, dword ptr [rdx + 88]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx662_0:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 96], 1
                                                                                        jne   .Lx663_0
                        mov              eax, dword ptr [rdx + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx663_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx663_0
                        mov              dword ptr [rdx + 88], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$1_attempt
.Lx663_0:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$1_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 104]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 112]
                        lea              rsp, [rax + 128]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n664_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx672_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n670_match_defer_α
.Lx672_21:
                        lea              rax, [rip + .Lx672_22]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n669_match_defer_α
.Lx672_22:
                        lea              rax, [rip + .Lx672_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n666_match_lit_α
n664_match_alternate_s0:
                        lea              rax, [rip + .Lx672_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n664_match_alternate_as
n664_match_alternate_s1:
                        lea              rax, [rip + .Lx672_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n664_match_alternate_as
n664_match_alternate_s2:
                        lea              rax, [rip + .Lx672_42]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n664_match_alternate_as
.Lx672_40:
                                                                                        jmp   n670_match_defer_β
.Lx672_41:
                                                                                        jmp   n669_match_defer_β
.Lx672_42:
                                                                                        jmp   n665_goto_β
n664_match_alternate_as:
                                                                                        jmp   proc_PAT$2_γ
n664_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n664_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx672_19:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
n665_goto_α:
                                                                                        jmp   n664_match_alternate_af
n665_goto_β:
                                                                                        jmp   n664_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n666_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n664_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   n664_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n667_match_defer_α
n666_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n664_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n667_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx676_11
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
                        cmp              eax, 8
                                                                                        jne   .Lx676_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx676_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx676_10
.Lx676_9:
                        xor              eax, eax
.Lx676_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx676_11:
                        test             rax, rax
                                                                                        jz    .Lx676_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx676_4]
                        lea              rdx, [rip + .Lx676_5]
                                                                                        jmp   rax
.Lx676_4:
                                                                                        jmp   n668_match_lit_α
.Lx676_5:
                                                                                        jmp   n666_match_lit_β
.Lx676_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx676_2:
                        test             rax, rax
                                                                                        je    .Lx676_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx676_7]
                        lea              rdx, [rip + .Lx676_8]
                                                                                        jmp   rax
.Lx676_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx676_2
.Lx676_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx676_2
.Lx676_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n666_match_lit_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx676_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n668_match_lit_α
.Lx676_6:
                        add              rsp, 16
                                                                                        jmp   n666_match_lit_β
n667_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n668_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n667_match_defer_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n667_match_defer_β
                        add              r14d, 1
                                                                                        jmp   n664_match_alternate_s2
n668_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n667_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n669_match_defer_α:
                        mov              rax, qword ptr [1879052816]                    # PAT$2$V1
                        mov              rdx, qword ptr [1879052824]
                        cmp              eax, 8
                                                                                        jne   .Lx679_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx679_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx679_10
.Lx679_9:
                        xor              eax, eax
.Lx679_10:
                        test             rax, rax
                                                                                        jz    .Lx679_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx679_4]
                        lea              rdx, [rip + .Lx679_5]
                                                                                        jmp   rax
.Lx679_4:
                                                                                        jmp   n664_match_alternate_s1
.Lx679_5:
                                                                                        jmp   n664_match_alternate_af
.Lx679_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx679_2:
                        test             rax, rax
                                                                                        je    .Lx679_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx679_7]
                        lea              rdx, [rip + .Lx679_8]
                                                                                        jmp   rax
.Lx679_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx679_2
.Lx679_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx679_2
.Lx679_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n664_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx679_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n664_match_alternate_s1
.Lx679_6:
                        add              rsp, 16
                                                                                        jmp   n664_match_alternate_af
n669_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n670_match_defer_α:
                        mov              rax, qword ptr [1879052800]                    # PAT$2$V0
                        mov              rdx, qword ptr [1879052808]
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
                        test             rax, rax
                                                                                        jz    .Lx680_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx680_4]
                        lea              rdx, [rip + .Lx680_5]
                                                                                        jmp   rax
.Lx680_4:
                                                                                        jmp   n664_match_alternate_s0
.Lx680_5:
                                                                                        jmp   n664_match_alternate_af
.Lx680_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
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
                                                                                        js    n664_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx680_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n664_match_alternate_s0
.Lx680_6:
                        add              rsp, 16
                                                                                        jmp   n664_match_alternate_af
n670_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 144], 1
                                                                                        jne   .Lx681_0
                        mov              ecx, dword ptr [rdx + 136]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx681_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 144], 1
                                                                                        jne   .Lx682_0
                        mov              eax, dword ptr [rdx + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx682_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx682_0
                        mov              dword ptr [rdx + 136], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$2_attempt
.Lx682_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$2_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 152]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 160]
                        lea              rsp, [rax + 176]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 224], r8
                        mov              dword ptr [rsp + 216], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n683_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx693_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n691_match_defer_α
.Lx693_21:
                        lea              rax, [rip + .Lx693_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n685_match_assign_save_α
n683_match_alternate_s0:
                        lea              rax, [rip + .Lx693_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n683_match_alternate_as
n683_match_alternate_s1:
                        lea              rax, [rip + .Lx693_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n683_match_alternate_as
.Lx693_40:
                                                                                        jmp   n691_match_defer_β
.Lx693_41:
                                                                                        jmp   n684_goto_β
n683_match_alternate_as:
                                                                                        jmp   proc_PAT$3_γ
n683_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n683_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx693_19:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
n684_goto_α:
                                                                                        jmp   n683_match_alternate_af
n684_goto_β:
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n685_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 96], r14d
                        add              rsp, 16
                                                                                        jmp   n686_match_any_α
n685_match_assign_save_β:
                        sub              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n686_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jl    .Lx698_240
                        add              rsp, 16
                                                                                        jmp   n683_match_alternate_af
.Lx698_240:
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 43
                                                                                        je    .Lx698_0
                        cmp              esi, 45
                                                                                        je    .Lx698_0
                        add              rsp, 16
                                                                                        jmp   n683_match_alternate_af
.Lx698_0:
                        add              r14d, 1
                                                                                        jmp   n687_match_assign_cond_α
n686_match_any_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n683_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n687_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 96]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n688_match_assign_save_α
n687_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n686_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n688_match_assign_save_α:
                        mov              dword ptr [rbp + 160], r14d
                                                                                        jmp   n689_match_defer_α
n688_match_assign_save_β:
                                                                                        jmp   n687_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n689_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        cmp              eax, 8
                                                                                        jne   .Lx703_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx703_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx703_10
.Lx703_9:
                        xor              eax, eax
.Lx703_10:
                        test             rax, rax
                                                                                        jz    .Lx703_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx703_4]
                        lea              rdx, [rip + .Lx703_5]
                                                                                        jmp   rax
.Lx703_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n690_match_assign_cond_α
.Lx703_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n688_match_assign_save_β
.Lx703_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx703_2:
                        test             rax, rax
                                                                                        je    .Lx703_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx703_7]
                        lea              rdx, [rip + .Lx703_8]
                                                                                        jmp   rax
.Lx703_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx703_2
.Lx703_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx703_2
.Lx703_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n688_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx703_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n690_match_assign_cond_α
.Lx703_6:
                        add              rsp, 16
                                                                                        jmp   n688_match_assign_save_β
n689_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n688_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n690_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 160]
                        lea              rcx, [rip + .S5]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n683_match_alternate_s1
n690_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n689_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n691_match_defer_α:
                        mov              rax, qword ptr [1879052832]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052840]
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
                                                                                        jmp   n683_match_alternate_s0
.Lx706_5:
                                                                                        jmp   n683_match_alternate_af
.Lx706_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S6]                               # varname
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
                                                                                        js    n683_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx706_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n683_match_alternate_s0
.Lx706_6:
                        add              rsp, 16
                                                                                        jmp   n683_match_alternate_af
n691_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 224], 1
                                                                                        jne   .Lx707_0
                        mov              ecx, dword ptr [rdx + 216]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx707_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 224], 1
                                                                                        jne   .Lx708_0
                        mov              eax, dword ptr [rdx + 216]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx708_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx708_0
                        mov              dword ptr [rdx + 216], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$3_attempt
.Lx708_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$3_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 232]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 240]
                        lea              rsp, [rax + 256]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$4_α
proc_PAT$4_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 336], r8
                        mov              dword ptr [rsp + 328], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$4_attempt:
proc_PAT$4_α_body:
                        lea              rax, [rip + proc_PAT$4_ω]
                        mov              qword ptr [rbp + 304], rax
#-----------------------------------------------------------------------------------------------------------------------
n709_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052848]                    # PAT$4$V0
                        mov              rdx, qword ptr [1879052856]
                        cmp              eax, 8
                                                                                        jne   .Lx722_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx722_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx722_10
.Lx722_9:
                        xor              eax, eax
.Lx722_10:
                        test             rax, rax
                                                                                        jz    .Lx722_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx722_4]
                        lea              rdx, [rip + .Lx722_5]
                                                                                        jmp   rax
.Lx722_4:
                                                                                        jmp   n710_match_arbno_α
.Lx722_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx722_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S7]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx722_2:
                        test             rax, rax
                                                                                        je    .Lx722_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx722_7]
                        lea              rdx, [rip + .Lx722_8]
                                                                                        jmp   rax
.Lx722_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx722_2
.Lx722_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx722_2
.Lx722_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx722_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
.Lx722_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx722_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n710_match_arbno_α
.Lx722_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$4_scanfail
n709_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n710_match_arbno_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], r14d
                        mov              dword ptr [rbp + 56], 0
                        mov              qword ptr [rbp + 72], rsp
                        mov              qword ptr [rbp + 80], rbp
                        mov              qword ptr [rbp + 64], 0
                                                                                        jmp   proc_PAT$4_γ
n710_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 52]
                        mov              rax, qword ptr [rbp + 64]
                        sub              rsp, 240
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rbp + 64], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n711_match_alternate_α
n710_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n711_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 56]
                        add              eax, 1
                        mov              dword ptr [rbp + 56], eax
                        mov              dword ptr [rbp + 52], r14d
                                                                                        jmp   proc_PAT$4_γ
n710_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 312]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 56]
                        test             ecx, ecx
                                                                                        jz    .Lx724_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 56], ecx
                        mov              qword ptr [rbp + 64], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n711_match_alternate_β
.Lx724_2:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   n709_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n711_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx726_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n718_match_lit_α
.Lx726_21:
                        lea              rax, [rip + .Lx726_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n713_match_lit_α
n711_match_alternate_s0:
                        lea              rax, [rip + .Lx726_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n711_match_alternate_as
n711_match_alternate_s1:
                        lea              rax, [rip + .Lx726_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n711_match_alternate_as
.Lx726_40:
                                                                                        jmp   n717_goto_β
.Lx726_41:
                                                                                        jmp   n712_goto_β
n711_match_alternate_as:
                                                                                        jmp   n710_match_arbno_as
n711_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n711_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx726_19:
                                                                                        jmp   n710_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n712_goto_α:
                                                                                        jmp   n711_match_alternate_af
n712_goto_β:
                                                                                        jmp   n711_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n713_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n711_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 47
                                                                                        jne   n711_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n714_match_assign_save_α
n713_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n711_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n714_match_assign_save_α:
                        lea              rdi, [rbp + 256]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n715_match_defer_α
n714_match_assign_save_β:
                        lea              rdi, [rbp + 256]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n713_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n715_match_defer_α:
                        mov              rax, qword ptr [1879052880]                    # PAT$4$V2
                        mov              rdx, qword ptr [1879052888]
                        cmp              eax, 8
                                                                                        jne   .Lx732_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx732_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx732_10
.Lx732_9:
                        xor              eax, eax
.Lx732_10:
                        test             rax, rax
                                                                                        jz    .Lx732_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx732_4]
                        lea              rdx, [rip + .Lx732_5]
                                                                                        jmp   rax
.Lx732_4:
                                                                                        jmp   n716_match_assign_cond_α
.Lx732_5:
                                                                                        jmp   n714_match_assign_save_β
.Lx732_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S8]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx732_2:
                        test             rax, rax
                                                                                        je    .Lx732_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx732_7]
                        lea              rdx, [rip + .Lx732_8]
                                                                                        jmp   rax
.Lx732_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx732_2
.Lx732_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx732_2
.Lx732_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n714_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx732_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n716_match_assign_cond_α
.Lx732_6:
                        add              rsp, 16
                                                                                        jmp   n714_match_assign_save_β
n715_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n716_match_assign_cond_α:
                        lea              rdi, [rbp + 256]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S9]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n711_match_alternate_s1
n716_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n715_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n717_goto_α:
                                                                                        jmp   n711_match_alternate_af
n717_goto_β:
                                                                                        jmp   n711_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n718_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n711_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 42
                                                                                        jne   n711_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n719_match_assign_save_α
n718_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n711_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n719_match_assign_save_α:
                        lea              rdi, [rbp + 192]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n720_match_defer_α
n719_match_assign_save_β:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n718_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n720_match_defer_α:
                        mov              rax, qword ptr [1879052864]                    # PAT$4$V1
                        mov              rdx, qword ptr [1879052872]
                        cmp              eax, 8
                                                                                        jne   .Lx740_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx740_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx740_10
.Lx740_9:
                        xor              eax, eax
.Lx740_10:
                        test             rax, rax
                                                                                        jz    .Lx740_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx740_4]
                        lea              rdx, [rip + .Lx740_5]
                                                                                        jmp   rax
.Lx740_4:
                                                                                        jmp   n721_match_assign_cond_α
.Lx740_5:
                                                                                        jmp   n719_match_assign_save_β
.Lx740_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S10]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx740_2:
                        test             rax, rax
                                                                                        je    .Lx740_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx740_7]
                        lea              rdx, [rip + .Lx740_8]
                                                                                        jmp   rax
.Lx740_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx740_2
.Lx740_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx740_2
.Lx740_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n719_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx740_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n721_match_assign_cond_α
.Lx740_6:
                        add              rsp, 16
                                                                                        jmp   n719_match_assign_save_β
n720_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n721_match_assign_cond_α:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S11]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n711_match_alternate_s0
n721_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n720_match_defer_β
proc_PAT$4_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 336], 1
                                                                                        jne   .Lx743_0
                        mov              ecx, dword ptr [rdx + 328]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx743_0:
                                                                                        jmp   proc_PAT$4_γ
proc_PAT$4_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 336], 1
                                                                                        jne   .Lx744_0
                        mov              eax, dword ptr [rdx + 328]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx744_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx744_0
                        mov              dword ptr [rdx + 328], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$4_attempt
.Lx744_0:
                                                                                        jmp   proc_PAT$4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_β:
                                                                                        jmp   qword ptr [rbp + 304]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$4_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 344]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$4_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 352]
                        lea              rsp, [rax + 368]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$5_α
proc_PAT$5_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 336], r8
                        mov              dword ptr [rsp + 328], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$5_attempt:
proc_PAT$5_α_body:
                        lea              rax, [rip + proc_PAT$5_ω]
                        mov              qword ptr [rbp + 304], rax
#-----------------------------------------------------------------------------------------------------------------------
n745_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052896]                    # PAT$5$V0
                        mov              rdx, qword ptr [1879052904]
                        cmp              eax, 8
                                                                                        jne   .Lx758_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx758_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx758_10
.Lx758_9:
                        xor              eax, eax
.Lx758_10:
                        test             rax, rax
                                                                                        jz    .Lx758_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx758_4]
                        lea              rdx, [rip + .Lx758_5]
                                                                                        jmp   rax
.Lx758_4:
                                                                                        jmp   n746_match_arbno_α
.Lx758_5:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx758_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S12]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx758_2:
                        test             rax, rax
                                                                                        je    .Lx758_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx758_7]
                        lea              rdx, [rip + .Lx758_8]
                                                                                        jmp   rax
.Lx758_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx758_2
.Lx758_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx758_2
.Lx758_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx758_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
.Lx758_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx758_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n746_match_arbno_α
.Lx758_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$5_scanfail
n745_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n746_match_arbno_α:
                        mov              dword ptr [rbp + 48], r14d
                        mov              dword ptr [rbp + 52], r14d
                        mov              dword ptr [rbp + 56], 0
                        mov              qword ptr [rbp + 72], rsp
                        mov              qword ptr [rbp + 80], rbp
                        mov              qword ptr [rbp + 64], 0
                                                                                        jmp   proc_PAT$5_γ
n746_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 52]
                        mov              rax, qword ptr [rbp + 64]
                        sub              rsp, 240
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              eax, 0
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rbp + 64], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n747_match_alternate_α
n746_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n747_match_alternate_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 56]
                        add              eax, 1
                        mov              dword ptr [rbp + 56], eax
                        mov              dword ptr [rbp + 52], r14d
                                                                                        jmp   proc_PAT$5_γ
n746_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 312]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 56]
                        test             ecx, ecx
                                                                                        jz    .Lx760_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 56], ecx
                        mov              qword ptr [rbp + 64], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n747_match_alternate_β
.Lx760_2:
                        mov              r14d, dword ptr [rbp + 48]
                        mov              rbp, qword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 72]
                                                                                        jmp   n745_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n747_match_alternate_α:
                        mov              dword ptr [rbp + 112], r14d
                        lea              rax, [rip + .Lx762_21]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n754_match_lit_α
.Lx762_21:
                        lea              rax, [rip + .Lx762_19]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   n749_match_lit_α
n747_match_alternate_s0:
                        lea              rax, [rip + .Lx762_40]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n747_match_alternate_as
n747_match_alternate_s1:
                        lea              rax, [rip + .Lx762_41]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n747_match_alternate_as
.Lx762_40:
                                                                                        jmp   n753_goto_β
.Lx762_41:
                                                                                        jmp   n748_goto_β
n747_match_alternate_as:
                                                                                        jmp   n746_match_arbno_as
n747_match_alternate_β:
                        mov              rax, qword ptr [rbp + 120]
                                                                                        jmp   rax
n747_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 112]
                        mov              rax, qword ptr [rbp + 128]
                                                                                        jmp   rax
.Lx762_19:
                                                                                        jmp   n746_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n748_goto_α:
                                                                                        jmp   n747_match_alternate_af
n748_goto_β:
                                                                                        jmp   n747_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n749_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n747_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n747_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n750_match_assign_save_α
n749_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n747_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n750_match_assign_save_α:
                        lea              rdi, [rbp + 256]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n751_match_defer_α
n750_match_assign_save_β:
                        lea              rdi, [rbp + 256]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n749_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n751_match_defer_α:
                        mov              rax, qword ptr [1879052928]                    # PAT$5$V2
                        mov              rdx, qword ptr [1879052936]
                        cmp              eax, 8
                                                                                        jne   .Lx768_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx768_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx768_10
.Lx768_9:
                        xor              eax, eax
.Lx768_10:
                        test             rax, rax
                                                                                        jz    .Lx768_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx768_4]
                        lea              rdx, [rip + .Lx768_5]
                                                                                        jmp   rax
.Lx768_4:
                                                                                        jmp   n752_match_assign_cond_α
.Lx768_5:
                                                                                        jmp   n750_match_assign_save_β
.Lx768_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S13]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx768_2:
                        test             rax, rax
                                                                                        je    .Lx768_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx768_7]
                        lea              rdx, [rip + .Lx768_8]
                                                                                        jmp   rax
.Lx768_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx768_2
.Lx768_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx768_2
.Lx768_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n750_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx768_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n752_match_assign_cond_α
.Lx768_6:
                        add              rsp, 16
                                                                                        jmp   n750_match_assign_save_β
n751_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n752_match_assign_cond_α:
                        lea              rdi, [rbp + 256]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S14]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n747_match_alternate_s1
n752_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n751_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n753_goto_α:
                                                                                        jmp   n747_match_alternate_af
n753_goto_β:
                                                                                        jmp   n747_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n754_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n747_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 43
                                                                                        jne   n747_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n755_match_assign_save_α
n754_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n747_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n755_match_assign_save_α:
                        lea              rdi, [rbp + 192]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n756_match_defer_α
n755_match_assign_save_β:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n754_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n756_match_defer_α:
                        mov              rax, qword ptr [1879052912]                    # PAT$5$V1
                        mov              rdx, qword ptr [1879052920]
                        cmp              eax, 8
                                                                                        jne   .Lx776_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx776_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx776_10
.Lx776_9:
                        xor              eax, eax
.Lx776_10:
                        test             rax, rax
                                                                                        jz    .Lx776_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx776_4]
                        lea              rdx, [rip + .Lx776_5]
                                                                                        jmp   rax
.Lx776_4:
                                                                                        jmp   n757_match_assign_cond_α
.Lx776_5:
                                                                                        jmp   n755_match_assign_save_β
.Lx776_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S15]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx776_2:
                        test             rax, rax
                                                                                        je    .Lx776_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx776_7]
                        lea              rdx, [rip + .Lx776_8]
                                                                                        jmp   rax
.Lx776_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx776_2
.Lx776_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx776_2
.Lx776_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n755_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx776_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n757_match_assign_cond_α
.Lx776_6:
                        add              rsp, 16
                                                                                        jmp   n755_match_assign_save_β
n756_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n757_match_assign_cond_α:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S16]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n747_match_alternate_s0
n757_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n756_match_defer_β
proc_PAT$5_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 336], 1
                                                                                        jne   .Lx779_0
                        mov              ecx, dword ptr [rdx + 328]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx779_0:
                                                                                        jmp   proc_PAT$5_γ
proc_PAT$5_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 336], 1
                                                                                        jne   .Lx780_0
                        mov              eax, dword ptr [rdx + 328]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx780_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx780_0
                        mov              dword ptr [rdx + 328], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$5_attempt
.Lx780_0:
                                                                                        jmp   proc_PAT$5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_β:
                                                                                        jmp   qword ptr [rbp + 304]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$5_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 344]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$5_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 352]
                        lea              rsp, [rax + 368]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$6_α
proc_PAT$6_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$6_attempt:
proc_PAT$6_α_body:
                        lea              rax, [rip + proc_PAT$6_ω]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n781_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n782_call_α
.Lx785_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n782_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd287:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd287]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx786_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
.Lx786_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n783_match_value_α
n782_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n783_match_value_α:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx787_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx787_4]
                        lea              rdx, [rip + .Lx787_5]
                                                                                        jmp   rax
.Lx787_4:
                                                                                        jmp   n784_match_fence1_α
.Lx787_5:
                                                                                        jmp   proc_PAT$6_scanfail
.Lx787_0:
                        lea              rdi, [rsp + 0]                                 # pval
                        call             rt_match_value_open@PLT
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    proc_PAT$6_scanfail
                        mov              r14d, eax
                        lea              rax, [rip + .Lx787_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n784_match_fence1_α
.Lx787_6:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$6_scanfail
n783_match_value_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n784_match_fence1_α:
                                                                                        jmp   proc_PAT$6_scanhit
n784_match_fence1_β:
                                                                                        jmp   proc_PAT$6_scanfail
proc_PAT$6_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 128], 1
                                                                                        jne   .Lx790_0
                        mov              ecx, dword ptr [rdx + 120]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx790_0:
                                                                                        jmp   proc_PAT$6_γ
proc_PAT$6_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 128], 1
                                                                                        jne   .Lx791_0
                        mov              eax, dword ptr [rdx + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx791_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx791_0
                        mov              dword ptr [rdx + 120], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$6_attempt
.Lx791_0:
                                                                                        jmp   proc_PAT$6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$6_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 136]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$6_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 144]
                        lea              rsp, [rax + 160]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$7_α
proc_PAT$7_α:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
                        mov              rax, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rax]
                        mov              r11, qword ptr [rax + 8]
                        mov              qword ptr [rax + r10*8 + 16], r11
                        inc              qword ptr [rax]
                        mov              qword ptr [rax + 8], rsp
proc_PAT$7_attempt:
proc_PAT$7_α_body:
                        lea              rax, [rip + proc_PAT$7_ω]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n793_match_pos_α
.Lx802_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n793_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx803_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_scanfail
.Lx803_240:
                                                                                        jmp   n794_match_arbno_α
n793_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$7_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n794_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n795_lit_integer_α
n794_match_arbno_β:
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
                                                                                        jmp   n797_match_defer_α
n794_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n797_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n795_lit_integer_α
n794_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx805_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n797_match_defer_β
.Lx805_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n793_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n796_match_rpos_α
.Lx806_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n796_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx807_240
                        add              rsp, 16
                                                                                        jmp   n794_match_arbno_β
.Lx807_240:
                                                                                        jmp   proc_PAT$7_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n797_match_defer_α:
                        mov              rax, qword ptr [1879052944]                    # PAT$7$V0
                        mov              rdx, qword ptr [1879052952]
                        cmp              eax, 8
                                                                                        jne   .Lx808_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx808_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx808_10
.Lx808_9:
                        xor              eax, eax
.Lx808_10:
                        test             rax, rax
                                                                                        jz    .Lx808_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx808_4]
                        lea              rdx, [rip + .Lx808_5]
                                                                                        jmp   rax
.Lx808_4:
                                                                                        jmp   n798_match_defer_α
.Lx808_5:
                                                                                        jmp   n794_match_arbno_af
.Lx808_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S17]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx808_2:
                        test             rax, rax
                                                                                        je    .Lx808_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx808_7]
                        lea              rdx, [rip + .Lx808_8]
                                                                                        jmp   rax
.Lx808_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx808_2
.Lx808_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx808_2
.Lx808_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n794_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx808_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n798_match_defer_α
.Lx808_6:
                        add              rsp, 16
                                                                                        jmp   n794_match_arbno_af
n797_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n798_match_defer_α:
                        mov              rax, qword ptr [1879052960]                    # PAT$7$V1
                        mov              rdx, qword ptr [1879052968]
                        cmp              eax, 8
                                                                                        jne   .Lx809_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx809_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx809_10
.Lx809_9:
                        xor              eax, eax
.Lx809_10:
                        test             rax, rax
                                                                                        jz    .Lx809_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx809_4]
                        lea              rdx, [rip + .Lx809_5]
                                                                                        jmp   rax
.Lx809_4:
                                                                                        jmp   n799_match_assign_save_α
.Lx809_5:
                                                                                        jmp   n797_match_defer_β
.Lx809_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S18]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx809_2:
                        test             rax, rax
                                                                                        je    .Lx809_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx809_7]
                        lea              rdx, [rip + .Lx809_8]
                                                                                        jmp   rax
.Lx809_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx809_2
.Lx809_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx809_2
.Lx809_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n797_match_defer_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx809_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n799_match_assign_save_α
.Lx809_6:
                        add              rsp, 16
                                                                                        jmp   n797_match_defer_β
n798_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n799_match_assign_save_α:
                        lea              rdi, [rbp + 192]                               # slot
                        mov              esi, r14d                                      # delta
                        call             rt_cap_push@PLT
                                                                                        jmp   n800_match_defer_α
n799_match_assign_save_β:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_pop@PLT
                                                                                        jmp   n798_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n800_match_defer_α:
                        mov              rax, qword ptr [1879052976]                    # PAT$7$V2
                        mov              rdx, qword ptr [1879052984]
                        cmp              eax, 8
                                                                                        jne   .Lx812_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx812_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx812_10
.Lx812_9:
                        xor              eax, eax
.Lx812_10:
                        test             rax, rax
                                                                                        jz    .Lx812_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx812_4]
                        lea              rdx, [rip + .Lx812_5]
                                                                                        jmp   rax
.Lx812_4:
                                                                                        jmp   n801_match_assign_cond_α
.Lx812_5:
                                                                                        jmp   n799_match_assign_save_β
.Lx812_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S19]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx812_2:
                        test             rax, rax
                                                                                        je    .Lx812_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx812_7]
                        lea              rdx, [rip + .Lx812_8]
                                                                                        jmp   rax
.Lx812_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx812_2
.Lx812_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx812_2
.Lx812_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n799_match_assign_save_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx812_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n801_match_assign_cond_α
.Lx812_6:
                        add              rsp, 16
                                                                                        jmp   n799_match_assign_save_β
n800_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n801_match_assign_cond_α:
                        lea              rdi, [rbp + 192]                               # slot
                        call             rt_cap_top@PLT
                        lea              rcx, [rip + .S20]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n794_match_arbno_as
n801_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n800_match_defer_β
proc_PAT$7_scanhit:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 288], 1
                                                                                        jne   .Lx815_0
                        mov              ecx, dword ptr [rdx + 280]
                        lea              rax, [rip + g_scan_hit_start]
                        mov              dword ptr [rax + 0], ecx
.Lx815_0:
                                                                                        jmp   proc_PAT$7_γ
proc_PAT$7_scanfail:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rdx, qword ptr [rdx + 8]
                        cmp              qword ptr [rdx + 288], 1
                                                                                        jne   .Lx816_0
                        mov              eax, dword ptr [rdx + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx816_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx816_0
                        mov              dword ptr [rdx + 280], eax
                        mov              r14d, eax
                        mov              rsp, rdx
                                                                                        jmp   proc_PAT$7_attempt
.Lx816_0:
                                                                                        jmp   proc_PAT$7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_res:
                        add              rsp, 8
                        pop              rax
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              r10, qword ptr [rdx]
                        mov              r11, qword ptr [rdx + 8]
                        mov              qword ptr [rdx + r10*8 + 16], r11
                        inc              qword ptr [rdx]
                        mov              qword ptr [rdx + 8], rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_γ:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        push             rax
                        lea              rcx, [rip + proc_PAT$7_res]
                        push             rcx
                        mov              rcx, qword ptr [rax + 296]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$7_ω:
                        mov              rdx, qword ptr [rip + g_zctx@GOTPCREL]
                        mov              rax, qword ptr [rdx + 8]
                        mov              rcx, qword ptr [rax + 304]
                        lea              rsp, [rax + 320]
                        mov              r10, qword ptr [rdx]
                        dec              r10
                        mov              qword ptr [rdx], r10
                        mov              r11, qword ptr [rdx + r10*8 + 16]
                        mov              qword ptr [rdx + 8], r11
                                                                                        jmp   rcx
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
                        mov              esi, 5008
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
.Lstartup_pname15:      .string          "SGN"
.Lstartup_pp15_0:       .string          "p1"
                        .align           8
.Lstartup_pnames15:
                        .quad            .Lstartup_pp15_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + .Lstartup_pnames15]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_SGN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
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
n817_statement_begin_α:
                                                                                        jmp   n818_statement_end_α
n817_statement_begin_β:
                                                                                        jmp   n819_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n818_statement_end_α:
                                                                                        jmp   n819_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n819_statement_begin_α:
                                                                                        jmp   n820_statement_end_α
n819_statement_begin_β:
                                                                                        jmp   n821_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n820_statement_end_α:
                                                                                        jmp   n821_statement_begin_α
#=======================================================================================================================
#         DEFINE('PSH()')                         :(PSH_x)
#-----------------------------------------------------------------------------------------------------------------------
n821_statement_begin_α:
                                                                                        jmp   n822_statement_end_α
n821_statement_begin_β:
                                                                                        jmp   n823_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n822_statement_end_α:
                                                                                        jmp   n823_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n823_statement_begin_α:
                                                                                        jmp   n824_statement_end_α
n823_statement_begin_β:
                                                                                        jmp   n825_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n824_statement_end_α:
                                                                                        jmp   n825_statement_begin_α
#=======================================================================================================================
#         DEFINE('DRF(nm)')                       :(DRF_x)
#-----------------------------------------------------------------------------------------------------------------------
n825_statement_begin_α:
                                                                                        jmp   n826_statement_end_α
n825_statement_begin_β:
                                                                                        jmp   n827_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n826_statement_end_α:
                                                                                        jmp   n827_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n827_statement_begin_α:
                                                                                        jmp   n828_statement_end_α
n827_statement_begin_β:
                                                                                        jmp   n829_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n828_statement_end_α:
                                                                                        jmp   n829_statement_begin_α
#=======================================================================================================================
#         DEFINE('ADD()p1')                       :(ADD_x)
#-----------------------------------------------------------------------------------------------------------------------
n829_statement_begin_α:
                                                                                        jmp   n830_statement_end_α
n829_statement_begin_β:
                                                                                        jmp   n831_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n830_statement_end_α:
                                                                                        jmp   n831_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n831_statement_begin_α:
                                                                                        jmp   n832_statement_end_α
n831_statement_begin_β:
                                                                                        jmp   n833_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n832_statement_end_α:
                                                                                        jmp   n833_statement_begin_α
#=======================================================================================================================
#         DEFINE('SUB()p1')                       :(SUB_x)
#-----------------------------------------------------------------------------------------------------------------------
n833_statement_begin_α:
                                                                                        jmp   n834_statement_end_α
n833_statement_begin_β:
                                                                                        jmp   n835_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n834_statement_end_α:
                                                                                        jmp   n835_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n835_statement_begin_α:
                                                                                        jmp   n836_statement_end_α
n835_statement_begin_β:
                                                                                        jmp   n837_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n836_statement_end_α:
                                                                                        jmp   n837_statement_begin_α
#=======================================================================================================================
#         DEFINE('MUL()p1')                       :(MUL_x)
#-----------------------------------------------------------------------------------------------------------------------
n837_statement_begin_α:
                                                                                        jmp   n838_statement_end_α
n837_statement_begin_β:
                                                                                        jmp   n839_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n838_statement_end_α:
                                                                                        jmp   n839_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n839_statement_begin_α:
                                                                                        jmp   n840_statement_end_α
n839_statement_begin_β:
                                                                                        jmp   n841_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n840_statement_end_α:
                                                                                        jmp   n841_statement_begin_α
#=======================================================================================================================
#         DEFINE('DIV()p1')                       :(DIV_x)
#-----------------------------------------------------------------------------------------------------------------------
n841_statement_begin_α:
                                                                                        jmp   n842_statement_end_α
n841_statement_begin_β:
                                                                                        jmp   n843_statement_begin_α
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
#         DEFINE('SGN()p1')                       :(SGN_x)
#-----------------------------------------------------------------------------------------------------------------------
n845_statement_begin_α:
                                                                                        jmp   n846_statement_end_α
n845_statement_begin_β:
                                                                                        jmp   n847_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n846_statement_end_α:
                                                                                        jmp   n847_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n847_statement_begin_α:
                                                                                        jmp   n848_statement_end_α
n847_statement_begin_β:
                                                                                        jmp   n849_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n848_statement_end_α:
                                                                                        jmp   n849_statement_begin_α
#=======================================================================================================================
#         S = ARRAY(65536)
#-----------------------------------------------------------------------------------------------------------------------
n849_statement_begin_α:
                                                                                        jmp   n850_lit_integer_α
n849_statement_begin_β:
                                                                                        jmp   n854_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1365_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n851_call_α
.Lx1365_0:
                        .quad            65536
#-----------------------------------------------------------------------------------------------------------------------
n851_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1367:           .string          "ARRAY"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1367]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1366_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n849_statement_begin_β
.Lx1366_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n852_assign_α
n851_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n849_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n853_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n853_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n854_statement_begin_α
#=======================================================================================================================
#         LCASE = &LCASE
#-----------------------------------------------------------------------------------------------------------------------
n854_statement_begin_α:
                                                                                        jmp   n855_keyword_snobol4_α
n854_statement_begin_β:
                                                                                        jmp   n858_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n855_keyword_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1373_0]               # sval
                        call             rt_keyword_read_snobol4@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n856_assign_α
.Lx1373_0:
                        .quad            .Lx1373_0_s
.Lx1373_0_s:
                        .string          "LCASE"
#-----------------------------------------------------------------------------------------------------------------------
n856_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # keyword_snobol4
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052512], rax                    # LCASE
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n857_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n857_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n858_statement_begin_α
#=======================================================================================================================
#         DIGITS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n858_statement_begin_α:
                                                                                        jmp   n859_lit_string_α
n858_statement_begin_β:
                                                                                        jmp   n862_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n859_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx1379_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n860_assign_α
.Lx1379_0:
                        .quad            .Lx1379_0_s
.Lx1379_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n860_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052528], rax                    # DIGITS
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n861_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n861_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n862_statement_begin_α
#=======================================================================================================================
#         V = ANY(&LCASE) . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n862_statement_begin_α:
                                                                                        jmp   n863_lit_string_α
n862_statement_begin_β:
                                                                                        jmp   n867_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1385_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n864_call_α
.Lx1385_0:
                        .quad            .Lx1385_0_s
.Lx1385_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n864_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1387:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1387]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1386_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n862_statement_begin_β
.Lx1386_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n865_assign_α
n864_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n862_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n865_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052544], rax                    # V
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n866_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n866_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n867_statement_begin_α
#=======================================================================================================================
#         I = SPAN('0123456789') . *PSH()
#-----------------------------------------------------------------------------------------------------------------------
n867_statement_begin_α:
                                                                                        jmp   n868_lit_string_α
n867_statement_begin_β:
                                                                                        jmp   n872_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1393_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n869_call_α
.Lx1393_0:
                        .quad            .Lx1393_0_s
.Lx1393_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n869_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1395:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1395]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1394_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n867_statement_begin_β
.Lx1394_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n870_assign_α
n869_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n867_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n870_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052560], rax                    # I
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n871_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n871_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n872_statement_begin_α
#=======================================================================================================================
#         A = FENCE(V | I | '(' *X ')')
#-----------------------------------------------------------------------------------------------------------------------
n872_statement_begin_α:
                                                                                        jmp   n873_var_α
n872_statement_begin_β:
                                                                                        jmp   n881_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052560]                    # I
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n874_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n874_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052816], rax                    # PAT$2$V1
                        mov              qword ptr [1879052824], rdx
                                                                                        jmp   n875_var_α
#-----------------------------------------------------------------------------------------------------------------------
n875_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052544]                    # V
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n876_assign_α
n875_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n872_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n876_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052800], rax                    # PAT$2$V0
                        mov              qword ptr [1879052808], rdx
                                                                                        jmp   n877_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n877_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1405_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n878_call_α
n877_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n875_var_β
.Lx1405_0:
                        .quad            .Lx1405_0_s
.Lx1405_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n878_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1407:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1407]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1406_240
                        add              rsp, 16
                                                                                        jmp   n877_lit_string_β
.Lx1406_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n879_assign_α
n878_call_β:
                        add              rsp, 16
                                                                                        jmp   n877_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n879_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052576], rax                    # A
                        mov              qword ptr [1879052584], rdx
                                                                                        jmp   n880_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n880_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n881_statement_begin_α
#=======================================================================================================================
#         F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
#-----------------------------------------------------------------------------------------------------------------------
n881_statement_begin_α:
                                                                                        jmp   n882_var_α
n881_statement_begin_β:
                                                                                        jmp   n888_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052576]                    # A
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n883_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n883_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052832], rax                    # PAT$3$V0
                        mov              qword ptr [1879052840], rdx
                                                                                        jmp   n884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n885_call_α
n884_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n881_statement_begin_β
.Lx1415_0:
                        .quad            .Lx1415_0_s
.Lx1415_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n885_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1417:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1417]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1416_240
                        add              rsp, 16
                                                                                        jmp   n884_lit_string_β
.Lx1416_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n886_assign_α
n885_call_β:
                        add              rsp, 16
                                                                                        jmp   n884_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052592], rax                    # F
                        mov              qword ptr [1879052600], rdx
                                                                                        jmp   n887_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n887_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n888_statement_begin_α
#=======================================================================================================================
#         T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
#-----------------------------------------------------------------------------------------------------------------------
n888_statement_begin_α:
                                                                                        jmp   n889_var_α
n888_statement_begin_β:
                                                                                        jmp   n899_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n890_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n890_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052880], rax                    # PAT$4$V2
                        mov              qword ptr [1879052888], rdx
                                                                                        jmp   n891_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
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
                        mov              qword ptr [1879052864], rax                    # PAT$4$V1
                        mov              qword ptr [1879052872], rdx
                                                                                        jmp   n893_var_α
#-----------------------------------------------------------------------------------------------------------------------
n893_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052592]                    # F
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n894_assign_α
n893_var_β:
                        add              rsp, 16
                                                                                        jmp   n891_var_β
#-----------------------------------------------------------------------------------------------------------------------
n894_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052848], rax                    # PAT$4$V0
                        mov              qword ptr [1879052856], rdx
                                                                                        jmp   n895_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n895_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1429_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n896_call_α
n895_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n893_var_β
.Lx1429_0:
                        .quad            .Lx1429_0_s
.Lx1429_0_s:
                        .string          "PAT$4"
#-----------------------------------------------------------------------------------------------------------------------
n896_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1431:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1431]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1430_240
                        add              rsp, 16
                                                                                        jmp   n895_lit_string_β
.Lx1430_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n897_assign_α
n896_call_β:
                        add              rsp, 16
                                                                                        jmp   n895_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n897_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052608], rax                    # T
                        mov              qword ptr [1879052616], rdx
                                                                                        jmp   n898_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n898_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n899_statement_begin_α
#=======================================================================================================================
#         X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
#-----------------------------------------------------------------------------------------------------------------------
n899_statement_begin_α:
                                                                                        jmp   n900_var_α
n899_statement_begin_β:
                                                                                        jmp   n910_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n901_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n901_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052928], rax                    # PAT$5$V2
                        mov              qword ptr [1879052936], rdx
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n903_assign_α
n902_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n899_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n903_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052912], rax                    # PAT$5$V1
                        mov              qword ptr [1879052920], rdx
                                                                                        jmp   n904_var_α
#-----------------------------------------------------------------------------------------------------------------------
n904_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052608]                    # T
                        mov              rdx, qword ptr [1879052616]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n905_assign_α
n904_var_β:
                        add              rsp, 16
                                                                                        jmp   n902_var_β
#-----------------------------------------------------------------------------------------------------------------------
n905_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052896], rax                    # PAT$5$V0
                        mov              qword ptr [1879052904], rdx
                                                                                        jmp   n906_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n906_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1443_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n907_call_α
n906_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n904_var_β
.Lx1443_0:
                        .quad            .Lx1443_0_s
.Lx1443_0_s:
                        .string          "PAT$5"
#-----------------------------------------------------------------------------------------------------------------------
n907_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1445:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1445]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1444_240
                        add              rsp, 16
                                                                                        jmp   n906_lit_string_β
.Lx1444_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n908_assign_α
n907_call_β:
                        add              rsp, 16
                                                                                        jmp   n906_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n908_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052624], rax                    # X
                        mov              qword ptr [1879052632], rdx
                                                                                        jmp   n909_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n909_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n910_statement_begin_α
#=======================================================================================================================
#         eol = CHAR(10) FENCE
#-----------------------------------------------------------------------------------------------------------------------
n910_statement_begin_α:
                                                                                        jmp   n911_lit_string_α
n910_statement_begin_β:
                                                                                        jmp   n915_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1451_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n912_call_α
.Lx1451_0:
                        .quad            .Lx1451_0_s
.Lx1451_0_s:
                        .string          "PAT$6"
#-----------------------------------------------------------------------------------------------------------------------
n912_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1453:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1453]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1452_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n910_statement_begin_β
.Lx1452_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n913_assign_α
n912_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n910_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n913_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052640], rax                    # eol
                        mov              qword ptr [1879052648], rdx
                                                                                        jmp   n914_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n914_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n915_statement_begin_α
#=======================================================================================================================
#         C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n915_statement_begin_α:
                                                                                        jmp   n916_var_α
n915_statement_begin_β:
                                                                                        jmp   n926_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052672]                    # epsilon
                        mov              rdx, qword ptr [1879052680]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n917_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n917_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052976], rax                    # PAT$7$V2
                        mov              qword ptr [1879052984], rdx
                                                                                        jmp   n918_var_α
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052640]                    # eol
                        mov              rdx, qword ptr [1879052648]
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
                        mov              qword ptr [1879052960], rax                    # PAT$7$V1
                        mov              qword ptr [1879052968], rdx
                                                                                        jmp   n920_var_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052624]                    # X
                        mov              rdx, qword ptr [1879052632]
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
                        mov              qword ptr [1879052944], rax                    # PAT$7$V0
                        mov              qword ptr [1879052952], rdx
                                                                                        jmp   n922_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx1465_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n923_call_α
n922_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n920_var_β
.Lx1465_0:
                        .quad            .Lx1465_0_s
.Lx1465_0_s:
                        .string          "PAT$7"
#-----------------------------------------------------------------------------------------------------------------------
n923_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1467:           .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1467]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1466_240
                        add              rsp, 16
                                                                                        jmp   n922_lit_string_β
.Lx1466_240:
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
                        mov              qword ptr [1879052656], rax                    # C
                        mov              qword ptr [1879052664], rdx
                                                                                        jmp   n925_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n925_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n926_statement_begin_α
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n926_statement_begin_α:
                                                                                        jmp   n927_lit_string_α
n926_statement_begin_β:
                                                                                        jmp   n931_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n927_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1473_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n928_lit_integer_α
.Lx1473_0:
                        .quad            .Lx1473_0_s
.Lx1473_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1474_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n929_call_α
n928_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n926_statement_begin_β
.Lx1474_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n929_call_α:
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
.Lrkfnzd1476:           .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1476]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1475_240
                        add              rsp, 16
                                                                                        jmp   n928_lit_integer_β
.Lx1475_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n930_statement_end_α
n929_call_β:
                        add              rsp, 16
                                                                                        jmp   n928_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n930_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n931_statement_begin_α
#=======================================================================================================================
#         nl = CHAR(10)
#-----------------------------------------------------------------------------------------------------------------------
n931_statement_begin_α:
                                                                                        jmp   n932_lit_integer_α
n931_statement_begin_β:
                                                                                        jmp   n936_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n932_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1481_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n933_call_α
.Lx1481_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n933_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lbynamefnzd416:        .string          "CHAR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd416]                   # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1482_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n931_statement_begin_β
.Lx1482_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n934_assign_α
n933_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n931_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n934_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052688], rax                    # nl
                        mov              qword ptr [1879052696], rdx
                                                                                        jmp   n935_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n935_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n936_statement_begin_α
#=======================================================================================================================
#         vars = TABLE()
#-----------------------------------------------------------------------------------------------------------------------
n936_statement_begin_α:
                                                                                        jmp   n937_call_α
n936_statement_begin_β:
                                                                                        jmp   n940_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n937_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1489:           .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1489]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1488_240
                        add              rsp, 16
                                                                                        jmp   n936_statement_begin_β
.Lx1488_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n938_assign_α
n937_call_β:
                        add              rsp, 16
                                                                                        jmp   n936_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n938_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052496], rax                    # vars
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n939_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n939_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n940_statement_begin_α
#=======================================================================================================================
#         vars['x'] = 1
#-----------------------------------------------------------------------------------------------------------------------
n940_statement_begin_α:
                                                                                        jmp   n941_var_α
n940_statement_begin_β:
                                                                                        jmp   n947_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n941_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n942_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1496_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n943_subscript_α
n942_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n940_statement_begin_β
.Lx1496_0:
                        .quad            .Lx1496_0_s
.Lx1496_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n943_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1497_240
                        add              rsp, 16
                                                                                        jmp   n942_lit_string_β
.Lx1497_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n944_lit_integer_α
n943_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n942_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1498_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n945_assign_var_α
n944_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n943_subscript_β
.Lx1498_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n945_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1499_240
                        add              rsp, 16
                                                                                        jmp   n944_lit_integer_β
.Lx1499_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n946_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n946_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n947_statement_begin_α
#=======================================================================================================================
#         vars['y'] = 2
#-----------------------------------------------------------------------------------------------------------------------
n947_statement_begin_α:
                                                                                        jmp   n948_var_α
n947_statement_begin_β:
                                                                                        jmp   n954_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1505_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n950_subscript_α
n949_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n947_statement_begin_β
.Lx1505_0:
                        .quad            .Lx1505_0_s
.Lx1505_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n950_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1506_240
                        add              rsp, 16
                                                                                        jmp   n949_lit_string_β
.Lx1506_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n951_lit_integer_α
n950_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n949_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1507_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n952_assign_var_α
n951_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n950_subscript_β
.Lx1507_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n952_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1508_240
                        add              rsp, 16
                                                                                        jmp   n951_lit_integer_β
.Lx1508_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n953_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n953_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n954_statement_begin_α
#=======================================================================================================================
#         vars['z'] = 3
#-----------------------------------------------------------------------------------------------------------------------
n954_statement_begin_α:
                                                                                        jmp   n955_var_α
n954_statement_begin_β:
                                                                                        jmp   n961_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n955_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n956_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n956_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1514_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n957_subscript_α
n956_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n954_statement_begin_β
.Lx1514_0:
                        .quad            .Lx1514_0_s
.Lx1514_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n957_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1515_240
                        add              rsp, 16
                                                                                        jmp   n956_lit_string_β
.Lx1515_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n958_lit_integer_α
n957_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n956_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n958_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1516_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n959_assign_var_α
n958_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n957_subscript_β
.Lx1516_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n959_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1517_240
                        add              rsp, 16
                                                                                        jmp   n958_lit_integer_β
.Lx1517_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n960_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n960_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n961_statement_begin_α
#=======================================================================================================================
# slurp   line = INPUT                            :F(slurp_f)
#-----------------------------------------------------------------------------------------------------------------------
n961_statement_begin_α:
                                                                                        jmp   n962_var_α
n961_statement_begin_β:
                                                                                        jmp   n1009_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n962_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx1522_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1522_240
                        add              rsp, 16
                                                                                        jmp   n961_statement_begin_β
.Lx1522_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n963_assign_α
.Lx1522_0:
                        .quad            .Lx1522_0_s
.Lx1522_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n963_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052704], rax                    # line
                        mov              qword ptr [1879052712], rdx
                                                                                        jmp   n964_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n964_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n965_statement_begin_α
#=======================================================================================================================
#         b1 = b1 line nl
#-----------------------------------------------------------------------------------------------------------------------
n965_statement_begin_α:
                                                                                        jmp   n966_var_α
n965_statement_begin_β:
                                                                                        jmp   n973_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n967_var_α
#-----------------------------------------------------------------------------------------------------------------------
n967_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052704]                    # line
                        mov              rdx, qword ptr [1879052712]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n968_binop_α
n967_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n965_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n968_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n969_var_α
n968_binop_β:
                        add              rsp, 16
                                                                                        jmp   n967_var_β
#-----------------------------------------------------------------------------------------------------------------------
n969_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052688]                    # nl
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n970_binop_α
n969_var_β:
                        add              rsp, 16
                                                                                        jmp   n968_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n970_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n971_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n971_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n972_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n972_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n973_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b1), 8192)                      :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n973_statement_begin_α:
                                                                                        jmp   n974_var_α
n973_statement_begin_β:
                                                                                        jmp   n961_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n974_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n975_call_α
#-----------------------------------------------------------------------------------------------------------------------
n975_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1540:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1540]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1539_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n973_statement_begin_β
.Lx1539_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n976_lit_integer_α
n975_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n973_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n976_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1541_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n977_coerce_numeric_α
n976_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n973_statement_begin_β
.Lx1541_0:
                        .quad            8192
#-----------------------------------------------------------------------------------------------------------------------
n977_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1543_1
                        cmp              eax, 3
                                                                                        jne   .Lx1543_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1543_0
.Lx1543_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n978_coerce_numeric_α
.Lx1543_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n978_coerce_numeric_α
n977_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n976_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n978_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1545_1
                        cmp              eax, 3
                                                                                        jne   .Lx1545_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1545_0
.Lx1545_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n979_cmp_test_α
.Lx1545_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n979_cmp_test_α
n978_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n977_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n979_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1547_240
                        add              rsp, 16
                                                                                        jmp   n978_coerce_numeric_β
.Lx1547_240:
                                                                                        jmp   n980_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n980_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n981_statement_begin_α
#=======================================================================================================================
#         b2 = b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n981_statement_begin_α:
                                                                                        jmp   n982_var_α
n981_statement_begin_β:
                                                                                        jmp   n987_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n982_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n983_var_α
#-----------------------------------------------------------------------------------------------------------------------
n983_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
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
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n985_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n985_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # b2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n986_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n986_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n987_statement_begin_α
#=======================================================================================================================
#         b1 =
#-----------------------------------------------------------------------------------------------------------------------
n987_statement_begin_α:
                                                                                        jmp   n988_lit_string_α
n987_statement_begin_β:
                                                                                        jmp   n991_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1560_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n989_assign_α
.Lx1560_0:
                        .quad            .Lx1560_0_s
.Lx1560_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n989_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052720], rax                    # b1
                        mov              qword ptr [1879052728], rdx
                                                                                        jmp   n990_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n990_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n991_statement_begin_α
#=======================================================================================================================
#         GT(SIZE(b2), 262144)                    :F(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n991_statement_begin_α:
                                                                                        jmp   n992_var_α
n991_statement_begin_β:
                                                                                        jmp   n961_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n992_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n993_call_α
#-----------------------------------------------------------------------------------------------------------------------
n993_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1568:           .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1568]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1567_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n991_statement_begin_β
.Lx1567_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n994_lit_integer_α
n993_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n991_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n994_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1569_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n995_coerce_numeric_α
n994_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n991_statement_begin_β
.Lx1569_0:
                        .quad            262144
#-----------------------------------------------------------------------------------------------------------------------
n995_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # call
                        cmp              eax, 5
                                                                                        je    .Lx1571_1
                        cmp              eax, 3
                                                                                        jne   .Lx1571_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx1571_0
.Lx1571_1:
                        mov              rax, qword ptr [rsp + 32]                      # call
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # call
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n996_coerce_numeric_α
.Lx1571_0:
                        lea              rdi, [rsp + 32]                                # call
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n996_coerce_numeric_α
n995_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n994_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n996_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx1573_1
                        cmp              eax, 3
                                                                                        jne   .Lx1573_0
                        mov              eax, dword ptr [rsp + 48]                      # call
                        cmp              eax, 3
                                                                                        jne   .Lx1573_0
.Lx1573_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n997_cmp_test_α
.Lx1573_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # call
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n997_cmp_test_α
n996_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n995_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n997_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jg    .Lx1575_240
                        add              rsp, 16
                                                                                        jmp   n996_coerce_numeric_β
.Lx1575_240:
                                                                                        jmp   n998_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n998_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n999_statement_begin_α
#=======================================================================================================================
#         src = src b2
#-----------------------------------------------------------------------------------------------------------------------
n999_statement_begin_α:
                                                                                        jmp   n1000_var_α
n999_statement_begin_β:
                                                                                        jmp   n1005_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1001_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1002_binop_α
n1001_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n999_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1002_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1003_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # src
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n1004_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1005_statement_begin_α
#=======================================================================================================================
#         b2 =                                    :(slurp)
#-----------------------------------------------------------------------------------------------------------------------
n1005_statement_begin_α:
                                                                                        jmp   n1006_lit_string_α
n1005_statement_begin_β:
                                                                                        jmp   n961_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1588_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1007_assign_α
.Lx1588_0:
                        .quad            .Lx1588_0_s
.Lx1588_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1007_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052736], rax                    # b2
                        mov              qword ptr [1879052744], rdx
                                                                                        jmp   n1008_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n961_statement_begin_α
#=======================================================================================================================
# slurp_f src = src b2 b1
#-----------------------------------------------------------------------------------------------------------------------
n1009_statement_begin_α:
                                                                                        jmp   n1010_var_α
n1009_statement_begin_β:
                                                                                        jmp   n1017_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052736]                    # b2
                        mov              rdx, qword ptr [1879052744]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1012_binop_α
n1011_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1009_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1012_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1013_var_α
n1012_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1011_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1013_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052720]                    # b1
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1014_binop_α
n1013_var_β:
                        add              rsp, 16
                                                                                        jmp   n1012_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n1014_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1015_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052752], rax                    # src
                        mov              qword ptr [1879052760], rdx
                                                                                        jmp   n1016_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1017_statement_begin_α
#=======================================================================================================================
#         t0 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1017_statement_begin_α:
                                                                                        jmp   n1018_call_α
n1017_statement_begin_β:
                                                                                        jmp   n1021_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1605:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1605]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1604_240
                        add              rsp, 16
                                                                                        jmp   n1017_statement_begin_β
.Lx1604_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1019_assign_α
n1018_call_β:
                        add              rsp, 16
                                                                                        jmp   n1017_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1019_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052768], rax                    # t0
                        mov              qword ptr [1879052776], rdx
                                                                                        jmp   n1020_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1021_statement_begin_α
#=======================================================================================================================
#         src C                                   :F(bad)
#-----------------------------------------------------------------------------------------------------------------------
n1021_statement_begin_α:
                                                                                        jmp   n1022_var_α
n1021_statement_begin_β:
                                                                                        jmp   n1041_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052752]                    # src
                        mov              rdx, qword ptr [1879052760]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1023_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052656]                    # C
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1024_assign_α
n1023_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1041_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1613_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1025_match_begin_α
n1024_assign_β:
                                                                                        jmp   n1023_var_β
.Lx1613_0:
                        .quad            .Lx1613_0_s
.Lx1613_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n1025_match_begin_α:
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
.Lx1615_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n1026_match_defer_α
n1025_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx1615_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1615_1
                                                                                        jmp   .Lx1615_0
.Lx1615_1:
n1025_match_begin_af:
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
                        add              rsp, 64
                                                                                        jmp   n1024_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n1026_match_defer_α:
                        lea              rdi, [rip + .S21]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx1616_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx1616_4]
                        lea              rdx, [rip + .Lx1616_5]
                                                                                        jmp   rax
.Lx1616_4:
                                                                                        jmp   n1027_match_end_α
.Lx1616_5:
                                                                                        jmp   n1025_match_begin_β
.Lx1616_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S21]                              # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx1616_2:
                        test             rax, rax
                                                                                        je    .Lx1616_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1616_7]
                        lea              rdx, [rip + .Lx1616_8]
                                                                                        jmp   rax
.Lx1616_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1616_2
.Lx1616_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx1616_2
.Lx1616_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n1025_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx1616_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n1027_match_end_α
.Lx1616_6:
                        add              rsp, 16
                                                                                        jmp   n1025_match_begin_β
n1026_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n1027_match_end_α:
                        mov              r10, r12
.Lx1618_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1618_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx1618_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1618_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1618_1:
                        test             rax, rax
                                                                                        je    .Lx1618_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1618_3]
                        lea              rdx, [rip + .Lx1618_4]
                                                                                        jmp   rax
.Lx1618_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1618_1
.Lx1618_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1618_1
.Lx1618_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx1618_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1618_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n1028_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n1029_statement_begin_α
#=======================================================================================================================
#         t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1029_statement_begin_α:
                                                                                        jmp   n1030_call_α
n1029_statement_begin_β:
                                                                                        jmp   n1033_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1624:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1624]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1623_240
                        add              rsp, 16
                                                                                        jmp   n1029_statement_begin_β
.Lx1623_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1031_assign_α
n1030_call_β:
                        add              rsp, 16
                                                                                        jmp   n1029_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1031_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # t1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n1032_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1033_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n1033_statement_begin_α:
                                                                                        jmp   n1034_lit_string_α
n1033_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx1630_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1035_var_α
.Lx1630_0:
                        .quad            .Lx1630_0_s
.Lx1630_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # t1
                        mov              rdx, qword ptr [1879052792]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1036_var_α
n1035_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1033_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1036_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052768]                    # t0
                        mov              rdx, qword ptr [1879052776]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1037_binop_α
n1036_var_β:
                        add              rsp, 16
                                                                                        jmp   n1035_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1037_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1633_240
                        add              rsp, 16
                                                                                        jmp   n1036_var_β
.Lx1633_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1038_binop_α
n1037_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1036_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1038_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1039_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1635_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1040_statement_end_α
.Lx1635_0:
                        .quad            .Lx1635_0_s
.Lx1635_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1040_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#=======================================================================================================================
# bad     t1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n1041_statement_begin_α:
                                                                                        jmp   n1042_call_α
n1041_statement_begin_β:
                                                                                        jmp   n1045_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd1641:           .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1641]                      # fn
                        xor              esi, esi                                       # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1640_240
                        add              rsp, 16
                                                                                        jmp   n1041_statement_begin_β
.Lx1640_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1043_assign_α
n1042_call_β:
                        add              rsp, 16
                                                                                        jmp   n1041_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1043_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052784], rax                    # t1
                        mov              qword ptr [1879052792], rdx
                                                                                        jmp   n1044_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1045_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'Boo!'
#-----------------------------------------------------------------------------------------------------------------------
n1045_statement_begin_α:
                                                                                        jmp   n1046_lit_string_α
n1045_statement_begin_β:
                                                                                        jmp   n1049_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx1647_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1047_assign_α
.Lx1647_0:
                        .quad            .Lx1647_0_s
.Lx1647_0_s:
                        .string          "Boo!"
#-----------------------------------------------------------------------------------------------------------------------
n1047_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1648_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1048_statement_end_α
.Lx1648_0:
                        .quad            .Lx1648_0_s
.Lx1648_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1048_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1049_statement_begin_α
#=======================================================================================================================
#         TERMINAL = 'match_ms=' (t1 - t0)
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
                        mov              rax, qword ptr [rip + .Lx1653_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1051_var_α
.Lx1653_0:
                        .quad            .Lx1653_0_s
.Lx1653_0_s:
                        .string          "match_ms="
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052784]                    # t1
                        mov              rdx, qword ptr [1879052792]
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
                        mov              rax, qword ptr [1879052768]                    # t0
                        mov              rdx, qword ptr [1879052776]
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
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1656_240
                        add              rsp, 16
                                                                                        jmp   n1052_var_β
.Lx1656_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1054_binop_α
n1053_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1052_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1054_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]                      # lit_string
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1055_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1658_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1056_statement_end_α
.Lx1658_0:
                        .quad            .Lx1658_0_s
.Lx1658_0_s:
                        .string          "TERMINAL"
#-----------------------------------------------------------------------------------------------------------------------
n1056_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1057_goto_α:
                                                                                        jmp   n1058_statement_begin_α
n1057_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# EMIT    OUTPUT = DRF(S[1])
#-----------------------------------------------------------------------------------------------------------------------
n1058_statement_begin_α:
                                                                                        jmp   n1059_var_α
n1058_statement_begin_β:
                                                                                        jmp   n1066_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1060_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1665_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1061_subscript_α
n1060_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1058_statement_begin_β
.Lx1665_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1061_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1666_240
                        add              rsp, 16
                                                                                        jmp   n1060_lit_integer_β
.Lx1666_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1062_deref_α
n1061_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1060_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n1062_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1667_240
                        add              rsp, 16
                                                                                        jmp   n1061_subscript_β
.Lx1667_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1063_call_α
n1062_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1061_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1669_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1669_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1669_6]
                        lea              rdx, [rip + .Lx1669_7]
                                                                                        jmp   rax
.Lx1669_6:
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
                                                                                        jmp   .Lx1669_2
.Lx1669_7:
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
                                                                                        jmp   .Lx1669_2
.Lx1669_5:
                        add              rsp, 32
.Lx1669_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1669_240
                        add              rsp, 16
                                                                                        jmp   n1062_deref_β
.Lx1669_240:
                                                                                        jmp   n1064_assign_α
n1063_call_β:
                                                                                        jmp   n1062_deref_β
.Lx1669_0:
                        .quad            .Lx1669_0_s
.Lx1669_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1064_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx1670_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n1065_statement_end_α
.Lx1670_0:
                        .quad            .Lx1670_0_s
.Lx1670_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n1065_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1066_statement_begin_α
#=======================================================================================================================
#         sp = 0
#-----------------------------------------------------------------------------------------------------------------------
n1066_statement_begin_α:
                                                                                        jmp   n1067_lit_integer_α
n1066_statement_begin_β:
                                                                                        jmp   n1070_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1675_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1068_assign_α
.Lx1675_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1068_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1069_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1070_statement_begin_α
#=======================================================================================================================
#         EMIT = .dm                              :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1070_statement_begin_α:
                                                                                        jmp   n1071_lit_string_α
n1070_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1071_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1681_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1072_call_α
.Lx1681_0:
                        .quad            .Lx1681_0_s
.Lx1681_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1683:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1683]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1682_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1070_statement_begin_β
.Lx1682_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1073_assign_α
n1072_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1070_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1073_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # EMIT
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n1074_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_statement_end_α:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx1687_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1076_call_α
.Lx1687_0:
                        .quad            .Lx1687_0_s
.Lx1687_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1076_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1689:           .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1689]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1688_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1078_save_restore_α
.Lx1688_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1077_save_restore_α
n1076_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n1078_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1077_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx1691_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 0
                                                                                        jmp   rax
.Lx1691_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n1078_save_restore_α:
                        mov              rcx, qword ptr [1879048216]
                        test             rcx, rcx
                                                                                        je    .Lx1693_0
                        mov              rax, qword ptr [rcx + -64]
                        mov              ecx, 2
                                                                                        jmp   rax
.Lx1693_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n1079_goto_α:
                                                                                        jmp   n819_statement_begin_α
n1079_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1080_goto_α:
                                                                                        jmp   n1081_statement_begin_α
n1080_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# PSH     sp = sp + 1
#-----------------------------------------------------------------------------------------------------------------------
n1081_statement_begin_α:
                                                                                        jmp   n1082_var_α
n1081_statement_begin_β:
                                                                                        jmp   n1087_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1082_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1083_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1083_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1699_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1084_binop_α
n1083_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1081_statement_begin_β
.Lx1699_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1084_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1700_240
                        add              rsp, 16
                                                                                        jmp   n1083_lit_integer_β
.Lx1700_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1085_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1085_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1086_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1086_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1087_statement_begin_α
#=======================================================================================================================
#         PSH = .S[sp]                            :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1087_statement_begin_α:
                                                                                        jmp   n1088_var_α
n1087_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1088_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1089_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1089_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
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
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1708_240
                        add              rsp, 16
                                                                                        jmp   n1089_var_β
.Lx1708_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1091_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1091_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # subscript
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # PSH
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n1092_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1092_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1093_goto_α:
                                                                                        jmp   n823_statement_begin_α
n1093_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1094_goto_α:
                                                                                        jmp   n1095_statement_begin_α
n1094_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DRF     nm POS(0) ANY(&LCASE) RPOS(0)           :F(DRF_n)
#-----------------------------------------------------------------------------------------------------------------------
n1095_statement_begin_α:
                                                                                        jmp   n1096_var_α
n1095_statement_begin_β:
                                                                                        jmp   n1112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1096_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1097_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1097_match_begin_α:
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
.Lx1718_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n1098_lit_integer_α
n1097_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rbp + -64], 1                       # start_δ
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx1718_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx1718_1
                                                                                        jmp   .Lx1718_0
.Lx1718_1:
n1097_match_begin_af:
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
                        add              rsp, 64
                        add              rsp, 16
                                                                                        jmp   n1112_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1098_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1719_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1099_match_pos_α
.Lx1719_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1099_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx1720_240
                        add              rsp, 16
                                                                                        jmp   n1097_match_begin_β
.Lx1720_240:
                                                                                        jmp   n1100_match_any_α
n1099_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   n1097_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1100_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n1097_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n1097_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n1101_lit_integer_α
n1100_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n1097_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1101_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1723_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1102_match_rpos_α
.Lx1723_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1102_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx1724_240
                        add              rsp, 16
                                                                                        jmp   n1100_match_any_β
.Lx1724_240:
                                                                                        jmp   n1103_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1103_match_end_α:
                        mov              r10, r12
.Lx1726_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1726_9
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx1726_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1726_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx1726_1:
                        test             rax, rax
                                                                                        je    .Lx1726_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1726_3]
                        lea              rdx, [rip + .Lx1726_4]
                                                                                        jmp   rax
.Lx1726_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1726_1
.Lx1726_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx1726_1
.Lx1726_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx1726_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx1726_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n1104_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1104_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1105_statement_begin_α
#=======================================================================================================================
#         DRF = vars[nm]                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1105_statement_begin_α:
                                                                                        jmp   n1106_var_α
n1105_statement_begin_β:
                                                                                        jmp   n1077_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1106_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052496]                    # vars
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1107_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1108_subscript_α
n1107_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1105_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1108_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1733_240
                        add              rsp, 16
                                                                                        jmp   n1107_var_β
.Lx1733_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1109_deref_α
n1108_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1107_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1109_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1734_240
                        add              rsp, 16
                                                                                        jmp   n1108_subscript_β
.Lx1734_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1110_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1110_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n1111_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1111_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   n1077_save_restore_α
#=======================================================================================================================
# DRF_n   DRF = nm                                :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1112_statement_begin_α:
                                                                                        jmp   n1113_var_α
n1112_statement_begin_β:
                                                                                        jmp   n1077_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1113_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # nm
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1114_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # DRF
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n1115_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1115_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n1077_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1116_goto_α:
                                                                                        jmp   n1112_statement_begin_α
n1116_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1117_goto_α:
                                                                                        jmp   n827_statement_begin_α
n1117_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1118_goto_α:
                                                                                        jmp   n1119_statement_begin_α
n1118_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ADD     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1119_statement_begin_α:
                                                                                        jmp   n1120_var_α
n1119_statement_begin_β:
                                                                                        jmp   n1127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1121_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1122_subscript_α
n1121_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1119_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1122_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1751_240
                        add              rsp, 16
                                                                                        jmp   n1121_var_β
.Lx1751_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1123_deref_α
n1122_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1121_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1123_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1752_240
                        add              rsp, 16
                                                                                        jmp   n1122_subscript_β
.Lx1752_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1124_call_α
n1123_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1122_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_α:
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
                                                                                        jmp   n1123_deref_β
.Lx1754_240:
                                                                                        jmp   n1125_assign_α
n1124_call_β:
                                                                                        jmp   n1123_deref_β
.Lx1754_0:
                        .quad            .Lx1754_0_s
.Lx1754_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1125_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1126_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1127_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1127_statement_begin_α:
                                                                                        jmp   n1128_var_α
n1127_statement_begin_β:
                                                                                        jmp   n1133_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1129_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1761_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1130_binop_α
n1129_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1127_statement_begin_β
.Lx1761_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1130_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1762_240
                        add              rsp, 16
                                                                                        jmp   n1129_lit_integer_β
.Lx1762_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1131_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1132_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1132_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1133_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) + p1
#-----------------------------------------------------------------------------------------------------------------------
n1133_statement_begin_α:
                                                                                        jmp   n1134_var_α
n1133_statement_begin_β:
                                                                                        jmp   n1146_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1136_subscript_α
n1135_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1133_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1136_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1770_240
                        add              rsp, 16
                                                                                        jmp   n1135_var_β
.Lx1770_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1137_var_α
n1136_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1135_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1138_var_α
n1137_var_β:
                        add              rsp, 16
                                                                                        jmp   n1136_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1138_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1139_subscript_α
n1138_var_β:
                        add              rsp, 16
                                                                                        jmp   n1137_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1139_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1773_240
                        add              rsp, 16
                                                                                        jmp   n1138_var_β
.Lx1773_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1140_deref_α
n1139_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1138_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1140_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1774_240
                        add              rsp, 16
                                                                                        jmp   n1139_subscript_β
.Lx1774_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1141_call_α
n1140_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1139_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1776_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1776_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1776_6]
                        lea              rdx, [rip + .Lx1776_7]
                                                                                        jmp   rax
.Lx1776_6:
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
                                                                                        jmp   .Lx1776_2
.Lx1776_7:
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
                                                                                        jmp   .Lx1776_2
.Lx1776_5:
                        add              rsp, 32
.Lx1776_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1776_240
                        add              rsp, 16
                                                                                        jmp   n1140_deref_β
.Lx1776_240:
                                                                                        jmp   n1142_var_α
n1141_call_β:
                                                                                        jmp   n1140_deref_β
.Lx1776_0:
                        .quad            .Lx1776_0_s
.Lx1776_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1142_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1143_binop_α
n1142_var_β:
                        add              rsp, 32
                                                                                        jmp   n1140_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1143_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1778_240
                        add              rsp, 16
                                                                                        jmp   n1142_var_β
.Lx1778_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1144_assign_var_α
n1143_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1142_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1144_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1779_240
                        add              rsp, 16
                                                                                        jmp   n1143_binop_β
.Lx1779_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1145_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1145_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1146_statement_begin_α
#=======================================================================================================================
#         ADD = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1146_statement_begin_α:
                                                                                        jmp   n1147_lit_string_α
n1146_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1147_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1784_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1148_call_α
.Lx1784_0:
                        .quad            .Lx1784_0_s
.Lx1784_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1148_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1786:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1786]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1785_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1146_statement_begin_β
.Lx1785_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1149_assign_α
n1148_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1146_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1149_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # ADD
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n1150_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1150_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1151_goto_α:
                                                                                        jmp   n831_statement_begin_α
n1151_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1152_goto_α:
                                                                                        jmp   n1153_statement_begin_α
n1152_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SUB     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1153_statement_begin_α:
                                                                                        jmp   n1154_var_α
n1153_statement_begin_β:
                                                                                        jmp   n1161_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1155_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1156_subscript_α
n1155_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1153_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1156_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1796_240
                        add              rsp, 16
                                                                                        jmp   n1155_var_β
.Lx1796_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1157_deref_α
n1156_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1155_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1157_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1797_240
                        add              rsp, 16
                                                                                        jmp   n1156_subscript_β
.Lx1797_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1158_call_α
n1157_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1156_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_α:
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
                                                                                        jmp   n1157_deref_β
.Lx1799_240:
                                                                                        jmp   n1159_assign_α
n1158_call_β:
                                                                                        jmp   n1157_deref_β
.Lx1799_0:
                        .quad            .Lx1799_0_s
.Lx1799_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1159_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1160_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1161_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1161_statement_begin_α:
                                                                                        jmp   n1162_var_α
n1161_statement_begin_β:
                                                                                        jmp   n1167_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1163_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1164_binop_α
n1163_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1161_statement_begin_β
.Lx1806_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1164_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1807_240
                        add              rsp, 16
                                                                                        jmp   n1163_lit_integer_β
.Lx1807_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1165_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1166_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1167_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) - p1
#-----------------------------------------------------------------------------------------------------------------------
n1167_statement_begin_α:
                                                                                        jmp   n1168_var_α
n1167_statement_begin_β:
                                                                                        jmp   n1180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1169_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1170_subscript_α
n1169_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1167_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1170_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1815_240
                        add              rsp, 16
                                                                                        jmp   n1169_var_β
.Lx1815_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1171_var_α
n1170_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1169_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1171_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1172_var_α
n1171_var_β:
                        add              rsp, 16
                                                                                        jmp   n1170_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1172_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1173_subscript_α
n1172_var_β:
                        add              rsp, 16
                                                                                        jmp   n1171_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1173_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1818_240
                        add              rsp, 16
                                                                                        jmp   n1172_var_β
.Lx1818_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1174_deref_α
n1173_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1172_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1174_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1819_240
                        add              rsp, 16
                                                                                        jmp   n1173_subscript_β
.Lx1819_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1175_call_α
n1174_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1173_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1175_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1821_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1821_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1821_6]
                        lea              rdx, [rip + .Lx1821_7]
                                                                                        jmp   rax
.Lx1821_6:
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
                                                                                        jmp   .Lx1821_2
.Lx1821_7:
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
                                                                                        jmp   .Lx1821_2
.Lx1821_5:
                        add              rsp, 32
.Lx1821_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1821_240
                        add              rsp, 16
                                                                                        jmp   n1174_deref_β
.Lx1821_240:
                                                                                        jmp   n1176_var_α
n1175_call_β:
                                                                                        jmp   n1174_deref_β
.Lx1821_0:
                        .quad            .Lx1821_0_s
.Lx1821_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1176_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1177_binop_α
n1176_var_β:
                        add              rsp, 32
                                                                                        jmp   n1174_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1177_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1823_240
                        add              rsp, 16
                                                                                        jmp   n1176_var_β
.Lx1823_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1178_assign_var_α
n1177_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1176_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1178_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1824_240
                        add              rsp, 16
                                                                                        jmp   n1177_binop_β
.Lx1824_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1179_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1180_statement_begin_α
#=======================================================================================================================
#         SUB = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1180_statement_begin_α:
                                                                                        jmp   n1181_lit_string_α
n1180_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1182_call_α
.Lx1829_0:
                        .quad            .Lx1829_0_s
.Lx1829_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1182_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1831:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1831]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1830_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1180_statement_begin_β
.Lx1830_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1183_assign_α
n1182_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1180_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1183_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # SUB
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n1184_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_goto_α:
                                                                                        jmp   n835_statement_begin_α
n1185_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1186_goto_α:
                                                                                        jmp   n1187_statement_begin_α
n1186_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# MUL     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1187_statement_begin_α:
                                                                                        jmp   n1188_var_α
n1187_statement_begin_β:
                                                                                        jmp   n1195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1190_subscript_α
n1189_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1190_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1841_240
                        add              rsp, 16
                                                                                        jmp   n1189_var_β
.Lx1841_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1191_deref_α
n1190_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1189_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1191_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1842_240
                        add              rsp, 16
                                                                                        jmp   n1190_subscript_β
.Lx1842_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1192_call_α
n1191_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1190_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1192_call_α:
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
                                                                                        jmp   n1191_deref_β
.Lx1844_240:
                                                                                        jmp   n1193_assign_α
n1192_call_β:
                                                                                        jmp   n1191_deref_β
.Lx1844_0:
                        .quad            .Lx1844_0_s
.Lx1844_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1193_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1194_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1195_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1195_statement_begin_α:
                                                                                        jmp   n1196_var_α
n1195_statement_begin_β:
                                                                                        jmp   n1201_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1197_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1851_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1198_binop_α
n1197_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1195_statement_begin_β
.Lx1851_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1198_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1852_240
                        add              rsp, 16
                                                                                        jmp   n1197_lit_integer_β
.Lx1852_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1199_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1200_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1201_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) * p1
#-----------------------------------------------------------------------------------------------------------------------
n1201_statement_begin_α:
                                                                                        jmp   n1202_var_α
n1201_statement_begin_β:
                                                                                        jmp   n1214_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1203_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1204_subscript_α
n1203_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1201_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1204_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1860_240
                        add              rsp, 16
                                                                                        jmp   n1203_var_β
.Lx1860_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1205_var_α
n1204_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1203_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1205_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1206_var_α
n1205_var_β:
                        add              rsp, 16
                                                                                        jmp   n1204_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1206_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1207_subscript_α
n1206_var_β:
                        add              rsp, 16
                                                                                        jmp   n1205_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1207_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1863_240
                        add              rsp, 16
                                                                                        jmp   n1206_var_β
.Lx1863_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1208_deref_α
n1207_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1206_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1208_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1864_240
                        add              rsp, 16
                                                                                        jmp   n1207_subscript_β
.Lx1864_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1209_call_α
n1208_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1207_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1209_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1866_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1866_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1866_6]
                        lea              rdx, [rip + .Lx1866_7]
                                                                                        jmp   rax
.Lx1866_6:
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
                                                                                        jmp   .Lx1866_2
.Lx1866_7:
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
                                                                                        jmp   .Lx1866_2
.Lx1866_5:
                        add              rsp, 32
.Lx1866_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1866_240
                        add              rsp, 16
                                                                                        jmp   n1208_deref_β
.Lx1866_240:
                                                                                        jmp   n1210_var_α
n1209_call_β:
                                                                                        jmp   n1208_deref_β
.Lx1866_0:
                        .quad            .Lx1866_0_s
.Lx1866_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1210_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1211_binop_α
n1210_var_β:
                        add              rsp, 32
                                                                                        jmp   n1208_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1211_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1868_240
                        add              rsp, 16
                                                                                        jmp   n1210_var_β
.Lx1868_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1212_assign_var_α
n1211_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1210_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1212_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1869_240
                        add              rsp, 16
                                                                                        jmp   n1211_binop_β
.Lx1869_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1213_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1213_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1214_statement_begin_α
#=======================================================================================================================
#         MUL = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1214_statement_begin_α:
                                                                                        jmp   n1215_lit_string_α
n1214_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1215_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1874_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1216_call_α
.Lx1874_0:
                        .quad            .Lx1874_0_s
.Lx1874_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1216_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1876:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1876]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1875_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1214_statement_begin_β
.Lx1875_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1217_assign_α
n1216_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1214_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1217_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # MUL
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n1218_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1218_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1219_goto_α:
                                                                                        jmp   n839_statement_begin_α
n1219_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1220_goto_α:
                                                                                        jmp   n1221_statement_begin_α
n1220_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# DIV     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1221_statement_begin_α:
                                                                                        jmp   n1222_var_α
n1221_statement_begin_β:
                                                                                        jmp   n1229_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1222_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1223_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1224_subscript_α
n1223_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1221_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1224_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1886_240
                        add              rsp, 16
                                                                                        jmp   n1223_var_β
.Lx1886_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1225_deref_α
n1224_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1223_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1225_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1887_240
                        add              rsp, 16
                                                                                        jmp   n1224_subscript_β
.Lx1887_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1226_call_α
n1225_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1224_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1226_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1889_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1889_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1889_6]
                        lea              rdx, [rip + .Lx1889_7]
                                                                                        jmp   rax
.Lx1889_6:
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
                                                                                        jmp   .Lx1889_2
.Lx1889_7:
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
                                                                                        jmp   .Lx1889_2
.Lx1889_5:
                        add              rsp, 32
.Lx1889_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1889_240
                        add              rsp, 16
                                                                                        jmp   n1225_deref_β
.Lx1889_240:
                                                                                        jmp   n1227_assign_α
n1226_call_β:
                                                                                        jmp   n1225_deref_β
.Lx1889_0:
                        .quad            .Lx1889_0_s
.Lx1889_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1227_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1228_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1228_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1229_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1229_statement_begin_α:
                                                                                        jmp   n1230_var_α
n1229_statement_begin_β:
                                                                                        jmp   n1235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1230_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1231_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1896_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1232_binop_α
n1231_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1229_statement_begin_β
.Lx1896_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1232_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1897_240
                        add              rsp, 16
                                                                                        jmp   n1231_lit_integer_β
.Lx1897_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1233_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1234_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1234_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1235_statement_begin_α
#=======================================================================================================================
#         S[sp] = DRF(S[sp]) / p1
#-----------------------------------------------------------------------------------------------------------------------
n1235_statement_begin_α:
                                                                                        jmp   n1236_var_α
n1235_statement_begin_β:
                                                                                        jmp   n1248_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1236_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1237_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1238_subscript_α
n1237_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1235_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1238_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1905_240
                        add              rsp, 16
                                                                                        jmp   n1237_var_β
.Lx1905_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1239_var_α
n1238_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1237_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1239_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1240_var_α
n1239_var_β:
                        add              rsp, 16
                                                                                        jmp   n1238_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1240_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1241_subscript_α
n1240_var_β:
                        add              rsp, 16
                                                                                        jmp   n1239_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1241_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1908_240
                        add              rsp, 16
                                                                                        jmp   n1240_var_β
.Lx1908_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1242_deref_α
n1241_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1240_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1242_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1909_240
                        add              rsp, 16
                                                                                        jmp   n1241_subscript_β
.Lx1909_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1243_call_α
n1242_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1241_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1243_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1911_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1911_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1911_6]
                        lea              rdx, [rip + .Lx1911_7]
                                                                                        jmp   rax
.Lx1911_6:
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
                                                                                        jmp   .Lx1911_2
.Lx1911_7:
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
                                                                                        jmp   .Lx1911_2
.Lx1911_5:
                        add              rsp, 32
.Lx1911_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1911_240
                        add              rsp, 16
                                                                                        jmp   n1242_deref_β
.Lx1911_240:
                                                                                        jmp   n1244_var_α
n1243_call_β:
                                                                                        jmp   n1242_deref_β
.Lx1911_0:
                        .quad            .Lx1911_0_s
.Lx1911_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1244_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1245_binop_α
n1244_var_β:
                        add              rsp, 32
                                                                                        jmp   n1242_deref_β
#-----------------------------------------------------------------------------------------------------------------------
n1245_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1913_240
                        add              rsp, 16
                                                                                        jmp   n1244_var_β
.Lx1913_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1246_assign_var_α
n1245_binop_β:
                        add              rsp, 16
                                                                                        jmp   n1244_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1246_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]                     # subscript
                        mov              rsi, qword ptr [rsp + 136]                     # var
                        mov              rdx, qword ptr [rsp + 16]                      # binop
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1914_240
                        add              rsp, 16
                                                                                        jmp   n1245_binop_β
.Lx1914_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1247_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1247_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n1248_statement_begin_α
#=======================================================================================================================
#         DIV = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1248_statement_begin_α:
                                                                                        jmp   n1249_lit_string_α
n1248_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1249_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1919_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1250_call_α
.Lx1919_0:
                        .quad            .Lx1919_0_s
.Lx1919_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1250_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1921:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1921]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1920_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1248_statement_begin_β
.Lx1920_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1251_assign_α
n1250_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1248_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1251_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # DIV
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n1252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1252_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1253_goto_α:
                                                                                        jmp   n843_statement_begin_α
n1253_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1254_goto_α:
                                                                                        jmp   n1255_statement_begin_α
n1254_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# SGN     p1 = DRF(S[sp])
#-----------------------------------------------------------------------------------------------------------------------
n1255_statement_begin_α:
                                                                                        jmp   n1256_var_α
n1255_statement_begin_β:
                                                                                        jmp   n1263_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1256_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1257_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1258_subscript_α
n1257_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1255_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1258_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1931_240
                        add              rsp, 16
                                                                                        jmp   n1257_var_β
.Lx1931_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1259_deref_α
n1258_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1257_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1259_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1932_240
                        add              rsp, 16
                                                                                        jmp   n1258_subscript_β
.Lx1932_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1260_call_α
n1259_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1258_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1260_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx1934_0]               # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx1934_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052336], rax                    # nm
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1934_6]
                        lea              rdx, [rip + .Lx1934_7]
                                                                                        jmp   rax
.Lx1934_6:
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
                                                                                        jmp   .Lx1934_2
.Lx1934_7:
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
                                                                                        jmp   .Lx1934_2
.Lx1934_5:
                        add              rsp, 32
.Lx1934_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1934_240
                        add              rsp, 16
                                                                                        jmp   n1259_deref_β
.Lx1934_240:
                                                                                        jmp   n1261_assign_α
n1260_call_β:
                                                                                        jmp   n1259_deref_β
.Lx1934_0:
                        .quad            .Lx1934_0_s
.Lx1934_0_s:
                        .string          "DRF"
#-----------------------------------------------------------------------------------------------------------------------
n1261_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1262_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1263_statement_begin_α
#=======================================================================================================================
#         sp = sp - 1
#-----------------------------------------------------------------------------------------------------------------------
n1263_statement_begin_α:
                                                                                        jmp   n1264_var_α
n1263_statement_begin_β:
                                                                                        jmp   n1269_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1264_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1265_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1265_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx1941_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1266_binop_α
n1265_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1263_statement_begin_β
.Lx1941_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1266_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1942_240
                        add              rsp, 16
                                                                                        jmp   n1265_lit_integer_β
.Lx1942_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1267_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1267_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052464], rax                    # sp
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n1268_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1268_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n1269_statement_begin_α
#=======================================================================================================================
#         IDENT(S[sp], '-')                       :F(SGN1)
#-----------------------------------------------------------------------------------------------------------------------
n1269_statement_begin_α:
                                                                                        jmp   n1270_var_α
n1269_statement_begin_β:
                                                                                        jmp   n1282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1270_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1271_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1272_subscript_α
n1271_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1269_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1272_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1950_240
                        add              rsp, 16
                                                                                        jmp   n1271_var_β
.Lx1950_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1273_deref_α
n1272_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1271_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1273_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # subscript
                        mov              rsi, qword ptr [rsp + 24]                      # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1951_240
                        add              rsp, 16
                                                                                        jmp   n1272_subscript_β
.Lx1951_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1274_lit_string_α
n1273_deref_β:
                        add              rsp, 16
                                                                                        jmp   n1272_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1274_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx1952_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1275_call_α
n1274_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n1273_deref_β
.Lx1952_0:
                        .quad            .Lx1952_0_s
.Lx1952_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n1275_call_α:
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
.Lrkfnzd1954:           .string          "IDENT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1954]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx1953_240
                        add              rsp, 16
                                                                                        jmp   n1274_lit_string_β
.Lx1953_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1276_statement_end_α
n1275_call_β:
                        add              rsp, 16
                                                                                        jmp   n1274_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n1276_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n1277_statement_begin_α
#=======================================================================================================================
#         p1 = -p1
#-----------------------------------------------------------------------------------------------------------------------
n1277_statement_begin_α:
                                                                                        jmp   n1278_var_α
n1277_statement_begin_β:
                                                                                        jmp   n1282_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1278_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1279_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1279_unop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1280_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1280_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # p1
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n1281_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1281_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1282_statement_begin_α
#=======================================================================================================================
# SGN1    S[sp] = p1
#-----------------------------------------------------------------------------------------------------------------------
n1282_statement_begin_α:
                                                                                        jmp   n1283_var_α
n1282_statement_begin_β:
                                                                                        jmp   n1289_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1283_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1284_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052464]                    # sp
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1285_subscript_α
n1284_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1282_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1285_subscript_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # base
                        mov              rdx, qword ptr [rsp + 16]                      # idx
                        mov              rcx, qword ptr [rsp + 24]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1968_240
                        add              rsp, 16
                                                                                        jmp   n1284_var_β
.Lx1968_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1286_var_α
n1285_subscript_β:
                        add              rsp, 16
                                                                                        jmp   n1284_var_β
#-----------------------------------------------------------------------------------------------------------------------
n1286_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # p1
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1287_assign_var_α
n1286_var_β:
                        add              rsp, 16
                                                                                        jmp   n1285_subscript_β
#-----------------------------------------------------------------------------------------------------------------------
n1287_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # subscript
                        mov              rsi, qword ptr [rsp + 40]                      # var
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1970_240
                        add              rsp, 16
                                                                                        jmp   n1286_var_β
.Lx1970_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1288_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1288_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n1289_statement_begin_α
#=======================================================================================================================
#         SGN = .dm                               :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1289_statement_begin_α:
                                                                                        jmp   n1290_lit_string_α
n1289_statement_begin_β:
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1290_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx1975_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1291_call_α
.Lx1975_0:
                        .quad            .Lx1975_0_s
.Lx1975_0_s:
                        .string          "dm"
#-----------------------------------------------------------------------------------------------------------------------
n1291_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd1977:           .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd1977]                      # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx1976_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1289_statement_begin_β
.Lx1976_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n1292_assign_α
n1291_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n1289_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n1292_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # SGN
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n1293_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n1293_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n1075_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1294_goto_α:
                                                                                        jmp   n1282_statement_begin_α
n1294_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1295_goto_α:
                                                                                        jmp   n847_statement_begin_α
n1295_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1296_goto_α:
                                                                                        jmp   n961_statement_begin_α
n1296_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1297_goto_α:
                                                                                        jmp   n1009_statement_begin_α
n1297_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1298_goto_α:
                                                                                        jmp   n1041_statement_begin_α
n1298_goto_β:
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
.S0:                    .string          "*PSH"
.S1:                    .string          "X"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "PAT$2$V0"
.S4:                    .string          "F"
.S5:                    .string          "*SGN"
.S6:                    .string          "PAT$3$V0"
.S7:                    .string          "PAT$4$V0"
.S8:                    .string          "PAT$4$V2"
.S9:                    .string          "*DIV"
.S10:                   .string          "PAT$4$V1"
.S11:                   .string          "*MUL"
.S12:                   .string          "PAT$5$V0"
.S13:                   .string          "PAT$5$V2"
.S14:                   .string          "*SUB"
.S15:                   .string          "PAT$5$V1"
.S16:                   .string          "*ADD"
.S17:                   .string          "PAT$7$V0"
.S18:                   .string          "PAT$7$V1"
.S19:                   .string          "PAT$7$V2"
.S20:                   .string          "*EMIT"
.S21:                   .string          "PATV$0"
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
